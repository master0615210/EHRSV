<?php

namespace App\Http\Controllers;

use Illuminate\Http\Exception\HttpResponseException;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\Response as IlluminateResponse;


use Illuminate\Support\Facades\File;
use Illuminate\Support\Collection;
use DB;
use PDF;
use View;
use PHPMailer;

class ReportController extends Controller
{

    public function __construct(Request $request)
    {
        header('Access-Control-Allow-Origin: *');
        date_default_timezone_set("Africa/Lagos");
    }

    public function get_hospital_plan()
    {
        $plans = DB::table('hospital_plan')
            ->select('id','name as value')
            ->get();
        foreach($plans as $plan)
            $plan->value = ucfirst($plan->value);

        return response()->json(['status' => true, 'responseData' => $plans]);
    }

    public function get_department_speciality()
    {
        $specialities = DB::table('departments')
            ->select('id', 'name as value')
            ->orderBy('value','ASC')
            ->get();

        return response()->json(['status' => true, 'responseData' => $specialities]);
    }

    public function get_laboratories() {
        $laboratories = DB::table('labs')
            ->select('id','name as value')
            ->orderBy('value','ASC')
            ->get();

        return response()->json(['status' => true, 'responseData' => $laboratories]);
    }

    public function get_report_statistics(Request $request)
    {
        $from = $request->input('from');
        $to = $request->input('to');
        $type = $request->input('type');
        $filter = $request->input('filter');

        if($from == '')
            $from = '2000-01-01 00:00:00';
        if($to == '')
            $to = '2100-01-01 00:00:00';

        $header_array = array('', '0 - 28days', '29d - 11mo', '12 - 59mo','5 - 19years', '> 20years');
        $sex_array = array('Male', 'Female', 'Total');
        $filter_days_array = array([0, 28], [29, 359], [360, 1799], [1800, 7229]);

        $return_value = new \stdClass();

        switch($type) {
            case 1: // General Monthly Hospital Visit
                $visit_counts = DB::table('visits')
                    ->join('patients', 'visits.patient_id', '=', 'patients.id')
                    ->select('visits.id', 'patients.id as patient_id', 'patients.sex')
                    ->where('visits.created_at', '>', $from)
                    ->where('visits.created_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE','MALE','TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($visit_counts as $visit) {
                    if($visit->sex == 1)
                        $new_obj->male++;
                    if($visit->sex == 2)
                        $new_obj->female++;
                    $new_obj->total++;
                }
                $return_value->data->push($new_obj);
                break;
            case 2: // Health Facility Attendance
                $visit_counts = DB::table('visits')
                    ->join('patients', 'visits.patient_id', '=', 'patients.id')
                    ->select('visits.id', 'patients.id as patient_id', 'patients.age', 'patients.sex')
                    ->where('visits.created_at', '>', $from)
                    ->where('visits.created_at', '<', $to)
                    ->get();

                foreach($visit_counts as $visit) {
                    $temp_age = explode(" ", $visit->age);
                    $temp_days = 0;
                    for($i = 0; $i < sizeof($temp_age); $i++) {
                        if($i % 2 == 1) {
                            if(strpos($temp_age[$i], 'year') !== false) {
                                $temp_days += $temp_age[$i - 1] * 365;
                            }
                            if(strpos($temp_age[$i], 'month') !== false) {
                                $temp_days += $temp_age[$i - 1] * 30;
                            }
                            if(strpos($temp_age[$i], 'day') !== false) {
                                $temp_days += $temp_age[$i - 1];
                            }
                        }
                    }
                    $visit->age = $temp_days;
                }

                if($filter == '' || $filter == '0') {
                    $return_value->header = $header_array;
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        for($j = 0; $j < 5; $j++) {
                            $new_obj->{'count'.$j} = 0;
                        }

                        $return_value->data->push($new_obj);
                    }

                    foreach($visit_counts as $visit) {
                        for($i = 0; $i < 5; $i++) {
                            if($i == 4) {
                                if(intval($visit->age) >= 7300 && $visit->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($visit->age) >= 7300 && $visit->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($visit->age) >= 7300)
                                    $return_value->data[2]->{'count'.$i}++;
                            } else {
                                if(intval($visit->age) >= $filter_days_array[$i][0] && intval($visit->age) <= $filter_days_array[$i][1] && $visit->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($visit->age) >= $filter_days_array[$i][0] && intval($visit->age) <= $filter_days_array[$i][1] && $visit->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($visit->age) >= $filter_days_array[$i][0] && intval($visit->age) <= $filter_days_array[$i][1])
                                    $return_value->data[2]->{'count'.$i}++;
                            }
                        }
                    }
                } else {
                    $return_value->header = array('', $header_array[$filter]);
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        $new_obj->count = 0;

                        $return_value->data->push($new_obj);
                    }

                    foreach($visit_counts as $visit) {
                        if($filter == 5) {
                            if(intval($visit->age) >= 7300 && $visit->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($visit->age) >= 7300 && $visit->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($visit->age) >= 7300)
                                $return_value->data[2]->count++;
                        } else {
                            if(intval($visit->age) >= $filter_days_array[$filter - 1][0] && intval($visit->age) <= $filter_days_array[$filter - 1][1] && $visit->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($visit->age) >= $filter_days_array[$filter - 1][0] && intval($visit->age) <= $filter_days_array[$filter - 1][1] && $visit->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($visit->age) >= $filter_days_array[$filter - 1][0] && intval($visit->age) <= $filter_days_array[$filter - 1][1])
                                $return_value->data[2]->count++;
                        }
                    }
                }
                break;
            case 3: // Attendance by Patient Plan (NHIS, FHSS, Retainer, General)
                $visit_counts = DB::table('visits')
                    ->join('patients', 'patients.id', '=', 'visits.patient_id')
                    ->join('hospital_plan', 'patients.hospital_plan', '=', 'hospital_plan.id')
                    ->select('visits.id as id', 'hospital_plan.id as hs_id', 'hospital_plan.name as hs_name', 'patients.sex')
                    ->where('visits.created_at', '>', $from)
                    ->where('visits.created_at', '<', $to)
                    ->get();

                $hospital_plans = DB::table('hospital_plan')
                    ->select('id', 'name')
                    ->get();

                $return_value->header = array('PLAN', 'FEMALE', 'MALE', 'TOTAL');
                $return_value->data = new Collection();

                if($filter == '' || $filter == '0') {
                    foreach($hospital_plans as $plan) {
                        $new_obj = new \stdClass();
                        $new_obj->plan = ucfirst($plan->name);
                        $new_obj->female = 0;
                        $new_obj->male = 0;
                        $new_obj->total = 0;

                        foreach($visit_counts as $visit) {
                            if($visit->hs_id == $plan->id) {
                                if($visit->sex == 1)
                                    $new_obj->male++;
                                if($visit->sex == 2)
                                    $new_obj->female++;
                                $new_obj->total++;
                            }
                        }

                        $return_value->data->push($new_obj);
                    }
                } else {
                    $new_obj = new \stdClass();
                    $new_obj->plan = '';
                    $new_obj->female = 0;
                    $new_obj->male = 0;
                    $new_obj->total = 0;

                    foreach($hospital_plans as $plan) {
                        if($plan->id == $filter)
                            $new_obj->plan = ucfirst($plan->name);
                    }

                    foreach($visit_counts as $visit) {
                        if($visit->hs_id == $filter) {
                            if($visit->sex == 1)
                                $new_obj->male++;
                            if($visit->sex == 2)
                                $new_obj->female++;
                            $new_obj->total++;
                        }
                    }

                    $return_value->data->push($new_obj);
                }
                break;
            case 4: // Attendance by Specialties & Clinics
                $visit_counts = DB::table('visits')
                    ->join('patients', 'visits.patient_id', '=', 'patients.id')
                    ->join('departments', 'visits.department_id', '=', 'departments.id')
                    ->select('visits.id','patients.sex', 'departments.id as department_id')
                    ->where('visits.created_at', '>', $from)
                    ->where('visits.created_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE','MALE','TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($visit_counts as $visit) {
                    if($filter == '' || $filter == 0) {
                        if($visit->sex == 1)
                            $new_obj->male++;
                        if($visit->sex == 2)
                            $new_obj->female++;
                        $new_obj->total++;
                    } else {
                        if($visit->department_id == $filter && $visit->sex == 1)
                            $new_obj->male++;
                        if($visit->department_id == $filter && $visit->sex == 2)
                            $new_obj->female++;
                        if($visit->department_id == $filter)
                            $new_obj->total++;
                    }
                }
                $return_value->data->push($new_obj);
                break;
            case 5: // Monthly Total Admissions
                $visit_counts = DB::table('visits')
                    ->join('patients', 'visits.patient_id', '=', 'patients.id')
                    ->join('patient_checkout', 'visits.id', '=', 'patient_checkout.visit_id')
                    ->select('visits.id', 'patients.sex')
                    ->where('patient_checkout.created_at', '>', $from)
                    ->where('patient_checkout.created_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE','MALE','TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($visit_counts as $visit) {
                    if($visit->sex == 1)
                        $new_obj->male++;
                    if($visit->sex == 2)
                        $new_obj->female++;
                    $new_obj->total++;
                }
                $return_value->data->push($new_obj);
                break;
            case 6: // Monthly Total Discharge
                $patients_count = DB::table('patients')
                    ->join('patients_admitted', 'patients.id', '=', 'patients_admitted.patient_id')
                    ->select('patients.id','patients.sex')
                    ->where('patients_admitted.is_discharged', '=', '1')
                    ->where('patients_admitted.updated_at', '>', $from)
                    ->where('patients_admitted.updated_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE', 'MALE', 'TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($patients_count as $patient) {
                    if($patient->sex == 1)
                        $new_obj->male++;
                    if($patient->sex == 2)
                        $new_obj->female++;
                    $new_obj->total++;
                }
                $return_value->data->push($new_obj);
                break;
            case 7: // Monthly Total Deaths
                $patients_count = DB::table('patients')
                    ->join('visits', 'patients.id', '=', 'visits.patient_id')
                    ->join('patient_checkout', 'visits.id', '=', 'patient_checkout.visit_id')
                    ->select('visits.id', 'patients.id as patient_id', 'patients.sex', 'patients.age')
                    ->where('patient_checkout.reason', '=', 'Dead')
                    ->where('patient_checkout.created_at', '>', $from)
                    ->where('patient_checkout.created_at', '<', $to)
                    ->get();

                foreach($patients_count as $patient) {
                    $temp_age = explode(" ", $patient->age);
                    $temp_days = 0;
                    for($i = 0; $i < sizeof($temp_age); $i++) {
                        if($i % 2 == 1) {
                            if(strpos($temp_age[$i], 'year') !== false) {
                                $temp_days += $temp_age[$i - 1] * 365;
                            }
                            if(strpos($temp_age[$i], 'month') !== false) {
                                $temp_days += $temp_age[$i - 1] * 30;
                            }
                            if(strpos($temp_age[$i], 'day') !== false) {
                                $temp_days += $temp_age[$i - 1];
                            }
                        }
                    }
                    $patient->age = $temp_days;
                }

                if($filter == '' || $filter == '0') {
                    $return_value->header = $header_array;
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        for($j = 0; $j < 5; $j++) {
                            $new_obj->{'count'.$j} = 0;
                        }

                        $return_value->data->push($new_obj);
                    }

                    foreach($patients_count as $patient) {
                        for($i = 0; $i < 5; $i++) {
                            if($i == 4) {
                                if(intval($patient->age) >= 7300 && $patient->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($patient->age) >= 7300 && $patient->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($patient->age) >= 7300)
                                    $return_value->data[2]->{'count'.$i}++;
                            } else {
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1] && $patient->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1] && $patient->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1])
                                    $return_value->data[2]->{'count'.$i}++;
                            }
                        }
                    }
                } else {
                    $return_value->header = array('', $header_array[$filter]);
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        $new_obj->count = 0;

                        $return_value->data->push($new_obj);
                    }

                    foreach($patients_count as $patient) {
                        if($filter == 5) {
                            if(intval($patient->age) >= 7300 && $patient->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($patient->age) >= 7300 && $patient->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($patient->age) >= 7300)
                                $return_value->data[2]->count++;
                        } else {
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1] && $patient->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1] && $patient->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1])
                                $return_value->data[2]->count++;
                        }
                    }
                }
                break;
            case 8: // Laboratory Investigations
                $laboratory_count = DB::table('labs')
                    ->join('lab_tests', 'labs.id', '=', 'lab_tests.lab')
                    ->join('lab_order_tests', 'lab_tests.id', '=', 'lab_order_tests.lab_test')
                    ->join('lab_orders', 'lab_order_tests.lab_order_id', '=', 'lab_orders.id')
                    ->join('patients', 'lab_orders.patient_id', '=', 'patients.id')
                    ->select('labs.id', 'lab_tests.id as test_id', 'patients.id as patient_id', 'patients.sex')
                    ->where('lab_order_tests.created_at', '>', $from)
                    ->where('lab_order_tests.created_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE', 'MALE', 'TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($laboratory_count as $investigation) {
                    if($filter == '' || $filter == 0) {
                        if($investigation->sex == 1)
                            $new_obj->male++;
                        if($investigation->sex == 2)
                            $new_obj->female++;
                        $new_obj->total++;
                    } else {
                        if($investigation->id == $filter && $investigation->sex == 1)
                            $new_obj->male++;
                        if($investigation->id == $filter && $investigation->sex == 2)
                            $new_obj->female++;
                        if($investigation->id == $filter)
                            $new_obj->total++;
                    }
                }
                $return_value->data->push($new_obj);
                break;
            case 9:
                $laboratory_count = DB::table('labs')
                    ->join('lab_tests', 'labs.id', '=', 'lab_tests.lab')
                    ->join('lab_order_tests', 'lab_tests.id', '=', 'lab_order_tests.lab_test')
                    ->join('lab_orders', 'lab_order_tests.lab_order_id', '=', 'lab_orders.id')
                    ->join('patients', 'lab_orders.patient_id', '=', 'patients.id')
                    ->select('labs.id', 'lab_tests.id as test_id', 'lab_tests.cost as cost', 'patients.id as patient_id', 'patients.sex')
                    ->where('lab_order_tests.created_at', '>', $from)
                    ->where('lab_order_tests.created_at', '<', $to)
                    ->get();

                $return_value->header = array('FEMALE', 'MALE', 'TOTAL');
                $return_value->data = new Collection();

                $new_obj = new \stdClass();
                $new_obj->female = 0;
                $new_obj->male = 0;
                $new_obj->total = 0;

                foreach($laboratory_count as $investigation) {
                    if($filter == '' || $filter == 0) {
                        if($investigation->sex == 1)
                            $new_obj->male += $investigation->cost;
                        if($investigation->sex == 2)
                            $new_obj->female += $investigation->cost;
                        $new_obj->total += $investigation->cost;
                    } else {
                        if($investigation->id == $filter && $investigation->sex == 1)
                            $new_obj->male += $investigation->cost;
                        if($investigation->id == $filter && $investigation->sex == 2)
                            $new_obj->female += $investigation->cost;
                        if($investigation->id == $filter)
                            $new_obj->total += $investigation->cost;
                    }
                }
                $return_value->data->push($new_obj);
                break;
            case 10:
                $invoice_count = DB::table('invoice')
                    ->select('invoice.id', 'invoice.invoice_status')
                    ->where('invoice.created_at', '>', $from)
                    ->where('invoice.created_at', '<', $to)
                    ->get();

                $bill_count = DB::table('billing')
                    ->select('billing.id', 'billing.bill_status')
                    ->where('billing.created_at', '>', $from)
                    ->where('billing.created_at', '<', $to)
                    ->get();

                $return_value->data = new Collection();

                $new_obj1 = new \stdClass();
                $new_obj1->desc = 'Paid Invocies';
                $new_obj1->count = 0;

                $new_obj2 = new \stdClass();
                $new_obj2->desc = 'Unpaid Invocies';
                $new_obj2->count = 0;

                $new_obj3 = new \stdClass();
                $new_obj3->desc = 'Paid Bills';
                $new_obj3->count = 0;

                $new_obj4 = new \stdClass();
                $new_obj4->desc = 'Unpaid Bills';
                $new_obj4->count = 0;

                foreach($invoice_count as $invoice) {
                    if($invoice->invoice_status == 'paid') {
                        $new_obj1->count++;
                    }

                    if($invoice->invoice_status == 'pending') {
                        $new_obj2->count++;
                    }
                }

                foreach($bill_count as $bill) {
                    if($bill->bill_status == 'paid') {
                        $new_obj3->count++;
                    }

                    if($bill->bill_status == 'pending') {
                        $new_obj4->count++;
                    }
                }

                $return_value->data->push($new_obj1)->push($new_obj2)->push($new_obj3)->push($new_obj4);
                break;
            case 11: // Monthly Total Admissions
                $visit_counts = DB::table('visits')
                    ->join('patients', 'visits.patient_id', '=', 'patients.id')
                    ->join('patient_checkout', 'visits.id', '=', 'patient_checkout.visit_id')
                    ->select('visits.id', 'patients.sex', 'patients.age')
                    ->where('patient_checkout.created_at', '>', $from)
                    ->where('patient_checkout.created_at', '<', $to)
                    ->get();

                foreach($visit_counts as $patient) {
                    $temp_age = explode(" ", $patient->age);
                    $temp_days = 0;
                    for($i = 0; $i < sizeof($temp_age); $i++) {
                        if($i % 2 == 1) {
                            if(strpos($temp_age[$i], 'year') !== false) {
                                $temp_days += $temp_age[$i - 1] * 365;
                            }
                            if(strpos($temp_age[$i], 'month') !== false) {
                                $temp_days += $temp_age[$i - 1] * 30;
                            }
                            if(strpos($temp_age[$i], 'day') !== false) {
                                $temp_days += $temp_age[$i - 1];
                            }
                        }
                    }
                    $patient->age = $temp_days;
                }

                if($filter == '' || $filter == '0') {
                    $return_value->header = $header_array;
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        for($j = 0; $j < 5; $j++) {
                            $new_obj->{'count'.$j} = 0;
                        }

                        $return_value->data->push($new_obj);
                    }

                    foreach($visit_counts as $patient) {
                        for($i = 0; $i < 5; $i++) {
                            if($i == 4) {
                                if(intval($patient->age) >= 7300 && $patient->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($patient->age) >= 7300 && $patient->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($patient->age) >= 7300)
                                    $return_value->data[2]->{'count'.$i}++;
                            } else {
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1] && $patient->sex == 1)
                                    $return_value->data[0]->{'count'.$i}++;
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1] && $patient->sex == 2)
                                    $return_value->data[1]->{'count'.$i}++;
                                if(intval($patient->age) >= $filter_days_array[$i][0] && intval($patient->age) <= $filter_days_array[$i][1])
                                    $return_value->data[2]->{'count'.$i}++;
                            }
                        }
                    }
                } else {
                    $return_value->header = array('', $header_array[$filter]);
                    $return_value->data = new Collection();

                    for($i = 0; $i < 3; $i++) {
                        $new_obj = new \stdClass();
                        $new_obj->sex = $sex_array[$i];
                        $new_obj->count = 0;

                        $return_value->data->push($new_obj);
                    }

                    foreach($visit_counts as $patient) {
                        if($filter == 5) {
                            if(intval($patient->age) >= 7300 && $patient->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($patient->age) >= 7300 && $patient->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($patient->age) >= 7300)
                                $return_value->data[2]->count++;
                        } else {
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1] && $patient->sex == 1)
                                $return_value->data[0]->count++;
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1] && $patient->sex == 2)
                                $return_value->data[1]->count++;
                            if(intval($patient->age) >= $filter_days_array[$filter - 1][0] && intval($patient->age) <= $filter_days_array[$filter - 1][1])
                                $return_value->data[2]->count++;
                        }
                    }
                }
                break;
            case 13:
                $prescription_count = DB::table('patient_prescription_medicine')
                    ->join('patient_prescription', 'patient_prescription_medicine.prescription_id', '=', 'patient_prescription.id')
                    ->select('patient_prescription.id', 'patient_prescription_medicine.prescription_id as medicine_id', 'sig', 'dispense', 'total_dispense', 'medication_status as status')
                    ->get();

                $return_value->data = new Collection();

                $new_obj1 = new \stdClass();
                $new_obj1->data = 'Prescription Issued';
                $new_obj1->count = 0;

                $new_obj2 = new \stdClass();
                $new_obj2->data = 'Items Dispensed';
                $new_obj2->count = 0;

                $new_obj3 = new \stdClass();
                $new_obj3->data = 'Injectable prescribed';
                $new_obj3->count = 0;

                foreach($prescription_count as $prescription) {
                    $new_obj1->count++;
                    $new_obj2->count += $prescription->total_dispense;
                    if(strpos($prescription->sig, 'injectable') !== false) {
                        $new_obj3->count++;
                    }
                }

                $return_value->data->push($new_obj1)->push($new_obj2)->push($new_obj3);
                break;
            default:
                break;
        }

        return response()->json(['status' => true, 'responseData' => $return_value]);
    }

    public function generate_report_pdf(Request $request) {
        $temp_data = json_decode($request->input('data'));
        $temp_data->new_data = new Collection();
        foreach($temp_data->data as $eachData) {
            $arr = (array)$eachData;
            array_pop($arr);
            $temp_data->new_data->push($arr);
        }
        unset($temp_data->data);

        $report_data = ['title'=>$request->input('title'), 'description'=>$request->input('description'), 'startDate'=>$request->input('startDate'), 'endDate'=>$request->input('endDate'),
                        'data'=>$temp_data];

        $view = app()->make('view')->make('general_report_pdf', $report_data)->render();

        $pdf = PDF::loadHTML($view);
        $path = base_path().'/public/patient_archive/report.pdf';
        $pdf->save($path);
        $file_archive = url('/').'/patient_archive/report.pdf';

        echo json_encode(array(
            'status' => true,
            'data' => $file_archive
        ), JSON_UNESCAPED_SLASHES);
    }

    public function email_report_pdf(Request $request) {
        $temp_data = json_decode($request->input('data'));
        $temp_data->new_data = new Collection();
        foreach($temp_data->data as $eachData) {
            $arr = (array)$eachData;
            array_pop($arr);
            $temp_data->new_data->push($arr);
        }
        unset($temp_data->data);

        $report_data = ['title'=>$request->input('title'), 'description'=>$request->input('description'), 'startDate'=>$request->input('startDate'), 'endDate'=>$request->input('endDate'),
            'data'=>$temp_data];

        $view = app()->make('view')->make('general_report_pdf', $report_data)->render();

        $pdf = PDF::loadHTML($view);
        $path = base_path().'/public/patient_archive/report.pdf';
        $pdf->save($path);

        $message = "Report Data";

        $mail = new PHPMailer(true); // notice the \  you have to use root namespace here
        try {
            $mail->isSMTP(); // tell to use smtp
            $mail->CharSet = "utf-8"; // set charset to utf8
            $mail->SMTPAuth = true;  // use smpt auth
            $mail->SMTPSecure = "tls"; // or ssl
            $mail->Host = env('MAIL_HOST');
            $mail->Port = env('MAIL_PORT'); // most likely something different for you. This is the mailtrap.io port i use for testing.
            $mail->Username = env('MAIL_USERNAME');
            $mail->Password = env('MAIL_PASSWORD');
            $mail->setFrom(env('MAIL_FROM'));
            $mail->AddAttachment($path);
            $mail->Subject = "Message From Ehr";
            $mail->MsgHTML($message);
            $mail->addAddress($request->input('email'));
            $mail->SMTPDebug = 2;
            $mail->send();

        } catch (phpmailerException $e) {
            dd($e);
        } catch (Exception $e) {
            dd($e);
        }

        return response()->json(['status' => true, 'message' => 'Email Send Successfully']);
    }
}

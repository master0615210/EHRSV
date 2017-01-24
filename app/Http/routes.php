<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});


//routes without middleware and token

$app->group(['prefix' => 'api'], function () use ($app) {

    $app->post('register_user','App\Http\Controllers\ApiController@register_user');
    $app->post('user_login','App\Http\Controllers\ApiController@user_login');
    $app->post('search_patient', 'App\Http\Controllers\ApiController@search_patient');
    $app->post('search_patient_listing', 'App\Http\Controllers\ApiController@search_patient_listing');
    $app->post('search_doctor', 'App\Http\Controllers\ApiController@search_doctor');
    $app->post('search_department', 'App\Http\Controllers\ApiController@search_department');
    $app->post('add_patient_archive','App\Http\Controllers\ApiController@add_patient_archive');
    $app->options('add_patient_archive','App\Http\Controllers\ApiController@optadd_patient_archive');
    $app->post('update_patient_archive','App\Http\Controllers\ApiController@update_patient_archive');
    $app->post('upload_patient_image', 'App\Http\Controllers\ApiController@upload_patient_image');
    $app->options('upload_patient_image','App\Http\Controllers\ApiController@optupload_patient_image');
    $app->options('add_clinical_notes_attachments','App\Http\Controllers\ApiController@opt_add_clinical_notes_attachments');
    $app->post('add_clinical_notes_attachments','App\Http\Controllers\ApiController@add_clinical_notes_attachments');
    $app->options('add_referal_attachments','App\Http\Controllers\ApiController@opt_add_referal_attachments');
    $app->post('add_referal_attachments','App\Http\Controllers\ApiController@add_referal_attachments');
    $app->options('add_lab_order_attachments','App\Http\Controllers\ApiController@opt_add_lab_order_attachments');
    $app->post('add_lab_order_attachments','App\Http\Controllers\ApiController@add_lab_order_attachments');
    $app->post('upload_hospital_image', 'App\Http\Controllers\SettingController@upload_hospital_image');
    $app->options('upload_hospital_image','App\Http\Controllers\SettingController@optupload_hospital_image');
    $app->post('export_patients_data', 'App\Http\Controllers\SettingController@export_patients_data');
    $app->options('export_patients_data','App\Http\Controllers\SettingController@optexport_patients_data');

   //Search Patients without encounters
    $app->post('search_patient_without_encounters', 'App\Http\Controllers\ApiController@search_patient_without_encounters');
    $app->post('search_patient_bills', 'App\Http\Controllers\ApiController@search_patient_bills');
    $app->post('search_patient_bill','App\Http\Controllers\BillingController@search_patient_bill');

    //
    $app->post('upload_webcam_image','App\Http\Controllers\ApiController@upload_webcam_image');
});



//routes with token but no middleware

$app->group(['prefix' => 'api', 'middleware' => 'jwt.auth'], function () use ($app) {

    $app->get('get_countries', 'App\Http\Controllers\ApiController@get_countries');
    $app->get('get_states', 'App\Http\Controllers\ApiController@get_states');
    $app->get('get_cities', 'App\Http\Controllers\ApiController@get_cities');
    $app->get('get_local_goverment_area', 'App\Http\Controllers\ApiController@get_local_goverment_area');
    $app->get('get_dropdowndata', 'App\Http\Controllers\ApiController@get_dropdowndata');
    $app->get('get_diagnosis','App\Http\Controllers\OrderController@get_diagnosis');
    $app->get('get_medicine_units','App\Http\Controllers\OtherController@get_medicine_units');
    $app->get('get_dashboard_counts','App\Http\Controllers\OtherController@get_dashboard_counts');
    $app->get('get_frequency','App\Http\Controllers\ApiController@get_frequency');
    $app->get('get_intake','App\Http\Controllers\ApiController@get_intake');

    //prescription dropdown
    $app->get('get_prescription_medicines','App\Http\Controllers\ApiController@get_prescription_medicines');
    $app->get('get_prescription_supplements','App\Http\Controllers\ApiController@get_prescription_supplements');

    // Get Inventory Dropdown
    $app->get('get_inventory_categories','App\Http\Controllers\ApiController@get_inventory_categories');

    //Download Document
    $app->post('download_archive','App\Http\Controllers\PDFController@download_archive');


    //Add Material
    $app->post('add_material','App\Http\Controllers\OtherController@add_material');


    //Get All Products
    $app->get('get_all_prodducts','App\Http\Controllers\SettingController@get_all_prodducts');


    //Radiology Templates
    $app->post('add_radiology_template','App\Http\Controllers\BillingController@add_radiology_template');
    $app->post('update_radiology_template','App\Http\Controllers\BillingController@update_radiology_template');
    $app->get('get_radiology_templates','App\Http\Controllers\BillingController@get_radiology_templates');
    $app->post('delete_radiology_template','App\Http\Controllers\BillingController@delete_radiology_template');
    $app->get('get_radiology_template','App\Http\Controllers\BillingController@get_radiology_template');


    $app->get('clinical_progress_note_templates','App\Http\Controllers\ApiController@clinical_progress_note_templates');
    $app->get('clinical_progress_note_fields','App\Http\Controllers\ApiController@clinical_progress_note_fields');

    $app->post('add_manufacturer','App\Http\Controllers\ApiController@add_manufacturer');


    //Template Types

    $app->post('get_lab_template_type','App\Http\Controllers\OrderController@get_lab_template_type');
    $app->post('update_lab_template_types','App\Http\Controllers\OrderController@update_lab_template_types');
    $app->post('add_lab_template_types','App\Http\Controllers\OrderController@add_lab_template_types');
    $app->post('delete_lab_template_types','App\Http\Controllers\OrderController@delete_lab_template_types');
    $app->get('get_lab_template_types','App\Http\Controllers\OrderController@get_lab_template_types');


    //Template Details
     $app->get('get_template_details','App\Http\Controllers\OrderController@get_template_details');


     //Other Routes of templates
     $app->get('get_lab_test_templates','App\Http\Controllers\OrderController@get_lab_test_templates');
     $app->post('add_lab_test_templates','App\Http\Controllers\OrderController@add_lab_test_templates');
     $app->post('update_lab_test_templates','App\Http\Controllers\OrderController@update_lab_test_templates');
     $app->post('delete_lab_test_templates','App\Http\Controllers\OrderController@delete_lab_test_templates');

    $app->get('get_lab_test_fields', 'App\Http\Controllers\OrderController@get_lab_test_fields');


    //These routes are handled in their function and not in middleware
    $app->get('get_all_lab_orders', 'App\Http\Controllers\OrderController@get_all_lab_orders');
    $app->get('get_all_radiology_lab_orders', 'App\Http\Controllers\OrderController@get_all_radiology_lab_orders');
    $app->get('get_patient_lab_orders', 'App\Http\Controllers\OrderController@get_patient_lab_orders');

    //Lab Order History
     $app->get('get_lab_order_history','App\Http\Controllers\OrderController@get_lab_order_history');

    //Lab Order Pdf
    $app->get('get_lab_test_pdf', 'App\Http\Controllers\PDFController@get_lab_test_pdf');
    $app->post('add_lab_test_values', 'App\Http\Controllers\OrderController@add_lab_test_values');

    //Reporting
    $app->get('get_hospital_plan', 'App\Http\Controllers\Reportcontroller@get_hospital_plan');
    $app->get('get_department_speciality', 'App\Http\Controllers\Reportcontroller@get_department_speciality');
    $app->get('get_laboratories', 'App\Http\Controllers\Reportcontroller@get_laboratories');
    $app->get('get_report_statistics', 'App\Http\Controllers\ReportController@get_report_statistics');
    $app->get('generate_report_pdf', 'App\Http\Controllers\ReportController@generate_report_pdf');
    $app->post('email_report_pdf', 'App\Http\Controllers\ReportController@email_report_pdf');
});


//routes with token but no middleware for the moment

$app->group(['prefix' => 'api', 'middleware' => ['jwt.auth','App\Http\Middleware\CheckRoles']], function () use ($app) {


    //Templates

    $app->get('get_templates','App\Http\Controllers\ApiController@get_templates');
    $app->get('get_template','App\Http\Controllers\ApiController@get_template');
    $app->post('delete_template','App\Http\Controllers\ApiController@delete_template');
    $app->post('add_template','App\Http\Controllers\ApiController@add_template');
    $app->post('edit_template','App\Http\Controllers\ApiController@edit_template');


    //Templates  Categories for Lab

    $app->get('get_lab_template_categories', 'App\Http\Controllers\OrderController@get_lab_template_categories');
    $app->post('get_lab_template_category', 'App\Http\Controllers\OrderController@get_lab_template_category');
    $app->post('add_lab_template_category', 'App\Http\Controllers\OrderController@add_lab_template_category');
    $app->post('update_lab_template_category', 'App\Http\Controllers\OrderController@update_lab_template_category');
    $app->post('delete_lab_template_category', 'App\Http\Controllers\OrderController@delete_lab_template_category');


    //Templates Categories for Clinical Notes
    $app->get('get_templates_categories', 'App\Http\Controllers\ApiController@get_templates_categories');
    $app->post('delete_template_category', 'App\Http\Controllers\ApiController@delete_template_category');
    $app->post('add_template_category', 'App\Http\Controllers\ApiController@add_template_category');
    $app->post('get_template_category', 'App\Http\Controllers\ApiController@get_template_category');
    $app->post('update_template_category', 'App\Http\Controllers\ApiController@update_template_category');



    //Routes of Lab Orders

    $app->get('get_lab_tests', 'App\Http\Controllers\OrderController@get_lab_tests');
    $app->get('get_lab_test_details', 'App\Http\Controllers\OrderController@get_lab_test_details');

    $app->get('get_lab_order', 'App\Http\Controllers\OrderController@get_lab_order');
    $app->post('add_lab_order', 'App\Http\Controllers\OrderController@add_lab_order');
    $app->post('cancel_lab_order', 'App\Http\Controllers\OrderController@cancel_lab_order');
    $app->post('update_lab_test', 'App\Http\Controllers\OrderController@update_lab_test');

   // $app->post('add_lab_test_values', 'App\Http\Controllers\OrderController@add_lab_test_values');
    $app->post('update_lab_test_values', 'App\Http\Controllers\OrderController@update_lab_test_values');

 /*   //Lab Order Pdf
    $app->get('get_lab_test_pdf','App\Http\Controllers\PDFController@get_lab_test_pdf');*/


    //Sign Of Lab Report
    $app->post('signoff_lab_report','App\Http\Controllers\PDFController@signoff_lab_report');

    //Check Lab Order Status
    $app->post('check_lab_orders_status','App\Http\Controllers\OrderController@check_lab_orders_status');


});


$app->group(['prefix'=> 'api','middleware'=>['jwt.auth','App\Http\Middleware\CheckRoles']], function () use ($app) {


    $app->post('register_patient', 'App\Http\Controllers\ApiController@register_patient');
    $app->post('add_patient', 'App\Http\Controllers\ApiController@add_patient');
   // $app->post('delete_patient', 'App\Http\Controllers\ApiController@delete_patient');
    $app->post('add_patient_address', 'App\Http\Controllers\ApiController@add_patient_address');
    $app->post('add_patient_kin', 'App\Http\Controllers\ApiController@add_patient_kin');
    $app->post('add_patient_employees', 'App\Http\Controllers\ApiController@add_patient_employees');

    $app->post('add_visit' ,'App\Http\Controllers\ApiController@add_visit');
    $app->post('update_visit' ,'App\Http\Controllers\ApiController@update_visit');


    $app->get('get_patient_vitals','App\Http\Controllers\ApiController@get_patient_vitals');
    $app->get('get_patient_plan','App\Http\Controllers\ApiController@get_patient_plan');
    $app->post('add_patient_plan','App\Http\Controllers\ApiController@add_patient_plan');
    $app->get('get_patient','App\Http\Controllers\ApiController@get_patient');
    $app->get('get_visits','App\Http\Controllers\ApiController@get_visits');
    $app->get('get_patient_all_data','App\Http\Controllers\ApiController@get_patient_all_data');
    $app->post('add_patient_vitals','App\Http\Controllers\ApiController@add_patient_vitals');

    $app->get('get_patient_visit_history','App\Http\Controllers\ApiController@get_patient_visit_history');
    $app->get('get_patient_vital_history','App\Http\Controllers\ApiController@get_patient_vital_history');

    $app->get('get_patient_vital_history','App\Http\Controllers\ApiController@get_patient_vital_history');
    $app->post('update_visit_status','App\Http\Controllers\ApiController@update_visit_status');

    $app->get('get_patient_demographics','App\Http\Controllers\ApiController@get_patient_demographics');

    $app->get('remove_visit','App\Http\Controllers\ApiController@remove_visit');
    $app->get('visit_details','App\Http\Controllers\ApiController@visit_details');


    //Patient Archives
    $app->get('patient_archives','App\Http\Controllers\ApiController@patient_archives');
    $app->get('remove_patient_archive','App\Http\Controllers\ApiController@remove_patient_archive');

    //Patient Medications
    $app->get('patient_medications','App\Http\Controllers\ApiController@patient_medications');
    $app->post('add_patient_medications','App\Http\Controllers\ApiController@add_patient_medications');

    //Patient Supplements
    $app->get('patient_supplements','App\Http\Controllers\ApiController@patient_supplements');
    $app->post('add_patient_supplements','App\Http\Controllers\ApiController@add_patient_supplements');

   //Patient Allergies
    $app->get('patient_allergies','App\Http\Controllers\ApiController@patient_allergies');
    $app->post('add_patient_allergies','App\Http\Controllers\ApiController@add_patient_allergies');
    $app->post('update_patient_allergies','App\Http\Controllers\ApiController@update_patient_allergies');
    $app->post('delete_patient_allergies','App\Http\Controllers\ApiController@delete_patient_allergies');

    $app->get('patient_visit_list','App\Http\Controllers\ApiController@patient_visit_list');

    $app->get('get_all_patients','App\Http\Controllers\ApiController@get_all_patients');


    //Appointments
    $app->get('get_patient_appointments','App\Http\Controllers\ApiController@get_patient_appointments');
    $app->get('get_single_appointment','App\Http\Controllers\ApiController@get_single_appointment');
    $app->post('add_patient_appointments','App\Http\Controllers\ApiController@add_patient_appointments');
    $app->post('update_patient_appointments','App\Http\Controllers\ApiController@update_patient_appointments');
    $app->post('delete_patient_appointments','App\Http\Controllers\ApiController@delete_patient_appointments');
    $app->get('appointment_dates','App\Http\Controllers\OtherController@appointment_dates');
    $app->get('appointment_dates_patients','App\Http\Controllers\OtherController@appointment_dates_patients');
    $app->get('appointment_dates_doctors','App\Http\Controllers\OtherController@appointment_dates_doctors');
    $app->get('appointment_dates_departments','App\Http\Controllers\OtherController@appointment_dates_departments');
    $app->post('move_appointment','App\Http\Controllers\OtherController@move_appointment');
    $app->post('appointment_reminder','App\Http\Controllers\OtherController@appointment_reminder');

    //Resources
    $app->post('add_resources','App\Http\Controllers\ApiController@add_resources');
    $app->get('list_resources','App\Http\Controllers\ApiController@list_resources');
    $app->get('list_resources_back','App\Http\Controllers\ApiController@list_resources_back');
    $app->get('list_patient_resources','App\Http\Controllers\ApiController@list_patient_resources');
    $app->get('list_patient_resources_back','App\Http\Controllers\ApiController@list_patient_resources_back');
    $app->post('update_patient_resources','App\Http\Controllers\ApiController@update_patient_resources');
    $app->post('delete_patient_resources','App\Http\Controllers\ApiController@delete_patient_resources');

    //Clinical Notes
    $app->post('add_patient_clinical_notes','App\Http\Controllers\ApiController@add_patient_clinical_notes');
    $app->post('update_patient_clinical_notes','App\Http\Controllers\ApiController@update_patient_clinical_notes');
  //  $app->post('add_clinical_notes_attachments','App\Http\Controllers\ApiController@add_clinical_notes_attachments');
    $app->post('get_clinical_notes_pdf','App\Http\Controllers\PDFController@get_clinical_notes_pdf');

    $app->post('checkout_patient','App\Http\Controllers\ApiController@checkout_patient');

    $app->post('add_patient_referel','App\Http\Controllers\ApiController@add_patient_referel');


   //pharmacy
    $app->get('get_pharmacies','App\Http\Controllers\OtherController@get_pharmacies');
    $app->get('get_single_pharmacy','App\Http\Controllers\OtherController@get_single_pharmacy');
    $app->post('create_pharmacy','App\Http\Controllers\OtherController@create_pharmacy');
    $app->post('update_pharmacy','App\Http\Controllers\OtherController@update_pharmacy');
    $app->post('delete_pharmacy','App\Http\Controllers\OtherController@delete_pharmacy');


    //Prescription
    $app->post('add_patient_prescription','App\Http\Controllers\ApiController@add_patient_prescription');
    $app->post('update_patient_prescription','App\Http\Controllers\ApiController@update_patient_prescription');
    $app->post('add_prescription_medication','App\Http\Controllers\ApiController@add_prescription_medication');
    $app->post('get_all_prescription','App\Http\Controllers\ApiController@get_all_prescription');
    $app->get('get_prescription_list','App\Http\Controllers\ApiController@get_prescription_list');
    $app->get('get_prescription','App\Http\Controllers\ApiController@get_prescription');
    $app->get('dispense_medication','App\Http\Controllers\ApiController@dispense_medication');
    $app->get('query_medication','App\Http\Controllers\ApiController@query_medication');
    $app->get('get_patient_medications','App\Http\Controllers\ApiController@get_patient_medications');
    $app->post('update_prescription','App\Http\Controllers\ApiController@update_prescription');
    $app->post('remove_patient_precription_medications','App\Http\Controllers\OtherController@remove_patient_precription_medications');

    //Immunization
    $app->post('add_immunization','App\Http\Controllers\OtherController@add_immunization');
    $app->get('list_immunizations','App\Http\Controllers\OtherController@list_immunizations');
    $app->post('delete_immunization','App\Http\Controllers\OtherController@delete_immunization');

    //active problems
    $app->post('add_active_problems','App\Http\Controllers\OtherController@add_active_problems');
    $app->get('list_active_problems','App\Http\Controllers\OtherController@list_active_problems');
    $app->post('delete_active_problems','App\Http\Controllers\OtherController@delete_active_problems');

    //family history
    $app->post('add_family_history', 'App\Http\Controllers\OtherController@add_family_history');
    $app->get('list_family_history', 'App\Http\Controllers\OtherController@list_family_history');
    $app->post('delete_family_history', 'App\Http\Controllers\OtherController@delete_family_history');

    //Patient Pool Area
    $app->get('patients_pool_area','App\Http\Controllers\OtherController@patients_pool_area');

    //services regarding wards

     $app->post('create_ward','App\Http\Controllers\OtherController@create_ward');
     $app->get('get_single_ward','App\Http\Controllers\OtherController@get_single_ward');
     $app->post('delete_ward','App\Http\Controllers\OtherController@delete_ward');
     $app->get('bed_occupancy','App\Http\Controllers\OtherController@bed_occupancy');
     $app->get('ward_occupancy','App\Http\Controllers\OtherController@ward_occupancy');
     $app->get('patients_admitted','App\Http\Controllers\OtherController@patients_admitted');
     $app->post('update_discharge_date','App\Http\Controllers\OtherController@update_discharge_date');
     $app->post('patient_discharge','App\Http\Controllers\OtherController@patient_discharge');
     $app->get('patients_discharged','App\Http\Controllers\OtherController@patients_discharged');

     $app->post('move_patient','App\Http\Controllers\OtherController@move_patient');
     $app->get('all_wards','App\Http\Controllers\OtherController@all_wards');
     $app->get('ward_beds','App\Http\Controllers\OtherController@ward_beds');
     $app->post('add_patient_beds','App\Http\Controllers\OtherController@add_patient_beds');
     $app->post('delete_patient_bed','App\Http\Controllers\OtherController@delete_patient_bed');
     $app->post('edit_patient_bed','App\Http\Controllers\OtherController@edit_patient_bed');

});
$app->group(['prefix' => 'api',['jwt.auth','App\Http\Middleware\CheckRoles']], function () use ($app) {
    $app->post('create_inventory_category','App\Http\Controllers\InventoryAPIController@create_category');
    $app->post('update_inventory_category','App\Http\Controllers\InventoryAPIController@update_category');
    $app->get('get_inventory_category','App\Http\Controllers\InventoryAPIController@get_categories');
    $app->get('get_inventory_single_category','App\Http\Controllers\InventoryAPIController@get_single_category');
    $app->post('delete_inventory_category','App\Http\Controllers\InventoryAPIController@delete_category');

    $app->post('create_inventory_supplier','App\Http\Controllers\InventoryAPIController@create_supplier');
    $app->post('update_inventory_supplier','App\Http\Controllers\InventoryAPIController@update_supplier');
    $app->get('get_inventory_suppliers','App\Http\Controllers\InventoryAPIController@get_suppliers');
    $app->get('get_inventory_single_supplier','App\Http\Controllers\InventoryAPIController@get_single_supplier');
    $app->post('delete_inventory_supplier','App\Http\Controllers\InventoryAPIController@delete_supplier');

    $app->get('get_stock','App\Http\Controllers\InventoryAPIController@get_stock');
    $app->get('get_active_stock','App\Http\Controllers\InventoryAPIController@get_active_stock');
    $app->get('get_inactive_stock','App\Http\Controllers\InventoryAPIController@get_inactive_stock');
    $app->get('get_stock_details','App\Http\Controllers\InventoryAPIController@get_stock_details');
    $app->post('add_inventory','App\Http\Controllers\InventoryAPIController@add_stock');
    $app->post('delete_inventory','App\Http\Controllers\InventoryAPIController@delete_stock');
    $app->post('update_inventory','App\Http\Controllers\InventoryAPIController@update_stock');
    $app->post('update_reorder_level','App\Http\Controllers\InventoryAPIController@update_order_level');
   // $app->post('update_reorder_level','App\Http\Controllers\InventoryAPIController@update_order_level');
    $app->post('add_product','App\Http\Controllers\InventoryAPIController@add_product');
    $app->post('add_product_inventory','App\Http\Controllers\InventoryAPIController@add_product_inventory');
    $app->post('get_reorder_level','App\Http\Controllers\InventoryAPIController@get_reorder_level');
    $app->post('update_product','App\Http\Controllers\InventoryAPIController@update_product');
    $app->post('get_product','App\Http\Controllers\InventoryAPIController@get_product');

    $app->get('get_all_bills','App\Http\Controllers\BillingController@get_all_bills');

    $app->get('get_all_invoices','App\Http\Controllers\BillingController@get_all_invoices');
    $app->post('update_invoice','App\Http\Controllers\BillingController@update_invoice');
    $app->get('get_invoice_data','App\Http\Controllers\BillingController@get_invoice_data');
    $app->get('get_invoice_status','App\Http\Controllers\BillingController@get_invoice_status');
    $app->get('get_billing_data','App\Http\Controllers\BillingController@get_billing_data');
    $app->post('delete_invoice','App\Http\Controllers\BillingController@delete_invoice');


    $app->post('send_invoice_email','App\Http\Controllers\PDFController@send_invoice_email');
    $app->get('get_bill_invoices','App\Http\Controllers\BillingController@get_bill_invoices');
    $app->post('inventory_inactive','App\Http\Controllers\InventoryAPIController@inventory_inactive');

    //Billing Codes and Templates
    $app->post('add_billing_category','App\Http\Controllers\BillingController@add_billing_category');
    $app->post('update_billing_category','App\Http\Controllers\BillingController@update_billing_category');
    $app->post('delete_billing_category','App\Http\Controllers\BillingController@delete_billing_category');
    $app->get('get_billing_category','App\Http\Controllers\BillingController@get_billing_category');
    $app->get('get_single_billing_category','App\Http\Controllers\BillingController@get_single_billing_category');
    $app->post('add_billing_code','App\Http\Controllers\BillingController@add_billing_code');
    $app->post('update_billing_code','App\Http\Controllers\BillingController@update_billing_code');
    $app->get('get_all_billing_codes','App\Http\Controllers\BillingController@get_all_billing_codes');
    $app->get('get_billing_code','App\Http\Controllers\BillingController@get_billing_code');
    $app->post('delete_billing_code','App\Http\Controllers\BillingController@delete_billing_code');

    //Tax Rates
    $app->post('add_tax_rates','App\Http\Controllers\BillingController@add_tax_rates');
    $app->post('update_tax_rates','App\Http\Controllers\BillingController@update_tax_rates');
    $app->get('list_tax_rates','App\Http\Controllers\BillingController@list_tax_rates');
    $app->get('list_tax_rate','App\Http\Controllers\BillingController@list_tax_rate');
    $app->post('delete_tax_rate','App\Http\Controllers\BillingController@delete_tax_rate');

    //Billing  Codes and Templates
    $app->post('add_investigation_billing_code','App\Http\Controllers\BillingController@add_investigation_billing_code');
    $app->post('update_investigation_billing_code','App\Http\Controllers\BillingController@update_investigation_billing_code');
    $app->post('delete_investigation_billing_code','App\Http\Controllers\BillingController@delete_investigation_billing_code');
    $app->get('get_all_investigation_billing_codes','App\Http\Controllers\BillingController@get_all_investigation_billing_codes');
    $app->get('get_investigation_billing_code','App\Http\Controllers\BillingController@get_investigation_billing_code');

    //Clinical Reports
    $app->post('signoff_clinical_report','App\Http\Controllers\PDFController@signoff_clinical_report');
    $app->post('check_clinical_notes_status','App\Http\Controllers\ApiController@check_clinical_notes_status');


    //Prescription Pdf
    $app->get('get_prescription_pdf','App\Http\Controllers\PDFController@get_prescription_pdf');


    //DashBoard Api's
    $app->get('get_all_todays_appointments','App\Http\Controllers\OtherController@get_all_todays_appointments');
    $app->get('get_todays_all_visits','App\Http\Controllers\OtherController@get_todays_all_visits');


    //Settings APIS
    $app->post('add_lab','App\Http\Controllers\SettingController@add_lab');
    $app->get('get_labs','App\Http\Controllers\SettingController@get_labs');
    $app->get('get_lab','App\Http\Controllers\SettingController@get_lab');
    $app->post('update_lab','App\Http\Controllers\SettingController@update_lab');
    $app->post('delete_lab','App\Http\Controllers\SettingController@delete_lab');

    $app->get('get_all_lab_tests','App\Http\Controllers\SettingController@get_all_lab_tests');
    $app->get('get_single_test','App\Http\Controllers\SettingController@get_single_test');
    $app->post('add_lab_test','App\Http\Controllers\SettingController@add_lab_test');
    $app->post('update_current_lab_test','App\Http\Controllers\SettingController@update_lab_test');
    $app->post('delete_lab_test','App\Http\Controllers\SettingController@delete_lab_test');


    //Add Invoice to Bills
    $app->post('add_invoice_to_bills','App\Http\Controllers\BillingController@add_invoice_to_bills');

    //Get Todays Bills
    $app->get('get_todays_bills','App\Http\Controllers\BillingController@get_todays_bills');

    //Add Update Hospital
    $app->post('add_update_hospital','App\Http\Controllers\SettingController@add_update_hospital');
    $app->get('get_hospital_profile','App\Http\Controllers\SettingController@get_hospital_profile');


    //Settings APIS
    $app->post('add_department','App\Http\Controllers\SettingController@add_department');
    $app->get('get_departments','App\Http\Controllers\SettingController@get_departments');
    $app->get('get_department','App\Http\Controllers\SettingController@get_department');
    $app->post('update_department','App\Http\Controllers\SettingController@update_department');
    $app->post('delete_department','App\Http\Controllers\SettingController@delete_department');

    //User Manageemet
    $app->get('get_all_users','App\Http\Controllers\ApiController@get_all_users');
    $app->get('get_user','App\Http\Controllers\ApiController@get_user');
    $app->post('update_user','App\Http\Controllers\ApiController@update_user');
    $app->post('delete_user','App\Http\Controllers\ApiController@delete_user');
    $app->post('change_user_password', 'App\Http\Controllers\ApiController@change_user_password');


    //Role Management
    $app->get('get_all_contexts','App\Http\Controllers\SettingController@get_all_contexts');
    $app->post('add_role_group','App\Http\Controllers\SettingController@add_role_group');
    $app->post('update_role_group','App\Http\Controllers\SettingController@update_role_group');
    $app->get('get_roles','App\Http\Controllers\SettingController@get_roles');
    $app->post('delete_role','App\Http\Controllers\SettingController@delete_role');
    $app->get('get_user_role','App\Http\Controllers\SettingController@get_user_role');


});

$app->group(['prefix' => 'api','middleware' => ['jwt.auth','App\Http\Middleware\CheckRoles']], function () use ($app) {
    $app->post('delete_patient', 'App\Http\Controllers\ApiController@delete_patient');

});


$app->group(['prefix'=>'api','middleware'=>['jwt.auth','App\Http\Middleware\CheckRoles']], function () use ($app) {
    //testing importexport
    $app->post('import_patients','App\Http\Controllers\PDFController@import_patients');
    $app->post('enrollUserByCSV','App\Http\Controllers\SettingController@enrollUserByCSV');

});


$app->group(['prefix'=>'api'], function () use ($app) {
    //testing importexport
    $app->post('export_nhis','App\Http\Controllers\PDFController@export_nhis');

});



$app->group(['prefix'=>'api','middleware' => 'jwt.auth'], function () use ($app) {
    //testing importexport
    $app->get('get_all_patient_orders','App\Http\Controllers\OrderController@get_all_patient_orders');
    $app->post('waive_bill','App\Http\Controllers\BillingController@waive_bill');
    $app->post('waive_invoice','App\Http\Controllers\BillingController@waive_invoice');
    $app->post('add_patient_bill','App\Http\Controllers\BillingController@add_patient_bill');
   // $app->post('search_patient_bill','App\Http\Controllers\BillingController@search_patient_bill');
    $app->post('add_prescription_material','App\Http\Controllers\OtherController@add_prescription_material');
    $app->get('download_patient_referal','App\Http\Controllers\PDFController@download_patient_referal');


    //room apis
    $app->post('add_room', 'App\Http\Controllers\SettingController@add_room');
    $app->get('get_rooms', 'App\Http\Controllers\SettingController@get_rooms');
    $app->get('get_room', 'App\Http\Controllers\SettingController@get_room');
    $app->post('update_room', 'App\Http\Controllers\SettingController@update_room');
    $app->post('delete_room', 'App\Http\Controllers\SettingController@delete_room');
    $app->post('update_visit_room','App\Http\Controllers\ApiController@update_visit_room');
    $app->post('search_room', 'App\Http\Controllers\ApiController@search_room');


    //Bill Purposes
    $app->get('get_bill_purposes','App\Http\Controllers\BillingController@get_bill_purposes');
    $app->get('get_inventory_categories_groups','App\Http\Controllers\InventoryAPIController@get_inventory_categories_groups');
    $app->get('check_patient_exists','App\Http\Controllers\ApiController@check_patient_exists');


});

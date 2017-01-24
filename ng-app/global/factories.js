AppEHR = angular.module('AppEHR');

AppEHR.factory("AUTH", function ($resource) {
    return $resource(serverPath + 'user_login', {email: '@email', password: '@password'}, {
        get: {method: 'POST'}
    });
});
AppEHR.factory("PatientInformation", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient', params, {
            save: {
                method: 'POST',
                transformRequest: function (data) {
                     // modify data then
                     return angular.toJson(data);
                },
                //async : true
                headers: { 'Content-type': 'application/x-www-form-urlencoded', 'Content-length': 300000 }
            },
            update: {method: 'PUT'},
            get: { method: 'GET', headers: { 'Content-length': '9999999', 'Content-type': 'application/x-www-form-urlencoded' } }
        });
        return res2;
    }
    var patientRegistration = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        },
        get: function (params, body, success) {
            var res = getResource(params, body);

            return res.get(params, body, success);
        }
    };
    return patientRegistration;
});
AppEHR.factory("PatientRegistrationAddress", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_address', params, {
            save: {method: 'POST'},
            update: {method: 'PUT'}
        });
        return res2;
    }
    var patientRegistrationAddress = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        }
    };
    return patientRegistrationAddress;
});
AppEHR.factory("CheckoutPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'checkout_patient', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationAddress = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        }
    };
    return patientRegistrationAddress;
});
AppEHR.factory("PatienPlanSaveData", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_plan', params, {
            save: {method: 'POST'},
            update: {method: 'PUT'}
        });
        return res2;
    }
    var patientRegistrationAddress = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        }
    };
    return patientRegistrationAddress;
});
AppEHR.factory("PatientRegistrationKin", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_kin', params, {
            save: {method: 'POST'},
            update: {method: 'PUT'}
        });
        return res2;
    }
    var patientRegistrationKin = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("GetArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_archives', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("SaveFiles", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'add_patient_archive', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save:function(params,body,success) {
          var res = getResource(params, body);
          return res.save(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("PatienPrescription", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'add_patient_prescription', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save:function(params,body,success) {
          var res = getResource(params, body);
          return res.save(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("PatienPrescriptionUpdate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'update_patient_prescription', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save:function(params,body,success) {
          var res = getResource(params, body);
          return res.save(params,body,success);
        }
    };
    return patientRegistrationKin;
});

AppEHR.factory("GetResourcesByFolderArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'list_resources', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});
/*AppEHR.factory("GetAllPrescription", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'get_all_prescription', params, {
            get: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});*/
AppEHR.factory("GetPrescription", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'get_prescription', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});

AppEHR.factory("DeleteFolderArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'delete_patient_resources', params, {
            get: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("RemoveArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'remove_patient_archive', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("EditArchives", function ($resource) { // edit filename
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_patient_archive', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("EditFolderArchives", function ($resource) { // edit folder
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'update_patient_resources', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save:function(params,body,success) {
          var res = getResource(params, body);
          return res.save(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("AddFolderArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'add_resources', params, {
            save: {method: 'POST'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        save:function(params,body,success) {
          var res = getResource(params, body);
          return res.save(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("ListFolderArchives", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'list_patient_resources', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("FolderUpContent", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'list_resources_back', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("FolderUpFolders", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath +  'list_patient_resources_back', params, {
            get: {method: 'GET'},
        });
        return res2;
    }
    var patientRegistrationKin = {
        get:function(params,body,success) {
          var res = getResource(params, body);
          return res.get(params,body,success);
        }
    };
    return patientRegistrationKin;
});
AppEHR.factory("AddEncounter", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_visit', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addEncounter = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addEncounter;
});
AppEHR.factory("GetVisits", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_visits', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetPatientAllData", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_all_data', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("PatientRegistrationEmployer", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_employees', params, {
            save: {method: 'POST'},
            update: {method: 'PUT'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        },
        update: function (params, body, success) {
            var res = getResource(params, body);
            return res.update(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetPatientInfo", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetEncountersByPatients", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_visit_list', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAllEncounters", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_visit_history', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("CheckOut", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_visit_status', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("PatientDemographics", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_demographics', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("UpdateEncounter", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_visit', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetOneEncounter", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'visit_details', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("RemoveEncounter", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'remove_visit', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("AddVitals", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_vitals', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("RemoveAllergy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_patient_allergies', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("Countries", function ($resource) {
    return $resource(serverPath + 'get_countries', {token: '@token'}, {
        get: {method: 'GET'}
    });
});
AppEHR.factory("States", function ($resource) {
    return $resource(serverPath + 'get_states', {token: '@token', country_id: '@country_id'}, {
        get: {method: 'GET'}
    });
});
AppEHR.factory("City", function ($resource) {
    return $resource(serverPath + 'get_cities', {token: '@token', state_id: '@state_id'}, {
        get: {method: 'GET'}
    });
});
AppEHR.factory("GetLocalGovermentArea", function ($resource) {
    return $resource(serverPath + 'get_local_goverment_area', {token: '@token', state_id: '@state_id'}, {
        get: {method: 'GET'}
    });
});
AppEHR.factory("DropDownData", function ($resource) {
    return $resource(serverPath + 'get_dropdowndata', {token: '@token'}, {
        get: {method: 'GET'}
    });
});
AppEHR.service('fileUpload', ['$http', function ($http) {
    this.uploadFileToUrl = function (file, uploadUrl) {
        var fd = new FormData();
        fd.append('file', file);
        $http.post(uploadUrl, fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        })
                .success(function () {
                    console.log("here");
                })
                .error(function () {
                    console.log("failed");
                });
    }
}]);
AppEHR.factory("ClinicalProgressNotesFields", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'clinical_progress_note_fields', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var clinicalProgressNotesFields = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return clinicalProgressNotesFields;
});
AppEHR.factory("PharmacyPrescription", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_prescription_list', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var clinicalProgressNotesFields = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return clinicalProgressNotesFields;
});
AppEHR.factory("GetTemplatesDropDown", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'clinical_progress_note_templates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var clinicalProgressNotesFields = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return clinicalProgressNotesFields;
});
AppEHR.factory("SetClinicalProgressNotes", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_clinical_notes', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var clinicalProgressNotesFields = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return clinicalProgressNotesFields;
});
AppEHR.factory("GetPatientMedications", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_medications', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("GetVitalsInfo", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_vital_history', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("GetSupplements", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_supplements', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("GetAllergies", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_allergies', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("UpdateAllergies", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_patient_allergies', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAllPatients", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_patients', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAllLabOrders", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_lab_orders', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabOrders = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabOrders;
});
AppEHR.factory("GetLabOrdersHistory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_order_history', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabOrdersHistory = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabOrdersHistory;
});
AppEHR.factory("getLabOrderInfo", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_order', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabOrder = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabOrder;
});

AppEHR.factory("getLabTestInfo", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_test_details', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabTest = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabTest;
});



AppEHR.factory("UpdateAllergies", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_patient_allergies', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("ADDSupplements", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_supplements', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("ADDAllergy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_allergies', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("GetAllInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_stock', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var InventoryLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return InventoryLists;
});

AppEHR.factory("AddMoreStock", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_inventory', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var InventoryLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return InventoryLists;
});

AppEHR.factory("GetAllSuppliers", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_suppliers', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var SupplierLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return SupplierLists;
});


AppEHR.factory("GetAllCategories", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_category', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var CategoryLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return CategoryLists;
});


AppEHR.factory("GetAllPharmacies", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_pharmacies', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Pharmacies = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Pharmacies;
});


AppEHR.factory("AddCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'create_inventory_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddCategory;
});



AppEHR.factory("AddSupplier", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'create_inventory_supplier', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddCategory;
});


AppEHR.factory("AddInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_product_inventory', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddInventory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddInventory;
});

AppEHR.factory("AddProduct", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_product', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddProduct = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddProduct;
});



AppEHR.factory("UpdateSuppliers", function ($resource) {

    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_inventory_supplier', params,{
            save: {method: 'POST'}
        });
        return res2;
    }
    var UpdateSupplier = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return UpdateSupplier;
});

AppEHR.factory("updateCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_inventory_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var UpdateCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return UpdateCategory;
});

AppEHR.factory("DeleteCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_inventory_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var DeleteCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return DeleteCategory;
});

AppEHR.factory("DeleteSupplier", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_inventory_supplier', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var DeleteSupplier = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return DeleteSupplier;
});





AppEHR.factory("DeleteInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_inventory', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var DeleteInventory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return DeleteInventory;
});



AppEHR.factory("GetSingleSupplier", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_single_supplier', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Supplier = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Supplier;
});

AppEHR.factory("GetSingleCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_single_category', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Categories = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Categories;
});

AppEHR.factory("GetSingleStock", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_stock_details', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Stocks = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Stocks;
});
AppEHR.factory("GetLabTests", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_tests', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabTests = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabTests;
});



AppEHR.factory("GetSingleProduct", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_stock_details', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Stocks = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Stocks;
});


AppEHR.factory("GetProduct", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_product', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var Product = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Product;
});


AppEHR.factory("updateReorderLevel", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_reorder_level', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var update_reorder_level = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return update_reorder_level;
});

AppEHR.factory("ProductUpdate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_product', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var update_product = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return update_product;
});

AppEHR.factory("cancelLabOrder", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'cancel_lab_order', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var cancelOrder = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return cancelOrder;
});
AppEHR.factory("getPharmacy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_pharmacies', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("addOrder", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_lab_order', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var Order = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return Order;
});

AppEHR.factory("updateTestStatus", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_lab_test', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateTest = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateTest;
});

AppEHR.factory("GetReorderLevel", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_reorder_level', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var reorder_level = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return reorder_level;
});
AppEHR.factory("getTemplateCategories", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_template_categories', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var template_categories = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return template_categories;
});
AppEHR.factory("getTemplates", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_test_templates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var template_categories = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return template_categories;
});
AppEHR.factory("getTemplateData", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_template_details', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var template_data = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return template_data;
});





AppEHR.factory("GetAllBills", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_bills', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Bills = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Bills;
});


AppEHR.factory("GetAllInvoices", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_invoices', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Invoices = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Invoices;
});


AppEHR.factory("SendEmail", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'send_invoice_email', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var sendInvoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return sendInvoice;
});




AppEHR.factory("GetBillInvoices", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_bill_invoices', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var GetBillInvoices = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return GetBillInvoices;
});

AppEHR.factory("ProcessPayment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_invoice', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var update_inv = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return update_inv;
});

AppEHR.factory("InvoiecStatus", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_invoice_status', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var get_status = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return get_status;
});

AppEHR.factory("InvoiceData", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_invoice_data', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var get_invoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return get_invoice;
});
AppEHR.factory("getTemplates", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_templates', params, {
            save: {method: 'GET'}
        });
        return res2;
    }

    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("AddTemplate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_template', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddCategory;
});

AppEHR.factory("getTemplateCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_template_categories', params, {
            save: {method: 'GET'}
        });
        return res2;
    }

    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("getCliTemplateCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_templates_categories', params, {
            save: {method: 'GET'}
        });
        return res2;
    }

    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});

AppEHR.factory("AddTemplateCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_template_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddCategory;
});

AppEHR.factory("saveTemplateValues", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_lab_test_values', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var AddTestValues = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return AddTestValues;
});

AppEHR.factory("addPharmacy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'create_pharmacy', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addPharmacy = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addPharmacy;
});
AppEHR.factory("deleteInvoice", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_invoice', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var deletedInvoice = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return deletedInvoice;
});


AppEHR.factory("DeleteTempCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_template_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var DeleteInventory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return DeleteInventory;
});

AppEHR.factory("DeleteTemplate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_template', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var DeleteInventory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return DeleteInventory;
});

AppEHR.factory("PharmacyPrescription", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'get_prescription_list', params, {
           get: {method: 'GET'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});

AppEHR.factory("UpdatePharmacy", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'update_pharmacy', params, {
           save: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       save: function (params, body, success) {
           var res = getResource(params, body);
           return res.save(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});

AppEHR.factory("DeletePharmacy", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'delete_pharmacy', params, {
           get: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});

AppEHR.factory("ListImmunization", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'list_immunizations', params, {
           get: {method: 'GET'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("DeleteImmunization", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'delete_immunization', params, {
           get: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("AddImmunization", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'add_immunization', params, {
           save: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       save: function (params, body, success) {
           var res = getResource(params, body);
           return res.save(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("GetAllMedications", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'get_prescription_medicines', params, {
           get: {method: 'GET'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("DeleteMedication", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'remove_patient_precription_medications', params, {
           get: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       get: function (params, body, success) {
           var res = getResource(params, body);
           return res.get(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("AddMedicationInPrescription", function ($resource) {
   function getResource(params, body) {
       var res2 = $resource(serverPath + 'add_prescription_medication', params, {
           save: {method: 'POST'}
       });
       return res2;
   }
   var clinicalProgressNotesFields = {
       save: function (params, body, success) {
           var res = getResource(params, body);
           return res.save(params, body, success);
       }
   };
   return clinicalProgressNotesFields;
});
AppEHR.factory("GetAllActiveInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_active_stock', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var InventoryLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return InventoryLists;
});
AppEHR.factory("GetAllInActiveInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inactive_stock', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var InventoryLists = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return InventoryLists;
});
AppEHR.factory("SendEmail", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'send_invoice_email', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var sendInvoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return sendInvoice;
});
AppEHR.factory("LabOrdersByPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_lab_orders', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var sendInvoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return sendInvoice;
});
AppEHR.factory("GetMedicineUnits", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_medicine_units', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var sendInvoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return sendInvoice;
});
AppEHR.factory("DeletePatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_patient', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var sendInvoice = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return sendInvoice;
});
AppEHR.factory("DashboardCounts", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_dashboard_counts', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var sendInvoice = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return sendInvoice;
});
AppEHR.factory("MakeInactiveInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'inventory_inactive', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetAppointmentsByPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_appointments', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("AddAppointments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_appointments', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("DeleteAppointments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_patient_appointments', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("UpdateAppointments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_patient_appointments', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetOneAppointment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_single_appointment', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetAllWards", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'bed_occupancy', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("CreateWard", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'create_ward', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("DeleteWard", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_ward', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetOneWard", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_single_ward', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("BedOccupancy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'bed_occupancy', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("AdmitPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patients_admitted', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("WardOccupancy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'ward_occupancy', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetBedsByWard", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'ward_beds', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetAllWardsDropDown", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'all_wards', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("MovePatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'move_patient', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("PatientPoolArea", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patients_pool_area', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("AppointmentCalender", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("FindAppointments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetCategories", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("MoveAppointment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'move_appointment', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("ReminderAppointment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_reminder', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("AddBed", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_beds', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("DeleteBed", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_patient_bed', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("EditBed", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'edit_patient_bed', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("DischargePatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patient_discharge', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("DischargeSummaryByWards", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'patients_discharged', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("SearchByPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates_patients', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("SearchByDoctors", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates_doctors', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("SearchByDepartment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'appointment_dates_departments', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("GetEditTemplate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_template', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("EditTemplate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'edit_template', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("UpdateDischargeDate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_discharge_date', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("ReferralPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_referel', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("ClinicalReport", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_clinical_notes_pdf', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("AddAttachmentClinical", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_clinical_notes_attachments', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("SignOffClinicalProgress", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'signoff_clinical_report', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("CheckClinicalNotesStatus", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'check_clinical_notes_status', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});
AppEHR.factory("UpdatePatientClinicalNotes", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_patient_clinical_notes', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var MakeInactive = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return MakeInactive;
});

AppEHR.factory("orderReport", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_test_pdf', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("Dosignoff", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'signoff_lab_report', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("UpdateLabTestValues", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_lab_test_values', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("CheckLabOrderStatus", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'check_lab_orders_status', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAllRadiologyLabs", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_radiology_lab_orders', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetDiagnosisList", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_diagnosis', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetMedications", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_prescription_medicines', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetPrescriptionSupplements", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_prescription_supplements', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetLabOrderCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_template_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetTempCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab_template_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("UpdateTempCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_lab_template_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetClinicalTempCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_template_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("UpdateClinicalTempCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_template_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("PrescriptionPDF", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_prescription_pdf', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetPatientAppointment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_patient_appointments', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAP", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'list_active_problems', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("DeleteAP", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_active_problems', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("AddFamily", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_family_history', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("AddAP", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_active_problems', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});



AppEHR.factory("DeleteFamily", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_family_history', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("ListFamily", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'list_family_history', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
/*AppEHR.factory("AddAP", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_active_problems', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});*/
AppEHR.factory("getInventory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_categories', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("AddMaterialByCat", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_material', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetTodayAppointments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_todays_appointments', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetTodayEncounters", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_todays_all_visits', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("AddToBill", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_invoice_to_bills', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("DespensePharmacy", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'dispense_medication', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetAllTaxRates", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'list_tax_rates', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var TaxRates = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return TaxRates;
});
AppEHR.factory("GetTaxRate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'list_tax_rate', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var TaxRate = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return TaxRate;
});
AppEHR.factory("deleteTaxRate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_tax_rate', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedTaxRate = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedTaxRate;
});
AppEHR.factory("addTaxRate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_tax_rates', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addTaxRate = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addTaxRate;
});
AppEHR.factory("editTaxRate", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_tax_rates', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateTaxRate = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateTaxRate;
});
AppEHR.factory("GetAllBillingCodes", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_billing_codes', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var BillingCodes = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return BillingCodes;
});
AppEHR.factory("GetBillingCode", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_billing_code', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var BillingCode = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return BillingCode;
});
AppEHR.factory("deleteBillingCode", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_billing_code', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedBillingCode = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedBillingCode;
});
AppEHR.factory("addBillingCode", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_billing_code', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var BillingCode = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return BillingCode;
});
AppEHR.factory("editBillingCode", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_billing_code', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateBillingCode = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateBillingCode;
});
AppEHR.factory("GetAllBillingCategories", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_billing_category', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var BillingCategories = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return BillingCategories;
});
AppEHR.factory("GetBillingCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_single_billing_category', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var BillingCategory = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return BillingCategory;
});
AppEHR.factory("deleteBillingCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_billing_category', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedBillingCategory = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedBillingCategory;
});
AppEHR.factory("addBillingCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_billing_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var BillingCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return BillingCategory;
});
AppEHR.factory("editBillingCategory", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_billing_category', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateBillingCategory = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateBillingCategory;
});
AppEHR.factory("GetAllLabs", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_labs', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Labs = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Labs;
});
AppEHR.factory("GetLab", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_lab', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Lab = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Lab;
});
AppEHR.factory("deleteLab", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_lab', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedLab = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedLab;
});
AppEHR.factory("addLab", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_lab', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addLab = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addLab;
});
AppEHR.factory("editLab", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_lab', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateLab = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateLab;
});
AppEHR.factory("GetAllLabTests", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_lab_tests', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabTests = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabTests;
});
AppEHR.factory("GetLabTest", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_single_test', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var LabTest = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return LabTest;
});
AppEHR.factory("deleteLabTest", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_lab_test', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedLabTest = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedLabTest;
});
AppEHR.factory("addLabTest", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_lab_test', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addLabTest = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addLabTest;
});
AppEHR.factory("editLabTest", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_current_lab_test', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateLabTest = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateLabTest;
});

AppEHR.factory("DownloadArchive", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'download_archive', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updateLab = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateLab;
});
AppEHR.factory("QueryMedication", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'query_medication', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var updateLab = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateLab;
});
AppEHR.factory("GetAllproducts", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_prodducts', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var updateLab = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updateLab;
});
AppEHR.factory("GetHospitalProfile", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_hospital_profile', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Hospital = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Hospital;
});
AppEHR.factory("addUpdateHospital", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_update_hospital', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var hospitalData = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return hospitalData;
});
AppEHR.factory("GetAllDepartments", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_departments', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Departments = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Departments;
});
AppEHR.factory("GetDepartment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_department', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Department = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Department;
});
AppEHR.factory("deleteDepartment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_department', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedDepartment = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedDepartment;
});
AppEHR.factory("addDepartment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_department', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addedDepartment = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addedDepartment;
});
AppEHR.factory("editDepartment", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_department', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedDepartment = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedDepartment;
});

AppEHR.factory("GetBillingWithDates", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_todays_bills', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var hospitalData = {
        get: function (params, body, success) {
            var get1 = getResource(params, body);
            return get1.get(params, body, success);
        }
    };
    return hospitalData;
});

AppEHR.factory("GetAllUsers", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_users', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Users = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Users;
});
AppEHR.factory("GetUser", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_user', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var User = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return User;
});
AppEHR.factory("deleteUser", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_user', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedUser = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedUser;
});
AppEHR.factory("addUser", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'register_user', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addedUser = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addedUser;
});
AppEHR.factory("editUser", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_user', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedUser = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedUser;
});
AppEHR.factory("ChangeUserPassword", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'change_user_password', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedUser = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedUser;
});


AppEHR.factory("GetAllContexts", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_contexts', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Contexts = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Contexts;
});
AppEHR.factory("addRole", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_role_group', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var Context = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return Context;
});


AppEHR.factory("GetAllRoles", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_roles', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Roles = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Roles;
});
AppEHR.factory("deleteRole", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_role', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedRole = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedRole;
});
AppEHR.factory("GetRole", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_user_role', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Role = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Role;
});

AppEHR.factory("editRole", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_role_group', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});

AppEHR.factory("ImportPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'import_patients', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("SearchPatientByColumns", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'search_patient_listing', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("GetReportStatistics", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_report_statistics', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Statistics = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Statistics;
});
AppEHR.factory('GetHospitalPlans', function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_hospital_plan', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Plans = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Plans;
});
AppEHR.factory('GetDepartmentSpeciality', function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_department_speciality', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Specialites = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Specialites;
});
AppEHR.factory('GetLaboratories', function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_laboratories', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Laboratories = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Laboratories;
});
AppEHR.factory('GenerateReportPDF', function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'generate_report_pdf', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var PDF = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return PDF;
});
AppEHR.factory('EmailReportPDF', function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'email_report_pdf', params, {
            post: {method: 'POST'}
        });
        return res2;
    }
    var Email = {
        post: function (params, body, success) {
            var res = getResource(params, body);
            return res.post(params, body, success);
        }
    };
    return Email;
});
AppEHR.factory("GetLabsByPatient", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_all_patient_orders', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var updatedRole = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("AddPatientRegBill", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_patient_bill', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("WaiveBill", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'waive_bill', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("WaiveBillInvoice", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'waive_invoice', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("AssignRooms", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'search_patient_listing', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("SearchPatientForBill", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'search_patient_bill', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("AddPrescriptionMaterials", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_prescription_material', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});
AppEHR.factory("DownloadReferral", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'download_patient_referal', params, {
            save: {method: 'GET'}
        });
        return res2;
    }
    var updatedRole = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRole;
});AppEHR.factory("GetAllRooms", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_rooms', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Rooms = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Rooms;
});
AppEHR.factory("GetRoom", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_room', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var Room = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return Room;
});
AppEHR.factory("deleteRoom", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'delete_room', params, {
            get: {method: 'POST'}
        });
        return res2;
    }
    var deletedRoom = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return deletedRoom;
});
AppEHR.factory("addRoom", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'add_room', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var addedRoom = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return addedRoom;
});
AppEHR.factory("editRoom", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_room', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var updatedRoom = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return updatedRoom;
});
AppEHR.factory("UpdateVisitRoom", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'update_visit_room', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("GetBillsByPurposes", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_bill_purposes', params, {
            get: {method: 'get'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
});
AppEHR.factory("BillsByPatients", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'search_patient_bills', params, {
            save: {method: 'POST'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        save: function (params, body, success) {
            var res = getResource(params, body);
            return res.save(params, body, success);
        }
    };
    return patientRegistrationEmployer;
})
AppEHR.factory("CategoriesByGroup", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'get_inventory_categories_groups', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
})
AppEHR.factory("CheckPatientExists", function ($resource) {
    function getResource(params, body) {
        var res2 = $resource(serverPath + 'check_patient_exists', params, {
            get: {method: 'GET'}
        });
        return res2;
    }
    var patientRegistrationEmployer = {
        get: function (params, body, success) {
            var res = getResource(params, body);
            return res.get(params, body, success);
        }
    };
    return patientRegistrationEmployer;
})
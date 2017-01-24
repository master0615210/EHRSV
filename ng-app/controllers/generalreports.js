var AppEHR = angular.module('AppEHR');

AppEHR.controller('generalReports', ['$scope', '$rootScope', '$window', '$routeParams', '$timeout', 'GetReportStatistics', 'GetHospitalPlans', 'GetDepartmentSpeciality', 'GetLaboratories', 'GenerateReportPDF', 'EmailReportPDF',
	function($scope,$rootScope,$window,$routeParams,$timeout,GetReportStatistics,GetHospitalPlans,GetDepartmentSpeciality,GetLaboratories,GenerateReportPDF,EmailReportPDF){
		$rootScope.pageTitle = "EHR - Reporting";

		$scope.startDate = '';
		$scope.endDate = '';
		$scope.email = '';

		$scope.reportList = [
			{
				id: 1,
				head: 'No of encounters(Visits)',
				value: 'General Monthly Hospital Visit',
				filter: []
			}, {
				id: 2,
				head: 'No of encounters by age(Visits)',
				value: 'Health Facility Attendance',
				filter: [
					{
						id: '',
						value: 'All'
					}, {
						id: 1,
						value: '0 - 28days'
					}, {
						id: 2,
						value: '29d - 11mo'
					}, {
						id: 3,
						value: '12 - 59mo'
					}, {
						id: 4,
						value: '5 - 19years'
					}, {
						id: 5,
						value: '> 20years'
					}
				]
			}, {
				id: 3,
				head: 'No of encounters(Visits)',
				value: 'Attendance by Patient Plan (NHIS, FHSS,Retainer, General',
				filter: []
			}, {
				id: 4,
				head: 'Number of Attendance',
				value: 'Attendance by Specialities & Clinics',
				filter: []
			}, {
				id: 5,
				head: 'Number of Admissions',
				value: 'Monthly Total Admissions',
				filter: []
			}, {
				id: 6,
				head: 'Number of Discharge',
				value: 'Monthly Total Discharge',
				filter: []
			}, {
				id: 7,
				head: 'Number of Deaths',
				value: 'Montly Total Deaths',
                filter: [
                    {
                        id: '',
                        value: 'All'
                    }, {
                        id: 1,
                        value: '0 - 28days'
                    }, {
                        id: 2,
                        value: '29d - 11mo'
                    }, {

                        id: 3,
                        value: '12 - 59mo'
                    }, {
                        id: 4,
                        value: '5 - 19years'
                    }, {
                        id: 5,
                        value: '> 20years'
                    }
                ]
			}, {
				id: 8,
				head: 'Laboratory Investigations',
				value: 'Lab - Laboratory Investigations',
				filter: []
			}, {
				id: 9,
				head: 'Laboratory Test Cost',
				value: 'Total Laboratory Investigation Cost',
				filter: []
			}, {
				id: 10,
				head: '',
				value: 'Billing',
				filter: []
			}, {
				id: 11,
				head: 'Inpatient Admission',
				value: 'Inpatient Admissions',
				filter: [
					{
						id: '',
						value: 'All'
					}, {
						id: 1,
						value: '0~28 days'
					}, {
						id: 2,
						value: '29d to 11mo'
					}, {
						id: 3,
						value: '12 - 50mo'
					}, {
						id: 4,
						value: '5 - 19years'
					}, {
						id: 5,
						value: '> 20years'
					}
				]
			// }, {
			// 	id: 12,
			// 	value: 'Inpatient',
			// 	filter: []
			}, {
				id: 13,
				head: '',
				value: 'Pharmaceutical Service',
				filter: []
			}
		];
		$scope.reportFilter = [];
		$scope.reportData = {};

		$scope.selectedReportType = '';
		$scope.selectedReportFilter = '';
		$scope.selectedReport = '';
		$scope.selectedHeader = '';

		$scope.selectReport = function(reportId) {
			$rootScope.loader = "show";

			$scope.reportFilter = [];
			$scope.selectedReportFilter = '';

			angular.forEach($scope.reportList, function(Report) {
				if(Report.id == reportId) {
					$scope.selectedReport = Report.value;
					$scope.selectedHeader = Report.head;

					switch(reportId) {
						case '3':
							$scope.reportFilter = [{
								id: 0,
								value: 'All'
							}];

							GetHospitalPlans.get({
								token: $window.sessionStorage.token
							}, function(res) {
								if(res.status == true)
									$scope.reportFilter = $scope.reportFilter.concat(res.responseData);
							}, function(error) {
								$rootScope.loader = "hide";
								$('#internetError').modal('show');
								console.log(error);
							});
							break;
						case '4':
							$scope.reportFilter = [{
								id: 0,
								value: 'All'
							}];

							GetDepartmentSpeciality.get({
								token: $window.sessionStorage.token
							}, function(res) {
								if(res.status == true)
									$scope.reportFilter = $scope.reportFilter.concat(res.responseData);
							}, function(error) {
								$rootScope.loader = "hide";
								$('#internetError').modal('show');
								console.log(error);
							});
							break;
						case '8':
							$scope.reportFilter = [{
								id: 0,
								value: 'All'
							}];

							GetLaboratories.get({
								token: $window.sessionStorage.token
							}, function(res) {
								if(res.status == true)
									$scope.reportFilter = $scope.reportFilter.concat(res.responseData);
							}, function (error) {
								$rootScope.loader = "hide";
								$('#internetError').modal('show');
								console.log(error);
							});
							break;
						case '9':
							$scope.reportFilter = [{
								id: 0,
								value: 'All'
							}];

							GetLaboratories.get({
								token: $window.sessionStorage.token
							}, function(res) {
								if(res.status == true)
									$scope.reportFilter = $scope.reportFilter.concat(res.responseData);
							}, function (error) {
								$rootScope.loader = "hide";
								$('#internetError').modal('show');
								console.log(error);
							});
							break;
						default:
							$scope.reportFilter = Report.filter;
							break;
					}
				}
			});

			GetReportStatistics.get({
				token: $window.sessionStorage.token,
				from: $scope.startDate,
				to: $scope.endDate,
				type: $scope.selectedReportType,
				filter: $scope.selectedReportFilter
			}, GetReportStatisticsSuccess, GetReportStatisticsFailure);
		};

		function GetReportStatisticsSuccess(res) {
			if(res.status == true) {
				$scope.reportData = res.responseData;
			}
			$rootScope.loader = "hide";
		}

		function GetReportStatisticsFailure(error) {
			$rootScope.loader = "hide";
			$('#internetError').modal('show');
			console.log(error);
		}

		$scope.selectReportFilter = function() {
			$rootScope.loader = "show";
			GetReportStatistics.get({
				token: $window.sessionStorage.token,
				from: $scope.startDate,
				to: $scope.endDate,
				type: $scope.selectedReportType,
				filter: $scope.selectedReportFilter
			}, GetReportStatisticsSuccess, GetReportStatisticsFailure);
		};

		$scope.changeReportDate = function() {
			if($scope.selectedReportType) {
				$rootScope.loader = "show";
				GetReportStatistics.get({
					token: $window.sessionStorage.token,
					from: $scope.startDate,
					to: $scope.endDate,
					type: $scope.selectedReportType,
					filter: $scope.selectedReportFilter
				}, GetReportStatisticsSuccess, GetReportStatisticsFailure);
			}
		};

		$scope.generateReportPDF = function() {
			GenerateReportPDF.get({
				token: $window.sessionStorage.token,
				title: $scope.selectedReport,
				description: $scope.selectedHeader,
				startDate: $scope.startDate,
				endDate: $scope.endDate,
				data: JSON.stringify($scope.reportData)
			}, function(response) {
				if(response.status == true) {
					$('.showPdf').html("<iframe src="+response.data+"></iframe>");
				}
			}, function(error) {
				$('#internetError').modal('show');
				console.log(error);
			});
		};

		$scope.emailReport = function() {
			$rootScope.loader = "show";

			EmailReportPDF.post({
				token: $window.sessionStorage.token,
				title: $scope.selectedReport,
				description: $scope.selectedHeader,
				startDate: $scope.startDate,
				endDate: $scope.endDate,
				data: JSON.stringify($scope.reportData),
				email: $scope.email
			}, function(response) {
				$rootScope.loader = "hide";
				if(response.status == true) {
					console.log(response);
				}
			}, function(error) {
				$rootScope.loader = "hide";
				//$('#internetError').modal('show');
				console.log(error);
			});
		};
	}]);
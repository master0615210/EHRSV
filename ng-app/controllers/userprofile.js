var AppEHR = angular.module('AppEHR');
AppEHR.controller('userProfileController', ['$scope', '$rootScope', '$window', '$routeParams', '$timeout', 'GetUser', 'ChangeUserPassword', function($scope, $rootScope, $window, $routeParams, $timeout, GetUser, ChangeUserPassword){
    $rootScope.pageTitle = "EHR - User Profile";
    $rootScope.loader = "show";

    $scope.userId = $window.sessionStorage.getItem('source_id');
    $scope.message = {
        type: '',
        text: ''
    };

    GetUser.get({
        user_id: $scope.userId
    }, function(success) {
        $scope.userData = success.data;
        $rootScope.loader = "hide";
    }, function(error) {
        $('#internetError').modal('show');
        console.log(error);
    });

    $scope.showPWChangeField = false;

    $scope.changeUserPassword = function() {
        ChangeUserPassword.save({
            user_id: $scope.userId,
            password: $scope.newData.password,
            newPassword: $scope.newData.newPassword
        }, function(success) {
            if(success.status) {
                $scope.message = {
                    type: 'alert-success',
                    text: 'You changed your password succesfully!'
                };
            } else {
                $scope.message = {
                    type: 'alert-danger',
                    text: success.message
                };
            }
        }, function(error) {
            $('#internetError').modal('show');
            console.log(error);
        });
    }

    $scope.dismissAlert = function() {
        $scope.message = {
            type: '',
            text: ''
        };
    }
}]);
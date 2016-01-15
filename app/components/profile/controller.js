(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('ProfileController', ProfileController);

    ProfileController.$inject = ['$scope', '$http'];
    function ProfileController($scope, $http) {
        $scope.firstName = "Peter";
        $scope.lastName = "Paski";
        $scope.email = "example@mail.com";
        $scope.emailShow = 0;
        $scope.dateFormat = "";
        $scope.timeFormat = "";
        $scope.firstDayOfTheWeek = 'monday';

        init();

        function init() {
            var data = JSON.stringify({id: 1});

            $http.post("../api/user/get.php", data)
                .success(function(response) {
                    $scope.firstName = response[0]['firstName'];
                    $scope.lastName = response[0]['lastName'];
                    $scope.email = response[0]['email'];
                    $scope.emailShow = response[0]['emailShow'];
                    $scope.dateFormat = response[0]['dateFormat'];
                    $scope.timeFormat = response[0]['timeFormat'];
                    $scope.firstDayOfTheWeek = response[0]['firstDayOfTheWeek'];
                });
        }
    }

})();



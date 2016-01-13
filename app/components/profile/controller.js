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

        init();

        function init() {
            $http.get("../api/user/get.php?id=1")
                .success(function(response) {
                    $scope.firstName = response[0]['firstName'];
                    $scope.lastName = response[0]['lastName'];
                    $scope.email = response[0]['email'];
                });
        }
    }

})();



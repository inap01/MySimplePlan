(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('HomeController', HomeController);

    HomeController.$inject = ['$scope', '$http'];
    function HomeController($scope, $http) {
        $scope.test = "test";

        init();

        function init() {
        }
    }

})();



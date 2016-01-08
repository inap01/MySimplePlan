(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('HomeController', HomeController);

    HomeController.$inject = ['$scope', '$http'];
    function HomeController($scope, $http) {



        $scope.increment = function(){

            $scope.calorie_now = $scope.calorie_now + 100;
            $scope.calorie_percent = ($scope.calorie_now * 100) / $scope.calorie_max;
            $scope.calorie_open = $scope.calorie_max - $scope.calorie_now;

            if($scope.calorie_open < 0)
            {
                $scope.calorie_style = {color:'red'}
            }
        }

        $('[data-toggle="tooltip"]').tooltip()
        init();

        function init() {

            $scope.calorie_style = {};
            $scope.calorie_max = 3800;
            $scope.calorie_now = 1200;
            $scope.calorie_open = $scope.calorie_max - $scope.calorie_now;
            $scope.calorie_percent = ($scope.calorie_now * 100) / $scope.calorie_max;

        }
    }

})();




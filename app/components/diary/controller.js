(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('DiaryController', DiaryController);

    DiaryController.$inject = ['$scope', '$http'];
    function DiaryController($scope, $http) {
        $scope.date = new Date();
        $scope.breakfast = {};
        $scope.lunch = $scope.breakfast;
        $scope.dinner = $scope.breakfast;
        $scope.calories = {};

        init();

        function init() {
            getBreakfast();

            calcCalories();
        }

        function getBreakfast() {
            var data = JSON.stringify({
                id: 1,
                meal: 'breakfast'
            });

            $http.post("../api/diary/get.php", data)
                .success(function(response) {
                    $scope.breakfast = response;
                });
        }

        function calcCalories() {
            $scope.calories.breakfast = 0;
            $scope.calories.lunch = 0;
            $scope.calories.dinner = 0;

            angular.forEach($scope.breakfast, function(item) {
                $scope.calories.breakfast += item.calories;
            });
            angular.forEach($scope.lunch, function(item) {
                $scope.calories.lunch += item.calories;
            });
            angular.forEach($scope.dinner, function(item) {
                $scope.calories.dinner += item.calories;
            });
        }

        $scope.datePrev = function() {
            $scope.date.setDate($scope.date.getDate()-1);
        }
        $scope.dateNow = function() {
            $scope.date = new Date();
        }
        $scope.dateNext = function() {
            $scope.date.setDate($scope.date.getDate()+1);
        }
    }
})();
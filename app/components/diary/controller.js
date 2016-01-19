(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('DiaryController', DiaryController);

    DiaryController.$inject = ['$scope', '$http'];
    function DiaryController($scope, $http) {
        $scope.date = new Date();
        $scope.breakfast = {};
        $scope.lunch = {};
        $scope.dinner = {};
        $scope.calories = {breakfast:0, lunch: 0, dinner: 0};

        init();

        function init() {
            getBreakfast();
        }

        function getBreakfast() {
            var data = JSON.stringify({
                id: 1,
                meal: 'breakfast'
            });

            $http.post("../api/diary/get.php", data)
                .success(function(response) {
                    $scope.breakfast = response;
                    calcCaloriesBreakfast();
                });
        }
        function getLunch() {
            var data = JSON.stringify({
                id: 1,
                meal: 'lunch'
            });

            $http.post("../api/diary/get.php", data)
                .success(function(response) {
                    $scope.breakfast = response;
                    calcCaloriesLunch();
                });
        }
        function getDinner() {
            var data = JSON.stringify({
                id: 1,
                meal: 'dinner'
            });

            $http.post("../api/diary/get.php", data)
                .success(function(response) {
                    $scope.breakfast = response;
                    calcCaloriesDinner();
                });
        }

        function calcCaloriesBreakfast() {
            $scope.calories.breakfast = 0;

            angular.forEach($scope.breakfast, function(item) {
                $scope.calories.breakfast += parseInt(item.calories);
            });
        }
        function calcCaloriesLunch() {
            $scope.calories.lunch = 0;

            angular.forEach($scope.lunch, function(item) {
                $scope.calories.lunch += parseInt(item.calories);
            });
        }
        function calcCaloriesDinner() {
            $scope.calories.dinner = 0;

            angular.forEach($scope.dinner, function(item) {
                $scope.calories.dinner += parseInt(item.calories);
            });
        }

        $scope.datePrev = function() {
            $scope.date.setDate($scope.date.getDate()-1);
        };
        $scope.dateNow = function() {
            $scope.date = new Date();
        };
        $scope.dateNext = function() {
            $scope.date.setDate($scope.date.getDate()+1);
        };
    }
})();
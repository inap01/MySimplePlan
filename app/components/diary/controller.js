(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('DiaryController', DiaryController);

    DiaryController.$inject = ['$scope', '$http'];
    function DiaryController($scope, $http) {
        $scope.breakfast = [
            {name:'Haferflocken', value: '200g', calories: 100},
            {name:'Milch', value: '500ml', calories: 120},
            {name:'Banane', value: '1 Stück', calories: 96}
        ];

        init();

        function init() {

        }
    }

})();
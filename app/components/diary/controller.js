(function () {
    'use strict';

    angular
        .module('mySimplePlan')
        .controller('DiaryController', DiaryController);

    DiaryController.$inject = ['$scope', '$http'];
    function DiaryController($scope, $http) {

        init();

        function init() {

        }
    }

})();
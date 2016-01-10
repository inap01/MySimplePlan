(function() {

    angular.module('mySimplePlan', ['ngRoute']);

    angular.module('mySimplePlan').config(function($routeProvider) {
        $routeProvider
            .when('/', {
                controller: 'HomeController',
                templateUrl: 'components/home/index.html'
            })
            .when('/goals', {
                controller: 'GoalController',
                templateUrl: 'components/goals/index.html'
            })
            .when('/diary', {
                controller: 'DiaryController',
                templateUrl: 'components/diary/index.html'
            })
            .otherwise({ redirectTo: '/' });
    });

}());
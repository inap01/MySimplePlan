(function() {

    angular.module('mySimplePlan', ['ngRoute']);

    angular.module('mySimplePlan').config(function($routeProvider) {
        $routeProvider
            .when('/', {
                controller: 'HomeController',
                templateUrl: 'components/home/index.html'
            })
            .otherwise({ redirectTo: '/' });
    });

}());
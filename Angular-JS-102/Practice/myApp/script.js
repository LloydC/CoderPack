(function(angular) {

// declare a module
var myAppModule = angular.module('myApp', []);

// configure the module.
// in this example we will create a greeting filter
myAppModule.filter('greet', function() {
 return function() {
    return 'Hello World!';
  };
});
})(window.angular);
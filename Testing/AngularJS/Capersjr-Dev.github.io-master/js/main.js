// Main Application Code
var helloWorldApp = angular.module("HelloWorldApp",[]);

helloWorldApp.controller("HelloWorldController", ["$scope", function($scope) {
	$scope.languages = [
		{code: "eng", label: "English", text: "Hello World"},
		{code: "spa", label: "Spanish", text: "¡Hola Mundo!"},
		{code: "fre", label: "French", text: "Bonjour le monde!"},
		{code: "ger", label: "German", text: "Hallo Welt!"},
		{code: "hin", label: "Hindi",  text: "हैलो वर्ल्ड!"}
	];

	$scope.selectedLanguage = $scope.languages[0];

}]);

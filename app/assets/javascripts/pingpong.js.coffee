"use strict"

# add modules defined in other filters to this array:
dependencies = [
  "pingPongDirectives",
  "pingPongServices",
  "pingPongControllers"
]

# # set up the main app:
angular
  .module("pingPongApp", ["ngRoute", "angularMoment"].concat(dependencies))
  .config ($routeProvider) ->
    $routeProvider
      .when("/", templateUrl: "partials/players.html")
      .when("/dashboard", templateUrl: "partials/dashboard.html")
      .when("/play/:user1/:user2", templateUrl: "partials/game.html")
      .otherwise(redirectTo: "/")

# set up dependencies as modules:
for dependency in dependencies
  angular.module(dependency, ["ngResource"])


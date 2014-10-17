class DashboardCtrl
  constructor: (@$scope, @Game) ->
    @game = @Game.randomRecent()

angular.module("pingPongControllers").controller("DashboardCtrl",
  ["$scope", "Game", DashboardCtrl])

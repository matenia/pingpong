class Game
  constructor: (@$resource) ->
    return $resource('/games/:id')

angular.module("pingPongServices")
  .service("Game", ["$resource", Game])


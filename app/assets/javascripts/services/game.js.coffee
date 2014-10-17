class Game
  constructor: (@$resource) ->
    return $resource('/games/:id', {}, {
      randomRecent: { method: "get", url: "/games/random_recent" } })

angular.module("pingPongServices")
  .service("Game", ["$resource", Game])


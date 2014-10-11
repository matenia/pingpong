class User
  constructor: (@$resource) ->
    return $resource('/users/:id')

angular.module("pingPongServices")
  .service("User", ["$resource", User])


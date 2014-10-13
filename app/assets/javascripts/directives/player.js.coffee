angular.module("pingPongDirectives").directive "player", ($parse) ->
  restrict: "E",
  scope: { player: "=" }
  templateUrl: "/partials/player.html"

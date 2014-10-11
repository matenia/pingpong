class PlayersCtrl
  constructor: (@$scope, @User) ->
    @all = @User.query()
    @players = []

  isSelected: (player) ->
    @players.indexOf(player) >= 0

  select: (player) ->
    @players.push(player)
    @players.shift() if @players.length > 2
    @gameReady = (@players.length == 2)

  startGame: ->
    

angular.module("pingPongControllers")
  .controller("PlayersCtrl", ["$scope", "User", PlayersCtrl])

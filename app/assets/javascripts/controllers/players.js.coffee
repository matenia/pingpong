class PlayersCtrl
  constructor: (@$scope, @$location, @User) ->
    @all = @User.query()
    @players = []

  isSelected: (player) ->
    @players.indexOf(player) >= 0

  select: (player) ->
    if @players.indexOf(player) >= 0
      existing = @players.indexOf(player)
      @players.splice(existing, 1)
    else
      @players.push(player)

    @players.shift() if @players.length > 2
    @gameReady = (@players.length == 2)

  startGame: ->
    @$location.path("/play/#{@players[0].id}/#{@players[1].id}")

angular.module("pingPongControllers")
  .controller("PlayersCtrl", ["$scope", "$location", "User", PlayersCtrl])

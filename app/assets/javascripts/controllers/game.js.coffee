class GameCtrl
  constructor: (@$scope, $routeParams, @$location, @User, @Game) ->
    @game = new @Game(players: [])
    @game.players.push(score: 0, user: @User.get(id: $routeParams.user1))
    @game.players.push(score: 0, user: @User.get(id: $routeParams.user2))

  highestScore: ->
    Math.max(@game.players[0].score, @game.players[1].score)

  isGameOver: ->
    diff = Math.abs(@game.players[0].score - @game.players[1].score)
    max = @highestScore()
    (max == 21 && diff > 2) || (max > 21 && diff == 2)

  trackGame: ->
    @game.$save()

  trackPoint: (player) ->
    if player == 0 || player == 1
      @game.players[player].score += 1

    if @isGameOver()
      @gameOver = true
      @trackGame()

  finishGame: ->
    @$location.path("/")

  winner: ->
    highest = @highestScore()
    if @game.players[0].score == highest
      @game.players[0].user
    else if @game.players[1].score == highest
      @game.players[1].user

angular.module("pingPongControllers").controller("GameCtrl",
  ["$scope", "$routeParams", "$location", "User", "Game", GameCtrl])

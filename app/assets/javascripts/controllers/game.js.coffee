class PlayCtrl
  constructor: (@$scope, $routeParams, @$location, @User, @Game) ->
    user1 = User.get(id: $routeParams.user1)
    user2 = User.get(id: $routeParams.user2)
    @users = [user1, user2]
    @scores = [0, 0]

  highestScore: ->
    Math.max.apply(null, @scores)

  isGameOver: ->
    diff = Math.abs(@scores[0] - @scores[1])
    max = @highestScore()
    (max == 21 && diff > 2) || (max > 21 && diff == 2)

  trackGame: ->
    game = new @Game()
    game.scores = {}
    game.scores[@users[0].id] = @scores[0]
    game.scores[@users[1].id] = @scores[1]
    game.$save()

  trackPoint: (user) ->
    if user == 0 || user == 1
      @scores[user] += 1

    if @isGameOver()
      @gameOver = true
      @trackGame()

  finishGame: ->
    @$location.path("/")

  winner: ->
    player = @scores.indexOf(@highestScore())
    @users[player]



angular.module("pingPongControllers").controller("PlayCtrl",
  ["$scope", "$routeParams", "$location", "User", "Game", PlayCtrl])

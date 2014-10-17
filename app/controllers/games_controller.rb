class GamesController < ApplicationController
  def create
    render json: CreateGame.new(params[:players]).call
  end

  def random_recent
    render json: Game.last(10).sample
  end
end

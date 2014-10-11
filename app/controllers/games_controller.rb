class GamesController < ApplicationController
  def create
    render json: CreateGame.new(params[:scores]).call
  end
end

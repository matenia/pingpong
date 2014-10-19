class UsersController < ApplicationController
  def index
    render json: User.all.order(:name)
  end

  def show
    render json: User.find(params[:id])
  end
end

class GamesController < ApplicationController
  before_action :set_game,only: [:show,:update]
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @index
  end

  def create 
    @game = Game.new
  end
  def show
    render json: @show
  end
  
  def updated
    render json: @show
  end
  private

  def set_game
    @game = Game.find(params[:id])
  end
    
end

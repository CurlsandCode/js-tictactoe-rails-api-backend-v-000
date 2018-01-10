class GamesController < ApplicationController
  before_action :set_game,only: [:show,:update]
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @index
  end

  def create 
    @game = Game.new
    @game.save
    render json: @new
  end
  def show
    render json: @show
  end
  
  def update
    render json: @show
  end
  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
    
end

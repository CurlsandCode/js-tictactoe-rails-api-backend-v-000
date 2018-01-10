class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
  end

  def create 
    @game = Game.new
  end
  def show
  end
  
  def updated
  end
  private

  def set_game
    @game = Game.find(params[:id])
  end
    
end

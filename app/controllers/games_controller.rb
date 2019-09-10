class GamesController < ApplicationController

  def index
    @games = Game.available
  end

  def new
     @game = Game.new
  end


  def show
  end

  def create
    @game = Game.create(game_params)
    if game.valid?
      redirect_to game_path(@game)
    end
  end

  def update
    @game = Game.find(parmas[:id])

      if current_user && @game.black == nil
        @game.update_attributes(:black, current_user.id)
      end
  end  
   
  
 

  private
  
  def game_params
      params.require(:game).permit(:board_state, :white, :black)    
  end

  


  



end
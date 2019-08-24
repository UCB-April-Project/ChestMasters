class GamesController < ApplicationController

  def index
      
  end

  def new
     @games = Game.new
  end


  def show
  end

  def update
      if game.valid? 
        game.update_attributes matches_params
        game.assign_chess_pieces
        return redirect_to game_path game
      end

      render :new, status: unprocessable_entity 
  end  
   
  
  def game
      @matches ||= Matches.where(id: params[:id]).last
  end
  
  def matches_params
      params.require( :matches).permit(
        :board_state,
        :white,
        :black)    
  end


  def create
    @game =Game.create(game_params)
    redirect_to game_path(@game)
  end



end
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
<<<<<<< HEAD
    if game.valid?
=======

    if @game.valid?
>>>>>>> 2bfcade32dbd8670fe28dc859edab5e6de24d580
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

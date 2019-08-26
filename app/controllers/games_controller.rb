class GamesController < ApplicationController

  def index
    @games = Game.available
  end

  def new
    @game = Game.new
  end

  def create 
  end

end
class GamesController < ApplicationController


  def index

    @games = Game.available
  end

  def new
    @game = Game.new
  end

  def create 

  end

  def create
    @games = Game.new(games_params)

    respond_to do |format|
      if @games.save
        format.html { redirect_to @game, notice: 'game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end   
 end


     
 

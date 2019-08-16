class GamesController < ApplicationController

  def index
     @matches = Matches.all
  end

  def new
     @matches = Matches.new
  end

  # def board_state
  #  if matches.white < mathces.black 
  #     matches.board_state = matches.white       
  #  else matches.black
  # end  
     
 end


     
 

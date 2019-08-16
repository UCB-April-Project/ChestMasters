class GamesController < ApplicationController

  def index
     @matches = Matches.all
  end

  def new
     @matches = Matches.new
  end
 
     
 end


     
 

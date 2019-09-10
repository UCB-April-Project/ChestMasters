class UsersController < ApplicationController

  def index
    @game = Game.new(white: current_user.id)
  end

end

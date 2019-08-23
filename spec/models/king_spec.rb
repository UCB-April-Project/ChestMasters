require 'rails_helper'

RSpec.describe King, type: :model do
  describe "#valid move?" do
    it "should return true to move one square up" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(5, 4)).to eq(true)
    end

     it "should return true to move one square down" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(5, 6)).to eq(true)
    end

     it "should return true to move one square to the left" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(4, 5)).to eq(true)
    end

     it "should return true to move one square to the right" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(6, 5)).to eq(true)
    end


  end

end
require 'rails_helper'

RSpec.describe King, type: :model do
  describe "#valid move?" do
    it "should return true to move one square left" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(5, 4)).to eq(true)
    end

     it "should return true to move one square right" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(5, 6)).to eq(true)
    end

     it "should return true to move one square to the up" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(4, 5)).to eq(true)
    end

     it "should return true to move one square to the down" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(6, 5)).to eq(true)
    end

      it "should return true to move one square diagonally down to the right" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(6, 6)).to eq(true)
      end

      it "should return false to move two squares down" do
      game = Game.create
      king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
      expect(king.valid_move?(7, 5)).to eq(false)
    end


  end
end
require 'rails_helper'

RSpec.describe Rook, type: :model do
  describe "#valid_move?" do
    it "should return true to move up" do
      game = Game.create
      rook = FactoryBot.create :rook, x_pos: 5, y_pos: 5, game_id: game.id
      expect(rook.valid_move?(4, 5)).to eq(true)
    end

    it "should return true to move down" do
      game = Game.create
      rook = FactoryBot.create :rook, x_pos: 5, y_pos: 5, game_id: game.id
      expect(rook.valid_move?(7, 5)).to eq(true)
    end

    it "should return true to move left" do
      game = Game.create
      rook = FactoryBot.create :rook, x_pos: 5, y_pos: 5, game_id: game.id
      expect(rook.valid_move?(5, 3)).to eq(true)
    end

    it "should return true to move right" do
      game = Game.create
      rook = FactoryBot.create :rook, x_pos: 5, y_pos: 5, game_id: game.id
      expect(rook.valid_move?(5, 8)).to eq(true)
    end

    it "should return false to move diagonally" do
      game = Game.create
      rook = FactoryBot.create :rook, x_pos: 5, y_pos: 5, game_id: game.id
      expect(rook.valid_move?(7, 4)).to eq(false)
    end



  end
end

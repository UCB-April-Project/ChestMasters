require 'rails_helper'

RSpec.describe Queen, type: :model do
  describe "valid_move?" do
    it "should work for diagonals" do
      game = Game.create
      queen = FactoryBot.create :queen, x_pos: 5, y_pos: 5, game_id: game.id
      expect(queen.valid_move?(4, 4)).to eq(true)
      expect(queen.valid_move?(6, 6)).to eq(true)
      expect(queen.valid_move?(4, 6)).to eq(true)
      expect(queen.valid_move?(6, 4)).to eq(true)
    end

    it "should test vertical/horizontal" do
      game = Game.create
      queen = FactoryBot.create :queen, x_pos: 5, y_pos: 5, game_id: game.id
      expect(queen.valid_move?(4, 5)).to eq(true)
      expect(queen.valid_move?(6, 5)).to eq(true)
      expect(queen.valid_move?(5, 6)).to eq(true)
      expect(queen.valid_move?(5, 4)).to eq(true)
    end

    it "should return false for in valid moves" do
      game = Game.create
      queen = FactoryBot.create :queen, x_pos: 5, y_pos: 5, game_id: game.id
      expect(queen.valid_move?(7, 6)).to eq(false)
    end
    
    it "should return false for current location" do
      game = Game.create
      queen = FactoryBot.create :queen, x_pos: 5, y_pos: 5, game_id: game.id
      expect(queen.valid_move?(5, 5)).to eq(false)
    end
  end
end

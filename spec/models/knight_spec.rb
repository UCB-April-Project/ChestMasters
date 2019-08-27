require 'rails_helper'

RSpec.describe Knight, type: :model do
  describe "valid_move?" do
    it "should work for diagonals" do
      game = Game.create
      knight = FactoryBot.create :knight, x_pos: 5, y_pos: 5, game_id: game.id
      expect(knight.valid_move?(4, 7)).to eq(true)
      expect(knight.valid_move?(6, 7)).to eq(true)
      expect(knight.valid_move?(4, 3)).to eq(true)
      expect(knight.valid_move?(6, 3)).to eq(true)
      expect(knight.valid_move?(3, 4)).to eq(true)
      expect(knight.valid_move?(3, 6)).to eq(true)
      expect(knight.valid_move?(7, 4)).to eq(true)
      expect(knight.valid_move?(7, 6)).to eq(true)
    end

    it "should return false for in valid moves" do
      game = Game.create
      knight = FactoryBot.create :knight, x_pos: 5, y_pos: 5, game_id: game.id
      expect(knight.valid_move?(4, 5)).to eq(false)
    end

    it "should return false for current location" do
      game = Game.create
      knight = FactoryBot.create :knight, x_pos: 5, y_pos: 5, game_id: game.id
      expect(knight.valid_move?(5, 5)).to eq(false)
    end
  end
end

require 'rails_helper'

RSpec.describe Game, type: :model do

  describle "populate_game function" do
    it "should create 32 chess_pieces"
      game = FactoryBot.create(:game)
      expect(game.chess_pieces.count).to eq 32
    end

    it "should create the correct number of each piece type"
      game = FactoryBot.create(:game)
      expect(game.chess_pieces.where("type = 'Pawn'").count).to eq 16
      expect(game.chess_pieces.where("type = 'Rook'").count).to eq 4
      expect(game.chess_pieces.where("type = 'Knight'").count).to eq 4
      expect(game.chess_pieces.where("type = 'Bishop'").count).to eq 4
      expect(game.chess_pieces.where("type = 'Queen'").count).to eq 2
      expect(game.chess_pieces.where("type = 'King'").count).to eq 2
    end

    it "should create 16 pieces on each team"
      game = FactoryBot.create(:game)
      expect(game.chess_pieces.where("color = 'black'").count).to eq 16
      expect(game.chess_pieces.where("color = 'white'").count).to eq 16
    end
  end
end

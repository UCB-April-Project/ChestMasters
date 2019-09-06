require 'rails_helper'

RSpec.describe ChessPiecesController, type: :controller do


    describe "chess_pieces#update" do
        it "should successfully update chess piece location" do
            game = Game.create
            king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id, color: 'black'
            patch :update, params: { game_id: game.id, id: king.id, x_pos: 6, y_pos: 6}
            king.reload
            expect(king.x_pos).to eq 6
            expect(king.y_pos).to eq 6
        end
    end

    describe "chess_pieces#destroy" do
        it "should be able to destroy piece when captured" do
            game = Game.create
            king = FactoryBot.create :king, x_pos: 5, y_pos: 5, game_id: game.id
            delete :destroy, params: { id: king.id, game_id: game.id }
            king = ChessPiece.find_by_id(king.id)
            expect(king).to eq nil
        end
    end
end

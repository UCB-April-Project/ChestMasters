require 'rails_helper'

RSpec.describe ChessPiecesController, type: :controller do
    describe "chess_pieces#show" do
        it "should return a json rendering of valid moves" do
            piece = FactoryBot.create(:chess_pieces)
            @expected = {
                (4,4)
                (5,4)
                (6,4)
                (4,5)
                (6,5)
                (4,6)
                (5,6)
                (6,6)
            }.to_json
            get :show, params: { id: piece.id }
            response.body.should == @expeceted
        end
    end

    describe "chess_pieces#update" do
        it "should successfully update chess piece location" do
            piece = FactoryBot.create(:chess_pieces)
            patch :update, params: {id: piece.id, x_pos: 6, y_pos: 6}
            expect(response).to have_http_status(:ok)
            piece.reload
            expect(piece.x_pos).to eq 6
            expect(piece.y_pos).to eq 6
        end
    end

    describe "chess_pieces#destroy" do
        it "should be able to destroy piece when captured" do
            piece = FactoryBot.create(:chess_pieces)
            delete :destroy, params: { id: piece.id }
            piece = ChessPiece.find_by_id(piece.id)
            expect(piece).to eq nil
        end
    end
end

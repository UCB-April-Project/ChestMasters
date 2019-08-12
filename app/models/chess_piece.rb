class ChessPiece < ApplicationRecord
    belongs_to :game



    def is_obstructed?(x, y)
        chess_pieces.where(x_pos: x, y_pos: y).last
    end

end

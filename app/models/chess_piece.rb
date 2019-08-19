class ChessPiece < ApplicationRecord
    belongs_to :game

    def vert_obstructed?(x, y)

    end

    def horz_obstructed?(x, y)
        

    end

    def diag_obstructed?(x, y)

    end

    def is_obstructed?(x, y)
        chess_pieces.where(x_pos: x, y_pos: y).last
    end

end




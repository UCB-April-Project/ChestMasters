class ChessPiece < ApplicationRecord
    belongs_to :game

    def is_obstructed?(x, y)
        game.chess_piece.where("x_pos = ? and y_pos = ?", x, y).present?
    end

    def vert_obstructed?(x, y)
        sx = x_pos
        sy = y_pos

        if y =! sy && x === sx
            y_move = (y <=> sy)
            sy += y_move
        end
        return true if is_obstructed?(x, y_move)
    end

    def horz_obstructed?(x, y) 
        sx = x_pos
        sy = y_pos       

        if x =! sx && y === sy
            x_move = (x <=> sx)
            sx += x_move
        end
        return true if is_obstructed?(x_move, y)
    end

    def diag_obstructed?(x, y)

    end

    

end




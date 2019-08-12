class ChessPiece < ApplicationRecord
    belongs_to :game

    def is_obstructed?(x, y)
       game.chess_piece.where("x_pos = ? and y_pos = ?", x, y).present?
    end

    def vert_obstructed?(x, y)
        sx = x_pos
        sy = y_pos

        while y =! sy && x === sx
            y_move = (y <=> sy)
            sy += y_move
            return true if is_obstructed?(x, y_move)
        end
        false
    end

    def horz_obstructed?(x, y) 
        sx = x_pos
        sy = y_pos       

        while x =! sx && y === sy
            x_move = (x <=> sx)
            sx += x_move
            return true if is_obstructed?(x_move, y)
        end
        false
    end

    def diag_obstructed?(x, y)
        x_spot = x_pos < x ? 1 : -1
        y_spot = y_pos < y ? 1 : -1

        sx = x_pos + x_spot
        sy = y_pos + y_spot

        while sx =! x && sy =! y
            sx += x_spot
            sy += y_spot
            return true if is_obstructed?(sx, sy)
        end
        false
    end
    

end




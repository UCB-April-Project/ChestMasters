class Queen < ChessPiece

    #possible future functions
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

    def valid_move?(x_move, y_move)

        if (x_move == x_pos) && (y_move == y_pos)
            return false
        end

        slope = 0
        if (x_move != x_pos) && (y_move != y_pos)
        #find slope of line between goal and current location
            slope = ((y_move - y_pos)/(x_move - x_pos)).abs
        else
        #valid move if slope is 1 or -1
        #also valid if x or y is 0
        return ((slope == 1) || (x_move == x_pos) || (y_move == y_pos))
        end
    end
end

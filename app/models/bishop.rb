class Bishop < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

    def valid_move?(x_move, y_move)

        if (x_move == x_pos && y_move == y_pos)
            return false
        end

        #find slope of line between goal and current location
        slope = ((y_move - y_pos)/(x_move - x_pos)).abs

        #valid move if slope is 1 or -1
        (slope == 1)
    end

end
class Bishop < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

    def valid_move?(x_move, y_move)

        if (x_move == 0 || y_move == 0)
            return false
        end

        #find slope of line between goal and current location
        slope = (y_move - y_pos)/(x_move - x_pos)

        #valid move if slope is 1 or -1
        return (slope.abs == 1)
    end

end
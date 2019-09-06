class Knight < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

    def valid_move?(x_move, y_move)

        #find move distances
        y_change = (y_move - y_pos).abs
        x_change = (x_move - x_pos).abs

        #valid move if over 2 up 1 or the reverse
       return ((y_change == 2 && x_change == 1)||(y_change == 1 && x_change == 2))
    end

end

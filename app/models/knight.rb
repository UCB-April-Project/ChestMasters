class Knight < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

    def valid_move?(x_move, y_move)

        #find move distances 
        y_change = y_move - y_pos
        x_change = x_move - x_pos

        #valid move if over 2 up 1 or the reverse
        return ((y.change.abs == 2 && x_change.abs == 1)||(y.change.abs == 1 && x_change.abs == 2))
    end

end
class King < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured

   def valid_move?(new_x_pos, new_y_pos)

    # x_move or y_move is equal to the number of square the king moved from the current position.should only be equal 1 or -1
    x_move = new_x_pos - x_pos
    y_move = new_y_pos - y_pos



    (x_move == 1 && y_move == 0) ||
    (x_move == -1 && y_move == 0) ||
    (y_move == 1 && x_move == 0) ||
    (y_move == -1 && x_move == 0) ||
    (y_move == 1 && y_move == x_move) 


    


  end
end
class Rook < ChessPiece

    #possible future functions
    
    #move(coordinates): moves piece to a given location on board
    #destroy(): for when a piece is captured
    def valid_move?(new_x_pos, new_y_pos)
      x_move = (new_x_pos - x_pos).abs
      y_move = (new_y_pos - y_pos).abs

      (x_move >= 1 && y_move == 0) ||
      (y_move >= 1 && x_move == 0)
 
  end
end
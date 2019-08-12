class AddColumnToChessPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :x_pos, :integer
    add_column :chess_pieces, :y_pos, :integer 
  end
end

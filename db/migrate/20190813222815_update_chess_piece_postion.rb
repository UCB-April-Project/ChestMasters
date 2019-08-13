class UpdateChessPiecePostion < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :x_pos, :integer
    add_column :chess_pieces, :y_pos, :integer
    remove_column :chess_pieces, :position

  end
end

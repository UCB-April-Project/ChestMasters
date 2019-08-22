class UpdateChessPiecePostion < ActiveRecord::Migration[5.2]
  def change
    remove_column :chess_pieces, :position
  end
end

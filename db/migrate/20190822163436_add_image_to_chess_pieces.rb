class AddImageToChessPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :image, :string
  end
end

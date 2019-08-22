class AddColorToPiece < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :color, :string
  end
end

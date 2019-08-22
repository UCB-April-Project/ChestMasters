class AddGameIdToPiece < ActiveRecord::Migration[5.2]
  def change
    add_column :chess_pieces, :game_id, :integer
  end
end

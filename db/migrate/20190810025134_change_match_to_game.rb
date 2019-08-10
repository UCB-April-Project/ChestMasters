class ChangeMatchToGame < ActiveRecord::Migration[5.2]
  def change
    rename_table :matches, :games
  end
end

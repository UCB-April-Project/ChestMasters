class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer "black"
      t.integer "white"
      t.text "board_state"
      t.integer "winner"
      t.timestamps
      t.timestamp "finish_time"
    end
  end
end

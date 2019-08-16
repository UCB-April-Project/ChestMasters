class CreateBoardStates < ActiveRecord::Migration[5.2]
  def change
    create_table :board_states do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end

class AddUserIdToBoardState < ActiveRecord::Migration[5.2]
  def change
    add_column :board_states, :user_id, :integer
  end
end

class RemoveUserIdFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :children,  :users
    remove_index :children, :user_id
    remove_reference :children, :user
  end
end

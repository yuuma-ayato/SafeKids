class RemoveUserIdFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :parents,  :users
    remove_index :parents, :user_id
    remove_reference :parents, :user
  end
end

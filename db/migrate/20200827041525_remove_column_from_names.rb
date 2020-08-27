class RemoveColumnFromNames < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :names,  :users
    remove_index :names, :user_id
    remove_reference :names, :user
  end
end

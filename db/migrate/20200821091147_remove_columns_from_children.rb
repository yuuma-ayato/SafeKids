class RemoveColumnsFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :children,  :users
    remove_index :children, :user_id
    remove_reference :children, :user
    remove_foreign_key  :children, :people
    remove_index :children, :person_id
    remove_reference :children, :person
  end
end

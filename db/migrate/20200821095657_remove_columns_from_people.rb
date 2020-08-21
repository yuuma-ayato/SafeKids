class RemoveColumnsFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :people,  :children
    remove_index :people, :parent_id
    remove_reference :people, :parent
  end
end

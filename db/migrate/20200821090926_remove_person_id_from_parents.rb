class RemovePersonIdFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :parents, :people
    remove_index :parents, :person_id
    remove_reference :parents, :person
  end
end

class RemoveColumnsFromPeople2 < ActiveRecord::Migration[5.2]
  def change
    remove_index :people, :child_id
    remove_reference :people, :child
    remove_foreign_key  :people,  :contact_informations
    remove_index :people, :contact_information_id
    remove_reference :people, :contact_information
  end
end

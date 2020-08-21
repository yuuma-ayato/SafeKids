class RemoveColumnsFromContactInformations < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  :contact_informations,  :users
    remove_index :contact_informations, :user_id
    remove_reference :contact_informations, :user
    remove_foreign_key  :contact_informations, :people
    remove_index :contact_informations, :person_id
    remove_reference :contact_informations, :person
  end
end

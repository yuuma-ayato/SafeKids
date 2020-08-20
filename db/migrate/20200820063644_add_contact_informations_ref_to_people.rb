class AddContactInformationsRefToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :contact_information, foreign_key: true
  end
end

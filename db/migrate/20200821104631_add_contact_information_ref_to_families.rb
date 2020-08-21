class AddContactInformationRefToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_reference :families, :contact_information, foreign_key: true
  end
end

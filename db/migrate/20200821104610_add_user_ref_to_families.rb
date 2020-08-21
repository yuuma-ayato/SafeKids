class AddUserRefToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_reference :families, :user, foreign_key: true
  end
end

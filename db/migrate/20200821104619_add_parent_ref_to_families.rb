class AddParentRefToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_reference :families, :parent, foreign_key: true
  end
end

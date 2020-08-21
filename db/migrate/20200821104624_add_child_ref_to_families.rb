class AddChildRefToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_reference :families, :child, foreign_key: true
  end
end

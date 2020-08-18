class CreateContactInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_informations do |t|
      t.integer :relation
      t.string :other_relation
      t.string :phone_number

      t.timestamps
    end
  end
end

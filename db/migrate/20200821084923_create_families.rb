class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.bigint :user_id
      t.bigint :parent_id
      t.bigint :child_id
      t.bigint :contact_information_id

      t.timestamps
    end
  end
end

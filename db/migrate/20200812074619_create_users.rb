class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name, null:false, limit: 255
      t.string :first_name, null:false, limit: 255
      t.string :family_name_kana, null:false, limit: 255
      t.string :first_name_kana, null:false, limit: 255
      t.string :email, null:false, limit: 255
      t.string :password_digest
      t.integer :type, null:false, default: 0
      t.boolean :admin, null:false, default: false

      t.timestamps
    end
  end
end

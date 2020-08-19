class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :family_name, null:false, limit: 255
      t.string :first_name, null:false, limit: 255
      t.string :family_name_kana, null:false, limit: 255
      t.string :first_name_kana, null:false, limit: 255

      t.timestamps
    end
  end
end

class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :gender, null:false
      t.string :other_gender, limit: 255
      t.date :birth, null:false
      t.string :image

      t.timestamps
    end
  end
end

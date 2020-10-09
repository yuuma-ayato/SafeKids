# frozen_string_literal: true

class CreateDaycares < ActiveRecord::Migration[5.2]
  def change
    create_table :daycares do |t|
      t.string :name, null: false, limit: 255
      t.string :phone_number, null: false, limit: 11
      t.string :postal_code, null: false, limit: 7
      t.string :prefecture, null: false, limit: 255
      t.string :city, null: false, limit: 255
      t.string :adress, null: false, limit: 255
      t.string :building, limit: 255
      t.integer :capacity, null: false

      t.timestamps
    end
  end
end

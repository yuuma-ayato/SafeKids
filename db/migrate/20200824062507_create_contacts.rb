# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string 'relation', limit: 255, null: false
      t.string 'phone_number', limit: 11, null: false
      t.string 'postal_code', limit: 7, null: false
      t.string 'prefecture', limit: 255, null: false
      t.string 'city', limit: 255, null: false
      t.string 'adress', limit: 255, null: false
      t.string 'building', limit: 255
      t.string 'image'
      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string 'family_name', limit: 255, null: false
      t.string 'first_name', limit: 255, null: false
      t.string 'family_name_kana', limit: 255, null: false
      t.string 'first_name_kana', limit: 255, null: false

      t.timestamps
    end
  end
end

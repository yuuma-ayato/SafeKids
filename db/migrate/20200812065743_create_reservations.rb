# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :date, null: false
      t.integer :reason, null: false
      t.string :other_reason, limit: 255
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end

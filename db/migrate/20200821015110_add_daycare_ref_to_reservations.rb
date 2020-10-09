# frozen_string_literal: true

class AddDaycareRefToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :daycare, foreign_key: true
  end
end

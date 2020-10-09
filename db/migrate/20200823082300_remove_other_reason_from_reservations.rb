# frozen_string_literal: true

class RemoveOtherReasonFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :other_reason
  end
end

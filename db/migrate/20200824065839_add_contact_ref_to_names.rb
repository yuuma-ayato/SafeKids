# frozen_string_literal: true

class AddContactRefToNames < ActiveRecord::Migration[5.2]
  def change
    add_reference :names, :contact, foreign_key: true
  end
end

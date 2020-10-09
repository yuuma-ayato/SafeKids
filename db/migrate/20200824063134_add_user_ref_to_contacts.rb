# frozen_string_literal: true

class AddUserRefToContacts < ActiveRecord::Migration[5.2]
  def change
    add_reference :contacts, :user, foreign_key: true
  end
end

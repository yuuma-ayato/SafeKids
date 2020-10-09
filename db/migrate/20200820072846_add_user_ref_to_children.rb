# frozen_string_literal: true

class AddUserRefToChildren < ActiveRecord::Migration[5.2]
  def change
    add_reference :children, :user, foreign_key: true
  end
end

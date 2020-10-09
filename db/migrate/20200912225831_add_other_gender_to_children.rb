# frozen_string_literal: true

class AddOtherGenderToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :other_gender, :string, null: false, default: 1, limit: 255
    change_column_default :children, :other_gender, nil
  end
end

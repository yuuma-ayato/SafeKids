# frozen_string_literal: true

class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :children, :other_gender, true
  end
end

# frozen_string_literal: true

class ChangeDataRelationToContact < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :relation, :integer, using: 'relation::integer'
  end
end

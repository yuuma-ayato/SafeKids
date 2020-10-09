# frozen_string_literal: true

class AddOtherRelationToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :other_relation, :string, limit: 255
  end
end

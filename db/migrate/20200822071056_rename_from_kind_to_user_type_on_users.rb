# frozen_string_literal: true

class RenameFromKindToUserTypeOnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :kind, :user_type
  end
end

class RenameFromTypeToKindOnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :type, :kind
  end
end
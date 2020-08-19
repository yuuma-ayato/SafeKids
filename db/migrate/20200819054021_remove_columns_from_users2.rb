class RemoveColumnsFromUsers2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :family_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :family_name_kana, :string
    remove_column :users, :first_name_kana, :string
  end
end

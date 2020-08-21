class RemoveColumnsFromFamilies < ActiveRecord::Migration[5.2]
  def change
    remove_column :families, :user_id, :bigint
    remove_column :families, :parent_id, :bigint
    remove_column :families, :child_id, :bigint
    remove_column :families, :contact_information_id, :bigint
  end
end

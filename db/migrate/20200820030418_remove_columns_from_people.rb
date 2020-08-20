class RemoveColumnsFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :personable_type, :string
    remove_column :people, :personable_id, :bigint
  end
end

class RemoveOtherGenderFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_column :children, :other_gender
  end
end

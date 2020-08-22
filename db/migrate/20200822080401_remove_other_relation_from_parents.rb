class RemoveOtherRelationFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :other_relation
  end
end

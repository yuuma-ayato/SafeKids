class AddParentRefToChildren < ActiveRecord::Migration[5.2]
  def change
    add_reference :children, :parent, foreign_key: true
  end
end

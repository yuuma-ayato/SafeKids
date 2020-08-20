class AddParentRefToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :parent, foreign_key: true
  end
end

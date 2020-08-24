class AddParentRefToNames < ActiveRecord::Migration[5.2]
  def change
    add_reference :names, :parent, foreign_key: true
  end
end

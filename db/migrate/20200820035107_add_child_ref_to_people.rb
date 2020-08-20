class AddChildRefToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :child, foreign_key: true
  end
end

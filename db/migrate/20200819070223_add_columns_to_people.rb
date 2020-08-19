class AddColumnsToPeople < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :personable, polymorphic: true, index: true
  end
end

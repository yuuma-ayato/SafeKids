class AddChildNameToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :child_name, :string, null:false, default: 1, limit: 255
    change_column_default :reservations, :child_name, nil
  end
end

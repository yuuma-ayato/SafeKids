class AddDaycareToUseToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :daycare_to_use, :string, null:false, default: 1
    change_column_default :reservations, :daycare_to_use, nil
  end
end

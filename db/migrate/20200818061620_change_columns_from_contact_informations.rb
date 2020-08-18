class ChangeColumnsFromContactInformations < ActiveRecord::Migration[5.2]
  def change
    change_column  :contact_informations, :relation, :integer, null:false
    change_column  :contact_informations, :phone_number, :string, null:false, limit: 11
  end
end

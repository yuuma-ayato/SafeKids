class AddColumnsFromContactInformations < ActiveRecord::Migration[5.2]
  def change
    add_column :contact_informations, :family_name, :string, null:false, default: 1, limit: 255
    add_column :contact_informations, :first_name, :string, null:false, default: 1, limit: 255
    add_column :contact_informations, :family_name_kana, :string, null:false, default: 1, limit: 255
    add_column :contact_informations, :first_name_kana, :string, null:false, default: 1, limit: 255
    change_column_default :contact_informations, :family_name, nil
    change_column_default :contact_informations, :first_name, nil
    change_column_default :contact_informations, :family_name_kana, nil
    change_column_default :contact_informations, :first_name_kana, nil
  end
end

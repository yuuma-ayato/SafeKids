class AddColumnsFromChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :family_name, :string, null:false, default: 1, limit: 255
    add_column :children, :first_name, :string, null:false, default: 1, limit: 255
    add_column :children, :family_name_kana, :string, null:false, default: 1, limit: 255
    add_column :children, :first_name_kana, :string, null:false, default: 1, limit: 255
    change_column_default :children, :family_name, nil
    change_column_default :children, :first_name, nil
    change_column_default :children, :family_name_kana, nil
    change_column_default :children, :first_name_kana, nil
  end
end

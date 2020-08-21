class AddColumnsFromParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :family_name, :string, null:false, default: 1, limit: 255
    add_column :parents, :first_name, :string, null:false, default: 1, limit: 255
    add_column :parents, :family_name_kana, :string, null:false, default: 1, limit: 255
    add_column :parents, :first_name_kana, :string, null:false, default: 1, limit: 255
    change_column_default :parents, :family_name, nil
    change_column_default :parents, :first_name, nil
    change_column_default :parents, :family_name_kana, nil
    change_column_default :parents, :first_name_kana, nil
  end
end

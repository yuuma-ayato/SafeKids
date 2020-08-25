class ChangeContentColumnOnComment < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :content, :text, null:false, default: 1
    change_column_default :comments, :content, nil
  end
end

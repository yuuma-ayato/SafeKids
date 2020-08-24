class AddUserRefToNames < ActiveRecord::Migration[5.2]
  def change
    add_reference :names, :user, foreign_key: true
  end
end

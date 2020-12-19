class AddUserRefToFcbooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :fcbooks, :user, foreign_key: true
  end
end

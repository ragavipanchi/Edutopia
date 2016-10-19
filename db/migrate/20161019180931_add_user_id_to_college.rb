class AddUserIdToCollege < ActiveRecord::Migration[5.0]
  def change
    add_reference :colleges, :user, foreign_key: true
  end
end

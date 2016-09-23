class AddEstdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :estd, :integer
  end
end

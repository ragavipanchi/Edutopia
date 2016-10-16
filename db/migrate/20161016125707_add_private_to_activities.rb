class AddPrivateToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :private_flag, :boolean
    #add_column :comments, :private_flag, :boolean
    #add_column :events, :private_flag, :boolean
    #add_column :follows, :private_flag, :boolean
    #add_column :posts, :private_flag, :boolean
  end
end

class RenameEstdInUsersToEstablishedYear < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :estd, :established_year
  end
end

class AddFieldsToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :email, :string
    add_column :students, :phone_no, :string
    add_column :students, :roll_no, :string
    add_reference :students, :college, foreign_key: true
    add_column :students, :semister, :string
    remove_column :students, :college
  end
end

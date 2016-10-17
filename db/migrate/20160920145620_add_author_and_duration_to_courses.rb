class AddAuthorAndDurationToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :author, :string
    add_column :courses, :duration, :string
  end
end

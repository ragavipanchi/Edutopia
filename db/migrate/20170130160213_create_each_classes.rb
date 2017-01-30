class CreateEachClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :each_classes do |t|
      t.string :branch
      t.integer :year
      t.string :section
      t.integer :semester
      t.integer :college_id

      t.timestamps
    end
  end
end

class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
      t.string :college_code
      t.string :college_name
      t.string :pricing_plan

      t.timestamps
    end
  end
end

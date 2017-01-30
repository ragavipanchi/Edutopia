class CreatePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :periods do |t|
      t.integer :day
      t.integer :period
      t.time :period_timing
      t.integer :college_id

      t.timestamps
    end
  end
end

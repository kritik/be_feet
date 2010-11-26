class CreateTrainings < ActiveRecord::Migration
  def self.up
    create_table :trainings do |t|
      t.integer :user_id
      t.string :name
      t.text :info
      t.string :week_days
      t.integer :times_per_day
      t.date :result_date
      t.string :result

      t.timestamps
    end
  end

  def self.down
    drop_table :trainings
  end
end

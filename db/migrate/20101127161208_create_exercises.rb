class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.integer :training_id
      t.string :name
      t.string :type_id
      t.string :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :exercises
  end
end

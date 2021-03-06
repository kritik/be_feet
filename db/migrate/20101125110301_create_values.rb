class CreateValues < ActiveRecord::Migration
  def self.up
    create_table :values do |t|
      t.integer :training_id
      t.string :name
      t.string :class
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :values
  end
end

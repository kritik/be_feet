class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.integer :training_id
      t.integer :user_id
      t.integer :value_id
      t.timestamp :time

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end

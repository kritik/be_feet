class AddCommentToLog < ActiveRecord::Migration
  def self.up
    add_column :logs, :comment, :text
  end

  def self.down
    remove_column :logs, :comment
  end
end

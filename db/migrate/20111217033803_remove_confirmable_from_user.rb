class RemoveConfirmableFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :confirmable
  end

  def self.down
  end
end

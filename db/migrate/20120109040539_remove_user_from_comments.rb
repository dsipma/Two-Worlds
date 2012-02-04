class RemoveUserFromComments < ActiveRecord::Migration
  def self.up
    remove_column :comments, :user
  end

  def self.down
    add_column  :comments, :user
  end
end

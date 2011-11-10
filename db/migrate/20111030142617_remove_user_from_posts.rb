class RemoveUserFromPosts < ActiveRecord::Migration
  def self.up
    remove_column :posts, :user
  end

  def self.down
    add_column :posts, :user, :string
  end
end

class ChangeEntryInPosts < ActiveRecord::Migration
  def self.up
    change_column :posts, :entry, :text
  end

  def self.down
    change_column :posts, :entry, :string
  end
end

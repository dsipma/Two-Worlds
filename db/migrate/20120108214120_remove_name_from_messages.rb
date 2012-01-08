class RemoveNameFromMessages < ActiveRecord::Migration
  def self.up
    remove_column :messages, :name
  end

  def self.down
    add_column :messages, :name, :string
  end
end

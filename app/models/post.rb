class Post < ActiveRecord::Base
  validates :entry, :presence  => true
  validates :title, :presence  => true
  default_scope :order => "updated_at DESC", :limit => "3"
  has_many :comments
end

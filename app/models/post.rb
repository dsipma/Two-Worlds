class Post < ActiveRecord::Base
  validates :entry, :presence  => true
  validates :title, :presence  => true,
                    :length => {:within => (1.. 255)}

  default_scope :order => "updated_at DESC", :limit => "3"
  has_many :comments
end

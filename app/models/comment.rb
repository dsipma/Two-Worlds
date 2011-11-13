class Comment < ActiveRecord::Base
  validates :entry, :presence  => true
  validates :title, :presence  => true
  belongs_to :post
end

class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :text, :presence => true

  default_scope :order => "updated_at DESC", :limit => "5"
  has_many :comments
end

# == Schema Information
#
# Table name: articles
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#


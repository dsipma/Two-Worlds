class Post < ActiveRecord::Base
  validates :entry, :presence => true
  validates :title, :presence => true,
            :length => { :within => (1.. 255) }

  default_scope :order => "updated_at DESC", :limit => "3"

end

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  entry      :text(255)
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


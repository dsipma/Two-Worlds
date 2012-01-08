class Comment < ActiveRecord::Base
  validates :entry, :presence => true
  validates :title, :presence => true

  belongs_to :post
  belongs_to :user

end

# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  user       :string(255)
#  entry      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


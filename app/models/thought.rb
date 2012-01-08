class Thought < ActiveRecord::Base
  validates :saying, :presence => true
  validates :credit, :presence => true
end

# == Schema Information
#
# Table name: thoughts
#
#  id         :integer         not null, primary key
#  saying     :string(255)
#  credit     :string(255)
#  created_at :datetime
#  updated_at :datetime
#


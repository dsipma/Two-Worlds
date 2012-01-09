class Message < ActiveRecord::Base
  validates :message, presence: true
  validates :email, presence: true

end



# == Schema Information
#
# Table name: messages
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  message    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  read       :boolean         default(FALSE)
#


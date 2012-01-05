class Message < ActiveRecord::Base
  validates :id, presence: true
  validates :message, presence: true

  before_save :get_user_info

  private
  def get_user_info
    self.name = current_user.name
    self.email = current_user.email
  end
end


# == Schema Information
#
# Table name: messages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  message    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  read       :boolean         default(FALSE)
#


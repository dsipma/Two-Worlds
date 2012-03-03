class Comment < ActiveRecord::Base
  validates :entry,       presence: true
  validates :user_id,     presence: true
  validates :article_id,  presence: true

  belongs_to :article
  belongs_to :user

end


# == Schema Information                            Totally sexy..
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  entry      :string(255)
#  created_at :datetime
#  updated_at :datetime
#


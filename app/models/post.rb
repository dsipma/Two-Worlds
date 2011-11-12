class Post < ActiveRecord::Base
  validates presence_of entry => true
  validates presence_of title => true

end

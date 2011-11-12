class Thought < ActiveRecord::Base
  validates presence_of :saying
  validates presence_of :credit
  end

class Thought < ActiveRecord::Base
  validates :saying, :presence => true
  validates :credit, :presence => true
  end

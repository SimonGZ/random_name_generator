class Firstname < ActiveRecord::Base
  attr_accessible :body, :frequency, :gender, :rank
  
  validates :body, :presence => true
end

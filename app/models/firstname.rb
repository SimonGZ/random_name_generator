class Firstname < ActiveRecord::Base
  attr_accessible :body, :frequency, :gender, :rank
  
  validates :name, :presence => true
end

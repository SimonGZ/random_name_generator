class Firstname < ActiveRecord::Base
  attr_accessible :body, :frequency, :gender, :rank
  
  validates :body, :presence => true
  validates :gender, :presence => true
  validates :frequency, :presence => true
  validates :rank, :presence => true
  
end

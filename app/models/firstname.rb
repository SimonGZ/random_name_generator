# == Schema Information
#
# Table name: firstnames
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  gender     :string(255)
#  frequency  :decimal(4, 3)
#  rank       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Firstname < ActiveRecord::Base
  attr_accessible :body, :frequency, :gender, :rank
  
  validates :body, :presence => true
  validates :gender, :presence => true
  validates :frequency, :presence => true, :numericality => true
  validates :rank, :presence => true, :numericality => true
  
end

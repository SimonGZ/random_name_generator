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
  
  RANKS = { :any => [0,4300], :common => [0,500], :rare => [500,4300] }
  GENDERS = [:Male, :Female]
  
  def self.random_names(rank = :any, gender = :Male, limit = 10)
    limit = limit.to_i
    limit = 50 if limit > 50
    gender = :Male if !GENDERS.include? gender
    rank = :any if !RANKS.include? rank
    where("? <= rank AND rank <= ?", RANKS[rank][0], RANKS[rank][1]).where(:gender => gender).order("RANDOM()").limit(limit)
  end
  
end

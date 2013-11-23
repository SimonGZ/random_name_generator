# == Schema Information
#
# Table name: surnames
#
#  id          :integer          not null, primary key
#  body        :string(255)
#  frequency   :decimal(5, 2)
#  rank        :integer
#  pctwhite    :decimal(4, 2)
#  pctblack    :decimal(4, 2)
#  pctasian    :decimal(4, 2)
#  pctnative   :decimal(4, 2)
#  pcthispanic :decimal(4, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Surname < ActiveRecord::Base
  attr_accessible :body, :frequency, :pctasian, :pctblack, :pcthispanic, :pctnative, :pctwhite, :rank
  
  validates :body, :presence => true
  validates :frequency, :presence => true, :numericality => true
  validates :rank, :presence => true, :numericality => true
  validates :pctwhite, :presence => true, :numericality => true
  
  RANKS = {any: [0,151000], common: [0,30000], rare: [120000,150000] }
  RACES = [:any, :white, :black, :hispanic, :asian, :native]
  
  scope :any
  scope :white, where('pctwhite > 50')
  scope :black, where('pctblack > 50')
  scope :hispanic, where('pcthispanic > 50')
  scope :asian, where('pctasian > 50')
  scope :native, where('pctnative > 50')
  
  def self.random_names(rank = :any, race = :any, limit = 10)
    limit = limit.to_i
    limit = 50 if limit > 50
    race = :any if !RACES.include? race
    rank = :any if !RANKS.include? rank
    where("? <= rank AND rank <= ?", RANKS[rank][0], RANKS[rank][1]).send(race).order("RANDOM()").limit(limit)
  end
  
end

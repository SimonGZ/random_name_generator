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
  
end

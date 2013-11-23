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

require 'test_helper'

class SurnameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should save with a Body, Frequency, Rank, Pctwhite" do
    surname = Surname.create(
      :body => 'Sample Name',
      :frequency => 0.036,
      :rank => 55,
      :pctwhite => 33.40
    )

    assert_created surname
  end
  
  test "should not save without a Body, Frequency, Rank, Pctwhite" do
    surname = Surname.create

    assert_errors_on surname, :body, :frequency, :rank, :pctwhite
  end
  
  test "should not be valid if Rank is not a number" do
    surname = Surname.create(
      :body => 'Sample Name',
      :frequency => 0.036,
      :rank => "doggie",
      :pctwhite => 33.40
    )

    assert !surname.valid?, "Should not save rank if not a number"
  end
  
  test "should not be valid if Frequency is not a number" do
    surname = Surname.create(
      :body => 'Sample Name',
      :frequency => "doggie",
      :rank => 55,
      :pctwhite => 33.40
    )

    assert !surname.valid?, "Should not save frequency if not a number"
  end
  
  test "should not be valid if Pctwhite is not a number" do
    surname = Surname.create(
      :body => 'Sample Name',
      :frequency => 0.839,
      :rank => 55,
      :pctwhite => "cat"
    )

    assert !surname.valid?, "Should not save pctwhite if not a number"
  end
  
end

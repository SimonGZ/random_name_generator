require 'test_helper'

class FirstnameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "the truth" do
    assert true, "True should be truthy"
  end
  
  test "should save with a Body, Gender, Frequency, and Rank" do
    fname = Firstname.create(
      :body => 'Sample Name',
      :gender => 'Female',
      :frequency => 0.036,
      :rank => 55
    )

    assert_created fname
  end
  
  test "should not save without a Body, Gender, Frequency, or Rank" do
    fname = Firstname.create

    assert_errors_on fname, :body, :gender, :frequency, :rank
  end
  
end

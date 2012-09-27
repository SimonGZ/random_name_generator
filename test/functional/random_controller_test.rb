require 'test_helper'

class RandomControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get first" do
    get :first
    assert_response :success
  end

  test "should get last" do
    get :last
    assert_response :success
  end

  test "should get full" do
    get :full
    assert_response :success
  end

end

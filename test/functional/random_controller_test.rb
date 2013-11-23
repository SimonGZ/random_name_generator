require 'test_helper'

class RandomControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_template :home
  end

  test "should get first" do
    get :first
    assert_response :success
    assert_template :first
  end

  test "should get last" do
    get :last
    assert_response :success
    assert_template :last
  end

  test "should get full" do
    get :full
    assert_response :success
    assert_template :full
  end

  test "should get correct names" do
    params_hash = {nametype: 'full', gender: 'Female', limit: 10}
    get :generate, params_hash
    assert_response :success
    assert_template :full, "Template should match nametype"
  end

end

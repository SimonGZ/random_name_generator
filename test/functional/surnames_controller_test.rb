require 'test_helper'

class SurnamesControllerTest < ActionController::TestCase
  setup do
    @surname = surnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surname" do
    assert_difference('Surname.count') do
      post :create, surname: { body: @surname.body, frequency: @surname.frequency, pctasian: @surname.pctasian, pctblack: @surname.pctblack, pcthispanic: @surname.pcthispanic, pctnative: @surname.pctnative, pctwhite: @surname.pctwhite, rank: @surname.rank }
    end

    assert_redirected_to surname_path(assigns(:surname))
  end

  test "should show surname" do
    get :show, id: @surname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surname
    assert_response :success
  end

  test "should update surname" do
    put :update, id: @surname, surname: { body: @surname.body, frequency: @surname.frequency, pctasian: @surname.pctasian, pctblack: @surname.pctblack, pcthispanic: @surname.pcthispanic, pctnative: @surname.pctnative, pctwhite: @surname.pctwhite, rank: @surname.rank }
    assert_redirected_to surname_path(assigns(:surname))
  end

  test "should destroy surname" do
    assert_difference('Surname.count', -1) do
      delete :destroy, id: @surname
    end

    assert_redirected_to surnames_path
  end
end

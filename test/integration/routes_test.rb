require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "root leads to random#home" do
    assert_recognizes({:controller => 'random', :action => 'home'}, '', {}, 'Path root should lead to random#home')
  end
  
  test "generate route" do
    assert_recognizes({:controller => 'random', :action => 'generate'}, 'generate', {}, 'Path generate should lead to random#generate')
  end
  
  test "generate GET produces proper params" do
    assert_recognizes({:controller => 'random', :action => 'generate', :limit => '10', :gender => 'Female', :nametype => 'full'}, 'generate', { :limit => '10', :gender => 'Female', :nametype => 'full' }, 'Generate GET should return correct options')
  end
  
end

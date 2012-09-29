require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "generate route" do
    assert_recognizes({:controller => 'random', :action => 'generate'}, 'generate', {}, 'Path generate should lead to random#generate')
  end
  
  test "root leads to random#home" do
    assert_recognizes({:controller => 'random', :action => 'home'}, '', {}, 'Path root should lead to random#home')
  end
  
end

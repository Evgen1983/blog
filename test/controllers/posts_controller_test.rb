require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  
   def setup
    @user = users(:admin)
  end
  
  test "should get index" do 
  	get :index
  	assert_response :success
  end
   
   test "should get new" do 
   	log_in_as(@user)
  	get :new
  	assert_response :success
  end

end

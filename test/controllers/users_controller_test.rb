require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  def setup
    @user = users(:admin)
  end

  test "should get new" do
  	log_in_as(@user)
    get :new
    assert_response :success
  end

end

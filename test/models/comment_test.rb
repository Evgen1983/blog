require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
  	@comment = Comment.new(name: "Example name", body: "Example body")
  end

  test "should be valid" do 
  	assert @comment.valid?
  end
  
  test "name should be present" do
  	@comment.name = ' '
  	assert_not @comment.valid?
  end

  test "body should be present" do
  	@comment.body = ' '
  	assert_not @comment.valid?
  end

  test "body should be not too long" do
  	@comment.body = 'a' * 141
  	assert_not @comment.valid?
  end

end

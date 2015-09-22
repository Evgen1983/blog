require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
  	@post = Post.new(title: 'Example title', body: 'Example body')
  end

  test 'should be valid' do 
  	assert @post.valid?
  end

  test "title should be present" do
  	@post.title = "   "
  	assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = "  "
    assert_not @post.valid?
  end

  test "title should be not too short" do
    @post.title = "a" * 4
    assert_not @post.valid?
  end
end


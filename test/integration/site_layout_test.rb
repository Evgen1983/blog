require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links"  do
  	get root_path
  	assert_template 'posts/index'
  	assert_select "a[href=?]", root_path, count: 3
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", portfolio_path
  	
  end
end

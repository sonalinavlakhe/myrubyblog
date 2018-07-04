require 'test_helper'

class CatagoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catagories_index_url
    assert_response :success
  end

  test "should get edit" do
    get catagories_edit_url
    assert_response :success
  end

  test "should get new" do
    get catagories_new_url
    assert_response :success
  end

  test "should get show" do
    get catagories_show_url
    assert_response :success
  end

end

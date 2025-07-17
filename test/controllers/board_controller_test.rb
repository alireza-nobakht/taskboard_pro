require "test_helper"

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get board_index_url
    assert_response :success
  end

  test "should get show" do
    get board_show_url
    assert_response :success
  end

  test "should get new" do
    get board_new_url
    assert_response :success
  end

  test "should get create" do
    get board_create_url
    assert_response :success
  end
end

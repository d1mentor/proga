require "test_helper"

class TransportsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get transports_show_url
    assert_response :success
  end

  test "should get index" do
    get transports_index_url
    assert_response :success
  end

  test "should get new" do
    get transports_new_url
    assert_response :success
  end

  test "should get create" do
    get transports_create_url
    assert_response :success
  end

  test "should get delete" do
    get transports_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get transports_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get transports_edit_url
    assert_response :success
  end

  test "should get update" do
    get transports_update_url
    assert_response :success
  end
end

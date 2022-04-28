require "test_helper"

class PayoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get payouts_show_url
    assert_response :success
  end

  test "should get index" do
    get payouts_index_url
    assert_response :success
  end

  test "should get new" do
    get payouts_new_url
    assert_response :success
  end

  test "should get create" do
    get payouts_create_url
    assert_response :success
  end

  test "should get edit" do
    get payouts_edit_url
    assert_response :success
  end

  test "should get update" do
    get payouts_update_url
    assert_response :success
  end

  test "should get delete" do
    get payouts_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get payouts_destroy_url
    assert_response :success
  end
end

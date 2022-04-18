require "test_helper"

class WorkTypeLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get work_type_location_show_url
    assert_response :success
  end

  test "should get index" do
    get work_type_location_index_url
    assert_response :success
  end

  test "should get new" do
    get work_type_location_new_url
    assert_response :success
  end

  test "should get create" do
    get work_type_location_create_url
    assert_response :success
  end

  test "should get edit" do
    get work_type_location_edit_url
    assert_response :success
  end

  test "should get update" do
    get work_type_location_update_url
    assert_response :success
  end

  test "should get delete" do
    get work_type_location_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get work_type_location_destroy_url
    assert_response :success
  end
end

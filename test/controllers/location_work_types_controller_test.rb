require "test_helper"

class LocationWorkTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get location_work_types_show_url
    assert_response :success
  end

  test "should get index" do
    get location_work_types_index_url
    assert_response :success
  end

  test "should get new" do
    get location_work_types_new_url
    assert_response :success
  end

  test "should get create" do
    get location_work_types_create_url
    assert_response :success
  end

  test "should get delete" do
    get location_work_types_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get location_work_types_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get location_work_types_edit_url
    assert_response :success
  end

  test "should get update" do
    get location_work_types_update_url
    assert_response :success
  end
end

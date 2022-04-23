require "test_helper"

class WorkTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get work_types_show_url
    assert_response :success
  end

  test "should get index" do
    get work_types_index_url
    assert_response :success
  end

  test "should get new" do
    get work_types_new_url
    assert_response :success
  end

  test "should get create" do
    get work_types_create_url
    assert_response :success
  end

  test "should get delete" do
    get work_types_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get work_types_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get work_types_edit_url
    assert_response :success
  end

  test "should get update" do
    get work_types_update_url
    assert_response :success
  end
end

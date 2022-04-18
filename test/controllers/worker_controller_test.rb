require "test_helper"

class WorkerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get worker_show_url
    assert_response :success
  end

  test "should get index" do
    get worker_index_url
    assert_response :success
  end

  test "should get new" do
    get worker_new_url
    assert_response :success
  end

  test "should get create" do
    get worker_create_url
    assert_response :success
  end

  test "should get edit" do
    get worker_edit_url
    assert_response :success
  end

  test "should get update" do
    get worker_update_url
    assert_response :success
  end

  test "should get delete" do
    get worker_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get worker_destroy_url
    assert_response :success
  end
end

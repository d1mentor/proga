require "test_helper"

class LocationCustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get location_customers_show_url
    assert_response :success
  end

  test "should get index" do
    get location_customers_index_url
    assert_response :success
  end

  test "should get new" do
    get location_customers_new_url
    assert_response :success
  end

  test "should get create" do
    get location_customers_create_url
    assert_response :success
  end

  test "should get delete" do
    get location_customers_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get location_customers_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get location_customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get location_customers_update_url
    assert_response :success
  end
end

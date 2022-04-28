require "test_helper"

class LocationMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get location_materials_new_url
    assert_response :success
  end

  test "should get create" do
    get location_materials_create_url
    assert_response :success
  end

  test "should get delete" do
    get location_materials_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get location_materials_destroy_url
    assert_response :success
  end

  test "should get show" do
    get location_materials_show_url
    assert_response :success
  end

  test "should get index" do
    get location_materials_index_url
    assert_response :success
  end

  test "should get edit" do
    get location_materials_edit_url
    assert_response :success
  end

  test "should get update" do
    get location_materials_update_url
    assert_response :success
  end
end

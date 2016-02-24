require 'test_helper'

class PackageDescriptionsControllerTest < ActionController::TestCase
  setup do
    @package_description = package_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_description" do
    assert_difference('PackageDescription.count') do
      post :create, package_description: { package_number: @package_description.package_number }
    end

    assert_redirected_to package_description_path(assigns(:package_description))
  end

  test "should show package_description" do
    get :show, id: @package_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_description
    assert_response :success
  end

  test "should update package_description" do
    patch :update, id: @package_description, package_description: { package_number: @package_description.package_number }
    assert_redirected_to package_description_path(assigns(:package_description))
  end

  test "should destroy package_description" do
    assert_difference('PackageDescription.count', -1) do
      delete :destroy, id: @package_description
    end

    assert_redirected_to package_descriptions_path
  end
end

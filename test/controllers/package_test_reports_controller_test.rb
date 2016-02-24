require 'test_helper'

class PackageTestReportsControllerTest < ActionController::TestCase
  setup do
    @package_test_report = package_test_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_test_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_test_report" do
    assert_difference('PackageTestReport.count') do
      post :create, package_test_report: { authorized_signature: @package_test_report.authorized_signature, customer_details: @package_test_report.customer_details, manufacture_details: @package_test_report.manufacture_details, package_details: @package_test_report.package_details, packaging_group1: @package_test_report.packaging_group1, packaging_group2: @package_test_report.packaging_group2, personal_present_during_test: @package_test_report.personal_present_during_test, release_date: @package_test_report.release_date, test_date: @package_test_report.test_date, testing_performed_by: @package_test_report.testing_performed_by }
    end

    assert_redirected_to package_test_report_path(assigns(:package_test_report))
  end

  test "should show package_test_report" do
    get :show, id: @package_test_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_test_report
    assert_response :success
  end

  test "should update package_test_report" do
    patch :update, id: @package_test_report, package_test_report: { authorized_signature: @package_test_report.authorized_signature, customer_details: @package_test_report.customer_details, manufacture_details: @package_test_report.manufacture_details, package_details: @package_test_report.package_details, packaging_group1: @package_test_report.packaging_group1, packaging_group2: @package_test_report.packaging_group2, personal_present_during_test: @package_test_report.personal_present_during_test, release_date: @package_test_report.release_date, test_date: @package_test_report.test_date, testing_performed_by: @package_test_report.testing_performed_by }
    assert_redirected_to package_test_report_path(assigns(:package_test_report))
  end

  test "should destroy package_test_report" do
    assert_difference('PackageTestReport.count', -1) do
      delete :destroy, id: @package_test_report
    end

    assert_redirected_to package_test_reports_path
  end
end

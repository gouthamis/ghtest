json.array!(@package_test_reports) do |package_test_report|
  json.extract! package_test_report, :id, :customer_details, :testing_performed_by, :test_date, :package_details, :manufacture_details, :authorized_signature, :release_date, :packaging_group1, :packaging_group2, :personal_present_during_test
  json.url package_test_report_url(package_test_report, format: :json)
end

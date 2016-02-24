class AddColumnToPackageTestReports < ActiveRecord::Migration
  def change
    add_column :package_test_reports, :client_name, :string
  end
end

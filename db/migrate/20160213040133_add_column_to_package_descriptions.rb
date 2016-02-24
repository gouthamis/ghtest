class AddColumnToPackageDescriptions < ActiveRecord::Migration
  def change
    add_reference :package_descriptions, :package_test_report, index: true, foreign_key: true
  end
end

class CreatePackageTestReports < ActiveRecord::Migration
  def change
    create_table :package_test_reports do |t|
      t.string :customer_details
      t.string :testing_performed_by
      t.date :test_date
      t.string :package_details
      t.string :manufacture_details
      t.string :authorized_signature
      t.date :release_date
      t.string :packaging_group1
      t.string :packaging_group2
      t.string :personal_present_during_test

      t.timestamps null: false
    end
  end
end

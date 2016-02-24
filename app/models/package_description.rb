class PackageDescription < ActiveRecord::Base
    belongs_to :package_test_report
    has_one :package
end

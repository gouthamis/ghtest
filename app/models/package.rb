class Package < ActiveRecord::Base
  #attr_accessible :fields_attributes
  has_many :fields, class_name: "PackageField"
  accepts_nested_attributes_for :fields, allow_destroy: true
  has_many :images, as: :entity
  accepts_nested_attributes_for :images
  belongs_to :package_description
end

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160220064227) do

  create_table "homes", force: :cascade do |t|
    t.string   "istm_no"
    t.string   "istm_name"
    t.string   "company_name"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "entity_id"
    t.string   "entity_type"
  end

  create_table "package_descriptions", force: :cascade do |t|
    t.string   "package_number"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "package_name"
    t.integer  "package_test_report_id"
  end

  add_index "package_descriptions", ["package_test_report_id"], name: "index_package_descriptions_on_package_test_report_id"

  create_table "package_fields", force: :cascade do |t|
    t.string   "name"
    t.string   "field_type"
    t.integer  "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "value"
  end

  add_index "package_fields", ["package_id"], name: "index_package_fields_on_package_id"

  create_table "package_test_reports", force: :cascade do |t|
    t.string   "customer_details"
    t.string   "testing_performed_by"
    t.date     "test_date"
    t.string   "package_details"
    t.string   "manufacture_details"
    t.string   "authorized_signature"
    t.date     "release_date"
    t.string   "packaging_group1"
    t.string   "packaging_group2"
    t.string   "personal_present_during_test"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "client_name"
  end

  create_table "packages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "package_description_id"
    t.string   "name"
    t.string   "manufacturer"
    t.string   "manufacturer_location"
    t.string   "material"
    t.string   "box_style"
    t.string   "part"
    t.string   "bmc"
    t.string   "number_of_walls"
    t.string   "board_cliper"
    t.string   "basis_weight_of_each_liner_and_medium"
    t.string   "inside_liner"
    t.string   "first_medium"
    t.string   "outside_liner"
    t.string   "combined_basis_weight"
    t.string   "flute"
    t.string   "method_of_joining_panels"
    t.string   "manufacturers_joint"
    t.string   "flap_size"
    t.string   "location"
    t.string   "dimensions_external"
    t.string   "dimensions_internal"
    t.string   "top_flap_inner_gap_or_meet"
    t.string   "top_flap_outer_overlap_or_meet"
    t.string   "bottom_flap_inner_gap_or_meet"
    t.string   "bottom_flap_outer_overlap_or_meet"
    t.string   "stacking_height"
    t.string   "handles_material_type_number_and_position"
    t.string   "tare_weight"
    t.string   "closure_method_of_box"
    t.string   "top"
    t.string   "bottom"
  end

  add_index "packages", ["package_description_id"], name: "index_packages_on_package_description_id"

end

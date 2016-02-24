class AddColumnToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :manufacturer, :string
    add_column :packages, :manufacturer_location, :string
    add_column :packages, :material, :string
    add_column :packages, :box_style, :string
    add_column :packages, :part, :string
    add_column :packages, :bmc, :string
    add_column :packages, :number_of_walls, :string
    add_column :packages, :board_cliper, :string
    add_column :packages, :basis_weight_of_each_liner_and_medium, :string
    add_column :packages, :inside_liner, :string
    add_column :packages, :first_medium, :string
    add_column :packages, :outside_liner, :string
    add_column :packages, :combined_basis_weight, :string
    add_column :packages, :flute, :string
    add_column :packages, :method_of_joining_panels, :string
    add_column :packages, :manufacturers_joint, :string
    add_column :packages, :flap_size, :string
    add_column :packages, :location, :string
    add_column :packages, :dimensions_external, :string
    add_column :packages, :dimensions_internal, :string
    add_column :packages, :top_flap_inner_gap_or_meet, :string
    add_column :packages, :top_flap_outer_overlap_or_meet, :string
    add_column :packages, :bottom_flap_inner_gap_or_meet, :string
    add_column :packages, :bottom_flap_outer_overlap_or_meet, :string
    add_column :packages, :stacking_height, :string
    add_column :packages, :handles_material_type_number_and_position, :string
    add_column :packages, :tare_weight, :string
    add_column :packages, :closure_method_of_box, :string
    add_column :packages, :top, :string
    add_column :packages, :bottom, :string
  end
end

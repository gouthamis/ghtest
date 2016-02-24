class AddColumnToPackage < ActiveRecord::Migration
  def change
    add_column :packages, :entity_id, :integer
    add_column :packages, :entity_type, :string
  end
end

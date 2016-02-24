class RemoveColumnToPackage < ActiveRecord::Migration
  def change
    remove_column :packages, :entity_id, :integer
    remove_column :packages, :entity_type, :string
  end
end

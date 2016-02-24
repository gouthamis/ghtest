class RemoveColumnFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :package_descriptions_id, :string
  end
end

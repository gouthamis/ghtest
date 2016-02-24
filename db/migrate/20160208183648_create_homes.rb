class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :istm_no
      t.string :istm_name
      t.string :company_name
      t.datetime :date

      t.timestamps null: false
    end
  end
end

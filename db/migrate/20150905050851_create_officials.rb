class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.integer :official_id, index: true, null: false
      t.references :profile
      t.string :first_name
      t.string :last_name
      t.integer :service_years
      t.integer :work_phone
      t.integer :cell_phone
      t.integer :home_phone
      t.string :email
      t.boolean :active, default: true
      t.references :address, foreign_key: true
      t.timestamps null: false
    end
  end
end

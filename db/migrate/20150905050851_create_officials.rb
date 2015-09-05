class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.integer :official_id, index:true
      t.references :profile
      t.string :first_name
      t.string :last_name
      t.integer :service_years
      t.integer :work_phone
      t.integer :cell_phone
      t.integer :home_phone
      t.string :email
      t.boolean :active
      t.references :address, as:addressable_location
      t.timestamps null: false
    end
  end
end

class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.belongs_to :address, index: true, foreign_key: true
      t.integer :phone
      t.string :AD_first_name
      t.string :AD_last_name
      t.integer :AD_phone
      t.integer :AD_cell
      t.integer :AD_extension
      t.string :AD_email
      t.string :coach_first_name
      t.string :coach_last_name
      t.integer :coach_phone
      t.integer :coach_cell
      t.integer :coach_extension
      t.string :coach_email
      t.boolean :dues_paid
      t.boolean :fees_paid
      t.boolean :active

      t.timestamps null: false
    end
  end
end

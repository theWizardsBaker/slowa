class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.belongs_to :addressable_location, polymorphic: true
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.timestamps null: false
    end
  end
end

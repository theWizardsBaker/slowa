class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.integer :authority_level, null: false

      t.timestamps null: false
    end
  end
end

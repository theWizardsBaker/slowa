class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.belongs_to :admin, index: true, foreign_key: true
      t.text :post

      t.timestamps null: false
    end
  end
end

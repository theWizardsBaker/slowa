class CreateAvailibilities < ActiveRecord::Migration
  def change
    create_table :availibilities do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.date :date_off, null: false
      t.character :time_off, null: false

      t.timestamps null: false
    end
  end
end

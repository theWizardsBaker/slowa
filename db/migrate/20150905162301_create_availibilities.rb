class CreateAvailibilities < ActiveRecord::Migration
  def change
    create_table :availibilities do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.date :date_off
      t.character :time_off

      t.timestamps null: false
    end
  end
end

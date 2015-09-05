class CreateAssignmentLevels < ActiveRecord::Migration
  def change
    create_table :assignment_levels do |t|
      t.belongs_to :assignment, index: true, foreign_key: true
      t.string :level
      t.time :time
      t.integer :official_slots

      t.timestamps null: false
    end
  end
end

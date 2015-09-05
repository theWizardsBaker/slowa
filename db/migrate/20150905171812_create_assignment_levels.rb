class CreateAssignmentLevels < ActiveRecord::Migration
  def change
    create_table :assignment_levels do |t|
      t.belongs_to :assignment, index: true, foreign_key: true
      t.string :level, null: false
      t.time :time, null: false
      t.integer :official_slots, default: 0

      t.timestamps null: false
    end
  end
end

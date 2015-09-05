class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :school, as:home_team, index: true, foreign_key: true
      t.references :school, as:visiting_team, index: true, foreign_key: true
      t.string :meet_type
      t.boolean :cancelled
      t.date :match_date
      t.references :official, as:head_official, index: true, foreign_key: true
      t.boolean :keep_attendance
      t.string :comments

      t.timestamps null: false
    end
  end
end

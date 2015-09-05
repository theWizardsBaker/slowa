class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :school, class_name: :home_team, index: true, foreign_key: true
      t.references :school, class_name: :visiting_team, index: true, foreign_key: true
      t.string :meet_type, null: false
      t.boolean :cancelled, default: false
      t.date :match_date, null: false
      t.references :official, class_name: :head_official, index: true, foreign_key: true
      t.boolean :keep_attendance, default: true
      t.string :comments

      t.timestamps null: false
    end
  end
end

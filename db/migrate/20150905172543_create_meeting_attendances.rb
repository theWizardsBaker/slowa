class CreateMeetingAttendances < ActiveRecord::Migration
  def change
    create_table :meeting_attendances do |t|
      t.belongs_to :assignment, index: true, foreign_key: true
      t.references :official, index: true, foreign_key: true
      t.character :present
      t.string :notes

      t.timestamps null: false
    end
  end
end

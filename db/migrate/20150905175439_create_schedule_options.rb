class CreateScheduleOptions < ActiveRecord::Migration
  def change
    create_table :schedule_options do |t|
      t.boolean :visible

      t.timestamps null: false
    end
  end
end

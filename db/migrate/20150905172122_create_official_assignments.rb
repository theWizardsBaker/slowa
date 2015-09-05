class CreateOfficialAssignments < ActiveRecord::Migration
  def change
    create_table :official_assignments, id:false do |t|
      t.belongs_to :offical, index: true, foreign_key: true
      t.belongs_to :assignment, index: true, foreign_key: true
      t.belongs_to :assignmentlevel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateOfficialStandings < ActiveRecord::Migration
  def change
    create_table :official_standings do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.character :standing
      t.string :notes
      t.decimal :fees, precision: 2, scale:2

      t.timestamps null: false
    end
  end
end

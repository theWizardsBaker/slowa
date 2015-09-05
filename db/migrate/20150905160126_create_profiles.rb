class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.string :high_school
      t.integer :HS_years
      t.string :HS_level
      t.string :HS_achievement
      t.string :college
      t.integer :college_years
      t.string :college_level
      t.string :college_achievement
      t.string :wrestling_achievement
      t.string :coach_little_league
      t.string :coach_high_school
      t.string :coach_college
      t.string :coach_other
      t.string :officiate_little_league
      t.string :officiate_high_school
      t.string :officiate_college
      t.string :officiate_other
      t.boolean :district
      t.boolean :state
      t.string :occupation
      t.string :official_experience

      t.timestamps null: false
    end
  end
end

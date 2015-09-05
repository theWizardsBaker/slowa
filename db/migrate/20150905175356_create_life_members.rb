class CreateLifeMembers < ActiveRecord::Migration
  def change
    create_table :life_members do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

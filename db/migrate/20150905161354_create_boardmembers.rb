class CreateBoardmembers < ActiveRecord::Migration
  def change
    create_table :boardmembers do |t|
      t.belongs_to :official, index: true, foreign_key: true
      t.string :title, null: false
      t.timestamps null: false
    end
  end
end

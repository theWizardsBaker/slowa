class CreateBoardmembers < ActiveRecord::Migration
  def change
    create_table :boardmembers do |t|
      t.belongs_to :official
      t.string :title
      t.timestamps null: false
    end
  end
end

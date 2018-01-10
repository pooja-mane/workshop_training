class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.references :coach, index: true, foreign_key: true
      t.timestamps
    end
  end
end

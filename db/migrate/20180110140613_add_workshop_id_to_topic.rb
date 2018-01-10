class AddWorkshopIdToTopic < ActiveRecord::Migration[5.1]
  def change
    add_reference :topics, :workshop, index: true, foreign_key: true
  end
end

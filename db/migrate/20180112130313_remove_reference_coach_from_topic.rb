class RemoveReferenceCoachFromTopic < ActiveRecord::Migration[5.1]
  def change
    remove_reference :topics, :coach, index: true, foreign_key: true
  end
end

class AddRatingsToCoach < ActiveRecord::Migration[5.1]
  def change
    add_column :coaches, :ratings, :integer, default: 0
  end
end

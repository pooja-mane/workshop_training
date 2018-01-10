class AddRatingsToWorkshop < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :ratings, :integer
  end
end

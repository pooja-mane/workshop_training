class CreateCoachesAndWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :coaches_workshops, id: false do |t|
      t.belongs_to :workshop, index: true
      t.belongs_to :coach, index: true
    end
  end
end

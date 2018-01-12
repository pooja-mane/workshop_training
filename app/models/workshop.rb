class Workshop < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :topics
  has_and_belongs_to_many :coaches

  validates :title, :description, :place, :start_date, :end_date, presence: true

  before_save :calculate_duration, if: -> { start_date_changed? || end_date_changed? }

  private

  def calculate_duration
    days ||= if self.end_date > self.start_date
      (self.end_date.to_date - self.start_date.to_date).to_i
    else
      0
    end rescue 0
    self.duration = days
    # self.duration = (self.end_date.to_date - self.start_date.to_date).to_i
  end
end

class Workshop < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :topics
  has_and_belongs_to_many :coaches

  validates :title, :description, :place, presence: true
end

class Workshop < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :topics
end

class Workshop < ApplicationRecord
  has_many :comments, as: :commentable
end

class Coach < ApplicationRecord
  has_many :comments, as: :commentable
end

class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :description, presence: true
end

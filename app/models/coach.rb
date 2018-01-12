class Coach < ApplicationRecord
  has_many :comments, as: :commentable
  has_and_belongs_to_many :workshops

  validates :name, :email, presence: true
end

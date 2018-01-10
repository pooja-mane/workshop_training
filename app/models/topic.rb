class Topic < ApplicationRecord
  belongs_to :workshop
  belongs_to :coach
end

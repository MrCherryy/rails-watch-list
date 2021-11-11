class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
  validates :comment, size: { minimum: 6 }
end

class Exercise < ApplicationRecord
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :instructions, presence: true
  validates :exercise_type, inclusion: { in: %w[ A B C D ] }
end

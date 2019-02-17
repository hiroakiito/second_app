class Game < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :description, length: { maximum: 70 }
  validates :team_1, presence: true
  validates :team_2, presence: true
  validates :score_1, presence: true
  validates :score_2, presence: true
end

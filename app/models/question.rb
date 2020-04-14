class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  scope :by_recent,      -> { order(created_at: :desc) }
end

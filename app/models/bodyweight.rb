class Bodyweight < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :date,
    :presence => true,
    :uniqueness => { scope: :user_id }
end

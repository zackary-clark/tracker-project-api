class Max < ApplicationRecord
  belongs_to :user
  validates :date, :user, presence: true
end

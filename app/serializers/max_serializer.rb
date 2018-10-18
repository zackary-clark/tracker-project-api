class MaxSerializer < ActiveModel::Serializer
  attributes :id, :date, :squat1RM, :bench1RM, :deadlift1RM, :press1RM
  has_one :user
end

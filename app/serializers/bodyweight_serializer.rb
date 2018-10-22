class BodyweightSerializer < ActiveModel::Serializer
  attributes :id, :date, :weight, :notes
  has_one :user
end

class PaintingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :topic
end

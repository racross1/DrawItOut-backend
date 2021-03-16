class TopicSerializer < ActiveModel::Serializer
  attributes :id, :topic
  has_many :paintings
  has_many :users, through: :paintings
end

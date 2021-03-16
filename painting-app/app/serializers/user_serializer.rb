class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :tagline
  has_many :paintings
  has_many :topics, through: :paintings
end

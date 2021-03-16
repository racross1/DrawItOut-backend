class Painting < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_one_attached :image
end

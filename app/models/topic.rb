class Topic < ApplicationRecord
    has_many :paintings
    has_many :users, through: :paintings
end

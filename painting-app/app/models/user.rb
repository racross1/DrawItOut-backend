class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :paintings, dependent: :destroy
    has_many :topics, through: :paintings

end

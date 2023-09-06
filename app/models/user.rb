class User < ApplicationRecord
    has_secure_password 

    validates :username, presence: true, uniqueness: true

    has_many :reviews
    has_many :movies, through: :reviews

    # //create user profile page - adds movies that the user has reviewed
end

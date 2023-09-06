class Review < ApplicationRecord
    
    validates :comment, presence: true, length: { maximum: 100}
    validates :user_id, uniqueness: { scope: :movie_id, message: "Limited 1 review per movie" }

    belongs_to :user 
    belongs_to :movie

    def username 
        self.user.username
    end
end

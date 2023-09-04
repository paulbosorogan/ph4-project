class Review < ApplicationRecord
    validates :comment, presence: true, length: { maximum: 100}
    
    belongs_to :user 
    belongs_to :movie

    def username 
        self.user.username
    end
end

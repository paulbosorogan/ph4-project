class Review < ApplicationRecord
    validates :comment, length: { maximum: 100}
    
    belongs_to :user 
    belongs_to :movie

    def username
        self.user.username  
    end
end

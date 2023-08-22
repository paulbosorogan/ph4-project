class ReviewsController < ApplicationController
    wrap_parameters format: []
    
    def index 
        if session[:user_id]
            reviews = Review.all 
            render json: reviews
        else 
            render json: { error: "Not authorized"}, status: :unauthorized 
        end
    end
    
    def create 
        review = Review.create!(review_params)
        render json: review, status: :created 
    end

    private 

    def review_params 
        params.permit(:comment)
    end
end

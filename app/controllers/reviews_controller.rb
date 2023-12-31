class ReviewsController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    
    def index 
        if session[:user_id]
            reviews = Review.all 
            render json: reviews
        else 
            render json: { error: "Not authorized"}, status: :unauthorized 
        end
    end
    
    def create 
        review = @curent_user.reviews.create!(review_params)
        render json: review, status: :created 
       
    end

    def update 
        review = @curent_user.reviews.find_by(id: params[:id])
        review.update(review_params_update)
        render json: review, status: :created 
    end 


    def destroy 
        review = @curent_user.reviews.find_by(id: params[:id])
        review.destroy
        render json: review
    end

    private 

    def review_params_update 
        params.permit(:comment, :movie_id)
    end 

    def review_params 
        params.permit(:comment, :movie_id)
    end
     
    def render_not_found(exception)
        render json: { errors: "#{exception.model} not found"}, status: :not_found
    end
    
end

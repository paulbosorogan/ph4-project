class ReviewsController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
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
        review = find_review
        review.destroy
        head :no_content
    end

    private 
    def find_review
        review = Review.find(params[:id])
    end

    def review_params_update 
        params.permit(:comment, :movie_id)
    end 

    def review_params 
        params.permit(:comment, :movie_id)
    end
     
    def render_not_found(exception)
        render json: { error: "#{exception.model} not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end 
    
end

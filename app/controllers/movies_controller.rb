class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

    
    def index
        movies = Movie.all 
        render json: movies, status: :ok
    end

    def show 
        movie = Movie.find_by(id: params[:id])
        render json: movie, status: :ok
    end

    private 

    def render_not_found 
        render json: { error: "Movie not found"}, status: :not_found
    end
end

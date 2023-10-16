class MoviesController < ApplicationController
    skip_before_action :authorize, only: [:index]

    def index
        movies = Movie.all 
        render json: movies, status: :ok
    end

    def create 
        movie = Movie.create!(movie_params)
        render json: movie, status: :created
    end

    private 
    def movie_params 
        params.require(:movie).permit(:title, :year, :runtime, :director, :starring, :short, :trailer, :image_url, :genre)
    end

    
end

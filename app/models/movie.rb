class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :users, through: :reviews
    

    def self.after_this(year)
        puts 'Hello this is'
        #iterate through movies 
        #compare movie.year with argument movie
        # return list with movies that fufil the requirement
        movies = Movie.all
        movies.select { |movie|  movie.year > year}
    end

end

# Make a custom method that takes an argument of an integer which is a year. Find all the movies that were made after this year and return them as an array of movie objects.


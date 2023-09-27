import React from 'react'
import Header from './Header'
import MoviePoster from './MoviePoster'


 function MovieList({movies}){
  
//conditional rendering 
//if user commented on 1 movie, that movie won't show up in the movies list 
// if user.username !== movie.review.username, render movie 

if(!movies) return <div>Loading...</div>

  return (
    <>
    <div> 
        <Header/>
    </div>
     <div className='row'>

    {movies?.map(movie =>(
      <MoviePoster key={movie.id} movie={movie} />
    ))}

     </div>
     </>
  )
}

export default MovieList
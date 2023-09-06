import React from 'react'
import Header from './Header'
import MoviePoster from './MoviePoster'


 function MovieList({movies}){
  

  return (
    <>
    <div> 
        <Header/>
    </div>
     <div className='row'>

    {movies.map((movie)=> (
            <MoviePoster key={movie.id} movie={movie} />
        ))}

     </div>
     </>
  )
}

export default MovieList
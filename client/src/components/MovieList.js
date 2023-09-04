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
            <MoviePoster movie={movie} key={movie.tile}/>
        ))}

     </div>
     </>
  )
}

export default MovieList
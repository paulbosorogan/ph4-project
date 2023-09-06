import React from 'react'
import { useParams } from 'react-router-dom'
import ReviewContainer from './ReviewContainer';


function MovieDetails({movies, setMovies}) {

    const {id} = useParams();

    const currentMovie = movies.find(movie => movie.id == id)

    function addReview(review){
        const newReviews = [...currentMovie.reviews, review]
        currentMovie.reviews = newReviews 
        const filteredMovies = movies.filter( movie => movie.id !== review.movie_id)
        const newMovies = [...filteredMovies, currentMovie]
        setMovies(newMovies)
    }
    

    function onUpdateReview(updatedReview){
      const reviewUpdate = movies.map((movie)=>{
        if(movie.id === updatedReview.movie_id){
          const refilterReviews = movie.reviews.filter((rev)=> rev.id !== updatedReview.id)
          return {
            ...movie,
            reviews: [...refilterReviews, updatedReview]
          }
        } else {
          return movie
        }
      })
      setMovies(reviewUpdate)
    }
    
    function onDeleteReview(){
      console.log('Deleted')
    }
    
    if (!currentMovie) {
      return <div>Loading...</div>
    } 
  return (
    <>

    <div className='movie-page'>
        
        <div className='card'>
            <div className='movie-card'>
                <h3><b>{currentMovie.title}</b></h3>
                <img src={currentMovie.image_url} alt="Movie Poster"/>
            </div>
            <div className='movie-card'>
                <hr></hr>
                <div className='col-md-8'>
                    
                    <p><b>Director/s:</b> {currentMovie.director}</p>
                    <p><b>Starring:</b> {currentMovie.starring}</p>
                    <p><b>Movie summary:</b> {currentMovie.short}</p>
                    <p><small><b>Year:</b> {currentMovie.year} <b>Runtime:</b> {currentMovie.runtime}min</small></p>
                
                </div>
             
         </div>
        </div>
        <div className='review-container'>
            <ReviewContainer movie={currentMovie} addReview={addReview} 
            onDeleteReview={onDeleteReview}
            onUpdateReview={onUpdateReview}/>
        </div> 
    </div>
    </>
  )
}

export default MovieDetails

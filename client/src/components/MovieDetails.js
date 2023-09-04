import React, {useState, useEffect} from 'react'
import { useParams } from 'react-router-dom'
import ReviewContainer from './ReviewContainer';




function MovieDetails({movies, setMovies}) {

    const {id} = useParams();
    const [currentMovie, setCurrentMovie] = useState({reviews: []})
    console.log(currentMovie)

    useEffect(()=> {
        const singleMovie = movies.find(movie => movie.id == id)
        setCurrentMovie(singleMovie)
    },[])

    function addReview(review){
        const newReviews = [...currentMovie.reviews, review]
        currentMovie.reviews = newReviews 
        const filteredMovies = movies.filter( movie => movie.id !== review.movie_id)
        const newMovies = [...filteredMovies, currentMovie]

        setCurrentMovie(currentMovie)
        setMovies(newMovies)
    }
  
    function onDeleteReview(deletedReview){
      const afterDelete = movies.map((movie)=>{
        if(movie.id === deletedReview.movie_id){
          const filterDelete = movie.reviews.filter((rev)=> rev.id !== deletedReview.id)
          return {
            ...movie,
            reviews: filterDelete
          }
        } else {
          return movie
        }
      })
      setCurrentMovie(currentMovie)
      setMovies(afterDelete)
    }
    
    function onUpdateReview(updatedReview){
      const updateReview = movies.map((movie)=>{
        if(movie.id === updatedReview.movie_id){
          const refilterReviews = movie.reviews.filter((review)=> review.id !== updatedReview.id)
          return {
            ...movie,
            reviews: [updatedReview, ...refilterReviews]
          }
        } else {
          return movie
        }
      })
      setMovies(updateReview)
    }
    
  return (
    <>

    <div className='movie-page'>
        
        <div className='card'>
            <div className='movie-card'>
                <img src={currentMovie.image_url} alt="Movie Poster"/>
            </div>
            <div className='movie-card'>
                <hr></hr>
                <div className='col-md-8'>
                    <h3><b>{currentMovie.title}</b></h3>
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

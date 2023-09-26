import React, {useContext}  from 'react'
import { useParams } from 'react-router-dom'
import ReviewContainer from './ReviewContainer';
import { UserContext } from '../contexts/UserContext';
import Trailer from './Trailer';


function MovieDetails({movies, setMovies}) {
    const {user, setUser} = useContext(UserContext)
    
    const {id} = useParams();
    const currentMovie = movies.find(movie => movie.id == id)



    function addReview(review){
        const newReviews = [...currentMovie.reviews, review]
        currentMovie.reviews = newReviews 
        
        const userCopy = {...user, 
        movies: [...user.movies, currentMovie], 
        reviews: [...user.reviews, review]}
        setUser(userCopy)
        
        const filteredMovies = movies.filter( movie => movie.id !== review.movie_id)
        const newMovies = [...filteredMovies, currentMovie]
        setMovies(newMovies)

    }
    

    function onUpdateReview(updatedReview){
      const reviewUpdate = movies.map((movie)=>{
        if(movie.id === updatedReview.movie_id){
          const updatedReviews = movie.reviews.map((rev)=> {
            if(rev.id == updatedReview.id){
              return updatedReview
            } else  {
              return rev
            }
          })
          return {
            ...movie,
            reviews: updatedReviews
          }
        } else {
          return movie
        }
      })
      setMovies(reviewUpdate)
    }
    
    function onDeleteReview(deletedRev){
      const afterDeleteRev = movies.map((movie)=>{
        if(movie.id === deletedRev.movie_id){
          const filterDeleteRev = movie.reviews.filter((rev)=> rev.id !== deletedRev.id)
          return {
            ...movie,
            reviews: filterDeleteRev
          }
        } else {
          return movie
        }
      })
      setMovies(afterDeleteRev)
      //update user state so the movie will be deleted from the user profile list
      //step1: remove the movie from the user movie list
      //step2: make copy of the user with new movie list
      //step3: update state
      const userDeletedMovie = user.movies.filter((movie) => movie.id !== deletedRev.movie_id)
      const userDeleteReview = user.reviews.filter ( rev => rev.id !== deletedRev.id)
    
      const copyUser2 = {...user, movies: userDeletedMovie, reviews: userDeleteReview}
      setUser(copyUser2)
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
        <div className='trailer-container'>
            <Trailer trailer={currentMovie.trailer}/>
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

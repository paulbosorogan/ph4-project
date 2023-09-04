import React from 'react'

import ReviewForm from './ReviewForm'
import Review from './Review'

function ReviewContainer({movie, addReview, onDeleteReview, onUpdateReview}) {


  return (
    <div className='review-page'>
      <div>
          <h1>Reviews:</h1>
          <hr></hr> 
          {movie.reviews.map((review) => (
            <Review key={review.id} movie={movie} review={review} onDeleteReview={onDeleteReview} onUpdateReview={onUpdateReview}/>
          ))}
        </div>

        <h2>Post a review</h2>
        <ReviewForm movie={movie} addReview={addReview}/>
    </div>
  )
}

export default ReviewContainer
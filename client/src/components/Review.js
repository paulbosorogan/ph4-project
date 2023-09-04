import React, { useState, useContext } from 'react'

import EditReview from './EditReview'
import { UserContext } from '../contexts/UserContext'


function Review({review, movie, onDeleteReview, onUpdateReview}) {
  const {id, username, comment} = review
  const [isEdit, setIsEdit] = useState(false)
  const {user} = useContext(UserContext)

  function activateEdit(){
    setIsEdit((isEdit)=> !isEdit)
    console.log('Yes edit button')
  }

  function handleDeleteReview(e){
    e.preventDefault()

    fetch(`/reviews/${review.id}`,{
      method: "DELETE"
    })
    .then(deletedReview => onDeleteReview(deletedReview))
  }

  if (user == username) return <EditReview/>

  return (
    <div className='review-card'>
      <p><b>{review.username}</b> says:</p>
      <p>{review.comment}</p>
      
        {
          isEdit? (<EditReview id={id} 
            movie={movie}
            username={username} 
            serverComment={comment}
            activateEdit={activateEdit}
            onUpdateReview={onUpdateReview}/>) : (
            <div className="btn-group">
            <button className='edit-bttn' onClick={activateEdit} role='img'>✏️</button>
            <button className="trash-bttn-detail" onClick={handleDeleteReview} role='img'>🗑</button>
            </div>
          )
        }
       
    </div>
  )      
}

export default Review
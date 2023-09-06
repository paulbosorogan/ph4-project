import React, {useState} from 'react'
import FormField from '../styles/FormField'
import Button from '../styles/Button'
import Error from '../styles/Error'

function EditReview({id, serverComment, activateEdit, movie, onUpdateReview}) {

    const [newComment, setNewComment] = useState(serverComment)
    const [errors, setErrors] = useState([])

    
  function handleEditReview(e){
    e.preventDefault()

    fetch(`/reviews/${id}`,{
      method: "PATCH",
      headers: {
        "Content-Type":"application/json"
      },
      body: JSON.stringify({comment: newComment, movie_id: movie.id})
    })
    .then((r)=> {
      if (r.ok) {
        r.json()
        .then(onUpdateReview)
      } else {
        r.json().then((err)=> setErrors(err.errors))
      }
    })
    activateEdit()
  }
  return (
    <div className='edit-container'>
      <form onSubmit={handleEditReview}>
        <FormField >
        <hr></hr>
            <h3>Edit your review</h3>
            <input 
            type='text'
            value={newComment}
            onChange={ e=> setNewComment(e.target.value)}
            />
            <Button>Submit</Button>
            <FormField>
                {errors?.map((err)=>(
                    <Error key={err}>{err}</Error>
                ))}
            </FormField>
        </FormField>
        </form>
    </div>
  )
}

export default EditReview
import React, {useState} from 'react'
import Button from '../styles/Button'
import FormField from '../styles/FormField'
import Error from '../styles/Error'



 function ReviewForm({movie, addReview}) {
    const [review, setReview] = useState('')
    const [errors, setErrors] = useState([])
    const [isLoading, setIsLoading] = useState(false)

    function handleAddReview(e){
        e.preventDefault()
        setIsLoading(true)
        fetch(`/reviews`, {
            method: 'POST',
            headers: {
                "Content-type" : "application/json",
            },
            body: JSON.stringify({comment: review, movie_id: movie.id})
        }).then((r) => {
            setIsLoading(false)
            if (r.ok) {
              r.json()
              .then(addReview)
            } else {
              r.json().then((err)=> setErrors(err.errors))
            }
          });
          setReview('')
        }
    
  return (
    <div className='review-form'>
        <form onSubmit={handleAddReview}>
            <label htmlFor='text'>Review:</label>
            <br></br>
            <input 
            id='review'
            type='text'
            value={review}
            autoComplete='off'
            className='review-input'
            onChange={(e)=> setReview(e.target.value)}
            />
           
            <Button type='submit'>
                {isLoading ? "Loading.." : "Submit review"}
            </Button>

            <FormField>
                {errors.map((err)=> (
                    <Error key={err}>{err}</Error>
                ))}
            </FormField>
        </form>
    </div>
  )
}

export default ReviewForm
import React from 'react'
import { NavLink } from 'react-router-dom'


 function MoviePoster({movie: {id, image_url}}) {

  return (
    <>
       <NavLink to={`/movies/${id}`}> <div className='image-container d-flex
         justify-content-start m-3'>
            <img  src={image_url} alt="movie poster" />
            <div className='overlay d-flex align-items-center justify-content-center'>
              <span>See movie details <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
  <path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z"/>
</svg></span>
					</div>
        </div></NavLink>
        
    </>
     
  )
}


export default MoviePoster
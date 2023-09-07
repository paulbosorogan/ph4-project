import React from 'react'
import MoviePoster from './MoviePoster'


function UserProfile({user}) {

    const num = user.movies.length
    
  return (

    <div className='user-profile'>
        <div className='user-box'>
        <h1 className='user'>{user.username}!</h1>
        </div>
        <hr></hr>
        <h2>We hope you enjoy our rating application!</h2>
        <p>Below you will find a list with all the movies you have interacted so far. You have reviewed <b className='num'>{num}</b> {num==1 ? 'movie' : 'movies'}! Way to go!</p>
        {user.movies.map(movie=> (
            <div className='user-movies' key={movie.id}>
                <div className='user-movies-info'>
                    <h2>{movie.title}</h2>
                    <p>Director/s: {movie.director}</p>
                    <p><small>Year: {movie.year}</small></p>
                    <MoviePoster movie={movie}/>
                </div>
            </div>))}
    </div>
  )
}

export default UserProfile
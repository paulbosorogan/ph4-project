import React, {useContext} from 'react'
import '../index.css'
import { UserContext } from '../contexts/UserContext'
import Header from './Header'


 function Home() {
  const {user} = useContext(UserContext)
  return (
    <>
    <div className='homepage'>
    <Header/>
      <hr></hr>
      <h1 className='greeting'>Welcome, {user.username}!</h1>
  
      <hr></hr>
      <p >We are pleased to have you with us on our new movie rating website.</p>
      <p className='greeting-text'>If you are a movie lover, you came to the right place! </p>
      <p className='greeting-text'>Please feel free to enjoy our premium selection of movies.</p>
      <br></br>
    </div>
    </>
  )
}

export default Home
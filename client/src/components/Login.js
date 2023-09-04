import React, {useState, useContext} from 'react'
import LoginForm from './LoginForm'
import SignUpForm from './SignUpForm'
import { UserContext } from '../contexts/UserContext'
import Header from './Header'
import '../index.css'
import Button from '../styles/Button'

function Login() {
    const [showLogin, setShowLogin] = useState(true)
    const {setUser} = useContext(UserContext)
    
  return (
    <div className='homepage'>
       <Header/>

       <p className='greeting'>Welcome!</p>
       <p className='greeting-text'>Join the new movie rating app that's been taking over the internet. Today.</p>

        {
            showLogin ? (
                <>
                <LoginForm setUser={setUser} />
                <hr></hr>
                <p className='form'>
                    Don't have an account? &nbsp;
                    <Button
                    onClick={()=> setShowLogin(false)}>
                        Sign Up
                    </Button>
                </p>
                </>
            ) : (
                <>
                <SignUpForm setUser={setUser} />
                <hr></hr>
                <p className='form'>
                    Don't have an account? &nbsp;
                    <Button
                    onClick={()=> setShowLogin(true)}>
                        Log In
                    </Button>
                </p>
                </>
            )

        }
    </div>
  )
}

export default Login

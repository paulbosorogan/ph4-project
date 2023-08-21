import NavBar from './components/NavBar.js'
import React, {useState, useEffect} from 'react';
import { Routes, Route } from 'react-router-dom'
import './index.css';
import Home from './components/Home.js'
import MovieList from './components/MovieList.js'
import Signup from './components/Signup.js';
// import Login from './components/Login.js';
import MovieCard from './components/MovieCard.js';


function App() {
  const [movies, setMovies] = useState([])
  const [user, setUser] = useState(false)

  //Auto-login
  useEffect(()=>{
    fetch("/me").then((r)=> {
      if (r.ok) {
        r.json().then((user)=> setUser(user))
      }
    })
  },[])

  useEffect(()=>{
    fetch('/movies')
    .then(res=>res.json())
    .then(data => setMovies(data))
  },[])


if (!user) return <Signup/>

  return (
    <div>
           <NavBar user={user} setUser={setUser}/>
            <div className='App-header'>
              <Routes>
                <Route exact path='/' element={<Home/>} />
                <Route exact path='/movies' element={<MovieList movies={movies} />} />
                <Route exact path='/movies/:id' element={<MovieCard movies={movies} />} />
              </Routes>
            </div>
  
  </div>
  )
}

export default App;

import React, {useState, useEffect, useContext} from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css'
import Navigation from './components/Navigation';
import { UserContext } from './contexts/UserContext';
import { Route, Routes } from 'react-router-dom';
import Home from './components/Home';
import Login from './components/Login';
import MovieList from './components/MovieList';
import MovieDetails from './components/MovieDetails';
import ReviewContainer from './components/ReviewContainer';
import UserProfile from './components/UserProfile';
import MovieForm from './components/MovieForm';

function App() {
    
    const {user} = useContext(UserContext)
    const [movies, setMovies] = useState([])

    useEffect(()=>{
        fetch('/movies')
        .then((r)=> r.json())
        .then(data =>setMovies(data))
      },[])

      console.log(movies)
    
    if(!user) return <Login/>

    return (
      <div className='movie-container'>
        <div>
          <Navigation/>
        </div>
          <Routes>
            <Route exact path='/' element={<Home />} />
            <Route exact path='/movies' element={<MovieList movies={movies} user={user}/>} />
            <Route exact path='/movies/:id' element={<MovieDetails movies={movies} setMovies={setMovies}/>} />
            <Route exact path='/movies/:id/reviews' element={<ReviewContainer/>} />
            <Route exact path='/movies/new' element={<MovieForm setMovies={setMovies} />} />
            <Route exact path='/user-profile' element={<UserProfile user={user}/>} />
          </Routes>
        </div>
    );
  };
  
  export default App;
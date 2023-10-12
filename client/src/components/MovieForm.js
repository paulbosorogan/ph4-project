import React, {useState} from 'react'
import Error from '../styles/Error';
import FormField from '../styles/FormField';
import Button from '../styles/Button';
import { useNavigate } from 'react-router-dom';

 function MovieForm({setMovies}) {
    const navigate = useNavigate()

    const [title, setTitle] = useState("")
    const [year, setYear] = useState("")
    const [runtime, setRuntime] = useState("")
    const [director, setDirector] = useState("")
    const [starring, setStarring] = useState("")
    const [short, setShort] = useState("")
    const [trailer, setTrailer] = useState("")
    const [image, setImage] = useState("")
    const [genre, setGenre] = useState("")
    const [errors, setErrors] = useState([])
    const [isLoading, setIsLoading] = useState(false)

    function handleMovieSubmit(e) {
        e.preventDefault();
        setIsLoading(true)
        
        fetch("/movies", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ title: title,
            year: year,
            runtime: runtime,
            director: director,
            starring: starring,
            short: short,
            trailer: trailer,
            image_url: image,
            genre: genre
        }),
        }).then((r) => {
          setIsLoading(false);
          if (r.ok) {
            r.json()
            .then(data => setMovies(data))
            .then(()=>navigate('/movies'));
          } else {
            r.json().then((err)=> setErrors(err.errors))
          }
        });
      }

  return (
    <div className='movie-form-container'>
    <form onSubmit={handleMovieSubmit} className='movie-form'>
        <label htmlFor="title">Title</label>
        <input
          type="text"
          id="title"
          autoComplete="off"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
        />
        <label htmlFor="year">Year</label>
        <input
          type="text"
          id="year"
          autoComplete="off"
          value={year}
          onChange={(e) => setYear(e.target.value)}
        />
        <label htmlFor="runtime">Runtime</label>
        <input
          type="text"
          id="runtime"
          autoComplete="off"
          value={runtime}
          onChange={(e) => setRuntime(e.target.value)}
        />
        <label htmlFor="director">Director/s</label>
        <input
          type="text"
          id="director"
          autoComplete="off"
          value={director}
          onChange={(e) => setDirector(e.target.value)}
        />
        <label htmlFor="starring">Actors</label>
        <input
          type="text"
          id="starring"
          autoComplete="off"
          value={starring}
          onChange={(e) => setStarring(e.target.value)}
        />
        <label htmlFor="short">Summary</label>
        <input
          type="text"
          id="short"
          autoComplete="off"
          value={short}
          onChange={(e) => setShort(e.target.value)}
        />
        <label htmlFor="trailer">Youtube Trailer</label>
        <input
          type="text"
          id="trailer"
          autoComplete="off"
          value={trailer}
          onChange={(e) => setTrailer(e.target.value)}
        />
        <label htmlFor="image">Poster</label>
        <input
          type="text"
          id="image"
          autoComplete="off"
          value={image}
          onChange={(e) => setImage(e.target.value)}
        />
        <label htmlFor="genre">Genre</label>
        <input
          type="text"
          id="genre"
          autoComplete="off"
          value={genre}
          onChange={(e) => setGenre(e.target.value)}
        />
        <br></br>
       <Button variant="fill" color="primary" type="submit">
          {isLoading ? "Loading..." : "Submit"}
        </Button>
        <FormField>
        {errors.map((err)=> (
          <Error key={err}>{err}</Error>
        ))}
        </FormField>
    </form>
    </div>
  );
  }

export default MovieForm
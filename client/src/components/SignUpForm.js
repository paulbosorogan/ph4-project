import React, {useState} from 'react'
import Error from '../styles/Error';
import FormField from '../styles/FormField';
import Button from '../styles/Button';




function SignUpForm({setUser}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("")
  const [errors, setErrors] = useState([])
  const [isLoading, setIsLoading] = useState(false)
  
  
  function handleSubmit(e) {
    e.preventDefault();
    setIsLoading(true)
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password,
         password_confirmation : passwordConfirmation }),
    }).then((r) => {
      setIsLoading(false);
      if (r.ok) {
        r.json().then((user) => setUser(user));
      } else {
        r.json().then((err)=> setErrors(err.errors))
      }
    });
  }
  
  return (
    <div className='sign-up-container'>
    <form onSubmit={handleSubmit} className='sign-up-form'>
      
        <label htmlFor="username">Username</label>
        <input
          type="text"
          id="username"
          autoComplete="off"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label htmlFor="password">Password</label>
        <input
          type="password"
          id="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <label htmlFor="password">Password Confirmation</label>
        <input 
          type="password"
          id="password_confirmation"
          value={passwordConfirmation}
          onChange={(e) => setPasswordConfirmation(e.target.value)}
        /> 
        <br></br>
       <Button variant="fill" color="primary" type="submit">
          {isLoading ? "Loading..." : "Login"}
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

export default SignUpForm
import React, {useState} from 'react'
import Error from '../styles/Error';
import FormField from '../styles/FormField';
import Button from '../styles/Button';



function LoginForm({setUser}){
const [username, setUsername] = useState("");
const [password, setPassword] = useState("");
const [errors, setErrors] = useState([])
const [isLoading, setIsLoading] = useState(false)


function handleSubmit(e) {
  e.preventDefault();
  setIsLoading(true)
  fetch("/login", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ username, password }),
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
  <div className='log-in-container'>
  <form onSubmit={handleSubmit} className='log-in-form'>
    
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
        autoComplete="current-password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
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
);
}

export default LoginForm;

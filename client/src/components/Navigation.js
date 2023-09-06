import React, {useContext} from 'react'
import '../index.css'
import { Link, NavLink } from 'react-router-dom'
import {Navbar, Nav} from 'react-bootstrap'
import { UserContext } from '../contexts/UserContext'


function Navigation() {
  const {user, setUser} = useContext(UserContext)
  const avatar = <img className='avatar' src='https://i.imgur.com/7fJB94l.jpg'/>
   
  function handleLogout(){
    fetch('/logout', {
      method: "DELETE" 
    }).then((r)=> {
      if (r.ok) {
        setUser(null)
      }
    })
  }

  return (
    <nav>
    <Navbar collapseOnSelect fixed='top' expand='sm' bg='dark' variant='dark'>
    <Navbar.Toggle aria-controls='navbarScroll' data-bs-target='#navbarScroll' />
        <Navbar.Collapse id="navbarScroll">
         <Nav>
            <NavLink eventkey='1' as={Link} to='/'>Home</NavLink>
            <NavLink eventkey='2' as={Link} to='/movies'>Movies</NavLink>
            <NavLink eventkey='3' as={Link} to='/user-profile'>User Profile</NavLink>
            <p className='nav-greeting'>Welcome, {user.username} {avatar}</p>
            <NavLink eventkey='3' onClick={handleLogout} className='logout'>Log Out</NavLink>   
         </Nav>
        </Navbar.Collapse>
    </Navbar>
</nav>
  )
}

export default Navigation
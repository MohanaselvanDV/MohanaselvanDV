import React, { useState } from 'react';
// import axios from 'axios';
function LoginPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch('http://localhost:8080/login', {
        method: "POST",
        headers: {
          "content-Type": "application/json",
        },
        body:JSON.stringify({customer_mail:email, customer_password:password},)
       
      });
     
      const data =await response.json();
      console.log(data);

    } catch (error) {
      console.error("Error",error) // Handle login errors
    }
  };

   return (
    <div>
      <h2>Login</h2>
      <form onSubmit={handleLogin}>
        <div>
          <label>Email:</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Password:</label>
          <input
            type="text"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        <div>
          <button type="submit">Login</button>
        </div>
      </form>
      {error && <p>{error}</p>}
    </div>
  );
}
export default LoginPage;
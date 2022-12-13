import React from 'react';
import axios from 'axios';

const LoginForm = (props) => {
  const handleSubmit = (event) => {
    event.preventDefault();

    const username = event.target.username.value;
    const password = event.target.password.value;

    axios.post('http://localhost:3016/api/userAPI', {
      username,
      password
    })
    .then(res => {
      props.onSubmit(res.data);
    });
  }

  return (
    <form onSubmit={handleSubmit}>
      <label>Username: 
        <input type="text" name="username" />
      </label><br/>
      <label>Password: 
        <input type="password" name="password" />
      </label><br/>
      <input type="submit" value="Submit" />
    </form>
  );
};

export default LoginForm;
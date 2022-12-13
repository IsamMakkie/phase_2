import axios from 'axios';
import { useRouter } from 'next/router';
import LoginForm  from '../components/loginForm'
// our-domain.com/ 
export default function Home() { 
   const router = useRouter();
  return (
      <LoginForm onSubmit = {(data) => {
        console.log(data)
        if(data.message == 'user not found'){
          alert('user not found')
        }
        else{
          router.push('/inventory')
        }
      }} />
  );
  }

// {message: 'user not found'}
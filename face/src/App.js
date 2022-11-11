// import './App.css';
// import { useState, useEffect } from 'react';

// function App() {
//   const [state, setState] = useState();

//   useEffect(() => {

//     const dataFetch = async () => {
//       const data = await (
//         await fetch(
//           "http://localhost:3000/posts/api_v1"
//         )
//       ).json();
//       console.log(data);
//       setState(data);
//     };

//     dataFetch();
//   }, []);


//   return (
//     <div className="App">
//       <h1>A Demonstration of React on Rails</h1>
//       <p>Here I want to add the posts from the Rails Application.</p>
//       {console.log(state)}
//       {state.map((post) => {
//         return(
//           <p>{post}</p>
//         )
//       })}
//     </div>
//   );
// }

// export default App;
import { useState, useEffect } from "react";


export default function App() {
  const [state, setState] = useState([]);

  useEffect(() => {
    const dataFetch = async () => {
      const data = await (
        await fetch(
          "http://localhost:3000/posts/api_v1"
        )
      ).json();

      setState(data);
    };

    dataFetch();
  }, []);

  return (
    <ul>
      {state.map((val) => (
        <li>{val.name}</li>
      ))}
    </ul>
  );
}

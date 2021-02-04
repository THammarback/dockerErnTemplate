import React from 'react';

function App() {
  fetch('localhost/api')
  .then(res => res.json())
  .then(data => console.log(data))
  .catch(err => console.error(err))
  return (
    <h1>AHS</h1>
  );
}

export default App;

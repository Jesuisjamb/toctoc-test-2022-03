import React, { useState, useEffect }  from 'react';
import Grafico from './components/Grafico';

const App = () => {
  const [memData, setMemData]             = useState([]);
  const [reloadMemData, setReloadMemData] = useState([]);
  const [isCompare, setIsCompare]         = useState(false);
  
  const getEpoch = (n) => {
    const rango = 1800 * n; // rango = 30min
    return parseInt((Date.now()/1000) - rango);
  }

  useEffect(() => {
    const getData = async(epochT) => {
      const dataFromDb = await fetchData(epochT);
      setMemData(dataFromDb);
    }
    
    const epochT = getEpoch(1);
    getData(epochT);
  },[])

  const fetchData = async(epoch) => {
    const res = await fetch(`http://localhost:5000/resource/memory?epoch=${epoch}`);
    const data = await res.json();
    return data.dataset;
  }

  const loadCompare = async () => {
    const epochT = getEpoch(6);
    const dataFromDb = await fetchData(epochT);
    setReloadMemData(dataFromDb);
  }

  return (
    <div className="App">
      {
        !memData || (memData.length === 0)?
        <>
          Alerta: No existen registros disponibles en este momento.
        </>:
        <Grafico memData={memData}/>
      }
      

      <button className="compara-btn" onClick={() => {
        setIsCompare(true);
        loadCompare();
      }}>Ampliar el rango de búsqueda</button>
      
      {isCompare && <Grafico memData={reloadMemData}/>}
    </div>
  );
}

export default App;
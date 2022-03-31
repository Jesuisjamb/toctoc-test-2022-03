const sqlite3 = require('sqlite3').verbose();

const addZero = (params) => {
    if(params < 10) return `0${params}`
    return params;
}

const parseEpochDate = (epoch) => {
    const ajuste = 3600 * 0; // 3600seg x Hora de desfase
    const localDate = new Date(((parseInt(epoch)) + ajuste) * 1000);
    const year  = localDate.getFullYear();
    const month = addZero(localDate.getMonth() + 1);
    const day   = addZero(localDate.getDate());
    const hour  = addZero(localDate.getHours());
    const min   = addZero(localDate.getMinutes());
    const sec   = addZero(localDate.getSeconds());
    const parsedDate = `${year}-${month}-${day} ${hour}:${min}:${sec}`
    return [parsedDate];
}

const openConn = () => {
    const db = new sqlite3.Database(process.env._LOCAL_DB, sqlite3.OPEN_READWRITE, (err) => { 
        if (err) return console.error(err.message);
        console.info('Conn a BDD Iniciada...');
    });

    return db;
}

const closeConn = (db) => {
    return db.close((err) => {
        if (err) return console.error(err.message);
        console.info('Conn a BDD Finalizada...');
    });
}

const selectData = (db, timestamp) => {
    console.warn(`[WARN] - timestamp podria variar según su configuración local - ${timestamp}`);
    const sqlQuery = `
        SELECT * FROM recurso 
        WHERE timestamp BETWEEN ? AND datetime('now', 'localtime');
    `;
    
    return new Promise((resolve, reject)=>{
        db.all(sqlQuery, timestamp, (err, rows) => {
            if (err) reject(err.message);
            console.info('Query a BDD Exitosa...');
            resolve(rows)
        });
    })
}

exports.getBddData = async ({epoch}) => {
    const timestamp = parseEpochDate(epoch);
    const db        = openConn();
    const dataset   = await selectData(db, timestamp);
    closeConn(db);

    return { dataset };
}
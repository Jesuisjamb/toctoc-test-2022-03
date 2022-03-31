require('dotenv').config()
const EventEmitter = require('events')
const eventEmitter = new EventEmitter()
const sqlite3      = require('sqlite3').verbose();

// Handler
const { getSysData } = require('./handler/get-sys-data');

// Listener
let db = {};
eventEmitter.on('connect', () => {
    db = new sqlite3.Database(process.env._LOCAL_DB, sqlite3.OPEN_READWRITE, (err) => {
        if (err) return console.error(err.message);
        console.info('[INFO] - Conn a BDD Iniciada...');
    });

    // Definicion de Modelo
    const dbModel = `
        CREATE TABLE IF NOT EXISTS recurso (
            id text(45) PRIMARY KEY NOT NULL,
            hostname text(45) NOT NULL,
            plataforma text(45) NOT NULL,
            memoria int(8) NOT NULL,
            timestamp text(45) NOT NULL
        );
    `
    db.run(dbModel);
});

eventEmitter.on('addMetric', async(db) => {
    const sysData = getSysData();
    const sqlQuery = `
        INSERT INTO recurso (id, hostname, plataforma, memoria, timestamp)
        VALUES (?,?,?,?,datetime('now', 'localtime'));
    `;
    
    return await new Promise((resolve, reject)=>{
    db.run(sqlQuery, sysData, async (err) => {
        if(err) reject(err.message);
        resolve(console.info('[INFO] - Registro insertado...'));
    });
    })
});

eventEmitter.on('removeMetric', (db) => {
    const sqlQuery = `DELETE FROM recurso;`;

    db.run(sqlQuery, (err) => {
        if(err) return console.error(err.message);
        console.warn('[WARN] - Registros Borrados...');
    });
});

eventEmitter.on('disconnect', (db) => {
    db.close((err) => {
        if (err) return console.error(err.message);
        console.info('[INFO] - Conn a BDD Finalizada...');
    });
});

const runAgent = async(t, clearTable) => {
    eventEmitter.emit('connect');

    // Borrado opcional de tabla 
    if(clearTable) eventEmitter.emit('removeMetric', db);

    const cargaOn = setInterval(() => {
        eventEmitter.emit('addMetric', db);
    }, 1000);

    setTimeout(() => {
        clearInterval(cargaOn);
        eventEmitter.emit('disconnect', db);
    }, t * 60 * 1000);
}

// BORRAR REGISTROS
//runAgent(process.env.MIN_DISCONNECT, 1);

runAgent(process.env.MIN_DISCONNECT, 0);

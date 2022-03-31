require('dotenv').config()
const EventEmitter = require('events')
const eventEmitter = new EventEmitter()
const sqlite3      = require('sqlite3').verbose();

// Handler
const { getSysData } = require('./handler/get-sys-data');

// Listener
let db = {};
eventEmitter.on('connect', () => {
    db = new sqlite3.Database('./config/resources.db', sqlite3.OPEN_READWRITE, (err) => { 
        if (err) return console.error(err.message);
        console.info('Conn a BDD Iniciada...');
    });

    // Definicion de Modelo
    db.run("CREATE TABLE IF NOT EXISTS recurso (id text(45) PRIMARY KEY NOT NULL, hostname text(45) NOT NULL, plataforma text(45) NOT NULL, memoria int(8) NOT NULL, timestamp text(45) NOT NULL);");
});

eventEmitter.on('addMetric', (db) => {
    const sysData = getSysData();
    console.info(`Cargando Datos...`);
    const sqlQuery = "INSERT INTO recurso (id, hostname, plataforma, memoria, timestamp) VALUES (?,?,?,?,datetime('now', 'localtime'));";

    db.run(sqlQuery, sysData, (err) => { 
        if(err) return console.error(err.message);
        console.log('Registro insertado...');
    });
});

eventEmitter.on('removeMetric', (db) => {
    const sqlQuery = "DELETE FROM recurso;";

    db.run(sqlQuery, (err) => { 
        if(err) return console.error(err.message);
        console.log('Registros Borrados...');
    });
});

eventEmitter.on('disconnect', (db) => {
    db.close((err) => {
        if (err) return console.error(err.message);
        console.error('Conn a BDD Finalizada...');
    });
});

eventEmitter.emit('connect');
eventEmitter.emit('addMetric', db);
// eventEmitter.emit('removeMetric', db);
eventEmitter.emit('disconnect', db);
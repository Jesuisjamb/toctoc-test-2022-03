const os = require('os');
const { v4: uuidv4 } = require('uuid');

exports.getSysData = () => {
    const id = uuidv4();
    const hostname = os.hostname();
    const platform = os.platform();
    const freemem  = os.freemem();
    const totalmem = os.totalmem()
    const memoria  = totalmem - freemem;
    // const date     = new Date();
    // const fecha    = `${date.getFullYear()}-${date.getMonth()+1}-${date.getDate()}`;
    // const hora     = `${date.getHours()}:${date.getMinutes()}:${date.getSeconds()}`;;

    return [
        id, 
        hostname, 
        platform, 
        memoria, 
        // fecha, 
        // hora
    ];
}
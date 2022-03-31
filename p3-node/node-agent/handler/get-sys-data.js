const os = require('os');
const { v4: uuidv4 } = require('uuid');

exports.getSysData = () => {
    const id = uuidv4();
    const hostname = os.hostname();
    const platform = os.platform();
    const freemem  = os.freemem();
    const totalmem = os.totalmem()
    const memoria  = totalmem - freemem;

    return [
        id, 
        hostname, 
        platform, 
        memoria, 
    ];
}
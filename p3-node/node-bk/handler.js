require('dotenv').config();

const express    = require('express');
const cors       = require('cors');
const bodyParser = require('body-parser');

// Controllers
const resource = require('./src/controller/resourceController');

const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use((req, res, next) => { 
    res.header('Access-Contro-Allow-Origin','*');
    res.header('Access-Contro-Allow-Headers','Origin, X-Requested-With, Content-Type, Accept');
    next();
});
app.use((error, req, res, next) => { 
    if(error instanceof SyntaxError){
        return res.status(500).json({
            msg: 'BAD',
            err: 'Data Invalida'
        });
    }
    else next();
})

app.use('/resource', resource);
app.all('*', (req, res) => { 
    res.status(500).json({
        msg: 'BAD',
        err: 'Ruta Invalida'
    });
})

app.listen(process.env._LOCAL_SERVER_PORT, () => { 
    console.log(`[INFO] - Listening on PORT > ${process.env._LOCAL_SERVER_PORT}`);
});
// Service
const resourceService = require('../service/resourceService')

const express  = require('express');
const router   = express.Router();
const response = express.response;

router.get('/memory', async (req, res = response) =>{
    console.info(`[INFO] - Sending Request -> resourceService.getDetails`);
    res.send(await resourceService.getDetails(req.query));
});

module.exports = router;
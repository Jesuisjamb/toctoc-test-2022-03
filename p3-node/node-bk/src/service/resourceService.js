// Helpers

// Repository
const resourceRepository = require('../repository/resourceRepository');

const getDetails = async (req) => { 
    console.info(`[INFO] - Processing Request -> getBddData`);
    return await resourceRepository.getBddData(req);
};

module.exports = {
    getDetails
}
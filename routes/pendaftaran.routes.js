const express = require('express');
const pendaftaranController = require('../controllers/pendaftaran.controller')

const pendaftaranRoute = express.Router();

pendaftaranRoute.get('/', pendaftaranController.getAllPendaftaran)
pendaftaranRoute.post('/', pendaftaranController.createPendaftaran)
pendaftaranRoute.get('/:id', pendaftaranController.getPendaftaranById)

module.exports = { pedaftaranRoute }
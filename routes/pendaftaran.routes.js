const express = require('express');
const pendaftaranController = require('../controllers/pendaftaran.controller')

const pendafatranRoute = express.Router();

pendaftaranRoute.get('/', pendafatranController.getAllPendaftaran)
pendaftaranRoute.post('/', pendafatranController.createPendaftaran)
pendaftaranRoute.get('/:id', pendaftaranController.getPendaftaranById)

module.exports = { pedaftaranRoute }
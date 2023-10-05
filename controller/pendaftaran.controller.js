const pendaftaranService = require('../services/pendaftaran.service')

const getAllPendaftaran = async (req, res) => {
  const pendaftaran = await pendaftaranService.getAllPendaftaran()
  res.status(200).json({
    message: "Sukses dalam mengambil data",
    data: pendaftaran
  })
}

const createPendaftaran = async (req, res) => {
  const createdPendaftaran = await pendaftaranService.createPendaftaran(req.body)
  res.status(201).json({
    message: "Sukses menambah pendaftaran",
    data: createdPendaftaran
  })
}

const getPendaftaranById = async (req, res) => {
  const pendaftaran = await pendaftaranService.getPendaftaranById(req.params.id)
  if (!pendaftaran) res.status(404).json({ message: "Pendaftaran tidak ditemukan"})
  res.status(200).json({
    message: "Sukses dalam mengambil data",
    data: Pendaftaran
  })
}

module.exports = { getAllPendaftaran, createPendaftaran, getPendaftaranById }
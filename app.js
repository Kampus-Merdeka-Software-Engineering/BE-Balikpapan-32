require('dotenv').config;

const cors = require('cors');
const express = require('express');

const {prisma} = require('./config/prisma')

const app = express();
const port = process.env.PORT || 3000;

app.use(cors()); //untuk mengaktifkan cors, agar API bisa diakses dari luar atau dari FrontEnd
app.use(express.json()) //parse request body dari JSON ke Object
app.use(express.urlencoded({ extended : true })) //parse request body dari x-www-form-urlencoded ke object 


//rute get untuk pendaftaran
app.get('/pendaftaran', async (req, res) => {
    const pendaftaran = await prisma.pendaftaran.findMany();
    res.status(200).json(pendaftaran)
})

//rute get untuk ourteam
app.get('/ourteam', async (req, res) => {
    const ourteam = await prisma.ourTeam.findMany();
    res.status(200).json(ourteam)
})

//rute get untuk feedback
app.get('/feedback', async (req, res) => {
    const feedback = await prisma.feedback.findMany();
    res.status(200).json(feedback)
})

//rute get untuk artikel
app.get('/artikel', async (req, res) => {
    const artikel = await prisma.artikel.findMany();
    res.status(200).json(artikel)
})

//rute get untuk vidio
app.get('/vidio', async (req, res) => {
    const vidio = await prisma.vidio.findMany();
    res.status(200).json(vidio)
})


//rute untuk post pendaftaran

app.post('/pendaftaran', async (req, res) => {
    const { nama, email, jenis_konseling, pilihan_dokter } = req.body;
    console.log(req.body);
    const createPendaftaran = await prisma.pendaftaran.create({
        data: {
            nama,
            email,
            jenis_konseling,
            pilihan_dokter,
        }
    })
    res.status(201).json({
        message : "Pendaftaran Telah Berhasil",
        data : createPendaftaran
    })
})


//rute post untuk feedback
app.post('/feedback', async (req, res) => {
    const { nama, pesan } = req.body;
    console.log(req.body);
    const createFeedback = await prisma.feedback.create({
        data: {
            nama,
            pesan,
        }
    })
    res.status(201).json({
        message : "Ulasan Telah Di Buat",
        data : createFeedback
    })
})



app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
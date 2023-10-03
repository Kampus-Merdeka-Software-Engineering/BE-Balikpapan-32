require('dotenv').config()
const { pool } = require('./config/database');
const http = require('node:http');

const hostname = '127.0.0.1';
const port = process.env.PORT

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello, World!!!!!\n');
});

server.listen(port, hostname, async (req, res) => {
  console.log(`Server running at http://${hostname}:${port}/`)
  
  const connection = await pool.getConnection()
  const [mahasiswa] = await connection.query('SELECT * FROM dokter')
  res.status(200).json({
    message: "Sukses dalam mengambil data",
    data: mahasiswa
  })
});
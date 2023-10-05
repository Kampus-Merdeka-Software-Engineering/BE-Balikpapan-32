const { pool } = require('../config/database');

const getAllPendafataran = async () => {
  const connection = await pool.getConnection()
  try {
    const [pendaftaran] = await connection.query('SELECT * FROM pendaftaran')
    return pendaftaran
  } catch (error) {
    console.error(error)
    return error
  } finally {
    connection.release()
  }  
}


const createPendafatran = async (pendafatran) => {
  const connection = await pool.getConnection()
  try {
    // const passwordHashed = await bcrypt.hash(pendaftaran.password, 10)
    const createdPendaftaran = await connection.query('INSERT INTO PENDAFTARAN (id, nama, email, jenis_konseling, pilihan_dokter, dob) VALUES (?, ?, ?, ?, ?)', [pendaftaran.id, pendaftaran.nama, pendaftaran.email, pendaftaran.jenis_konseling, pendaftaran.pilihan_dokter, pendaftaran.dob]
    );
  return createdPendaftaran
  } catch (error) {
    return error
  } finally {
    connection.release()
  }
}

const getPendaftaranById = async (id) => {
  const connection = await pool.getConnection()
  try {
    const [pendaftaran] = await connection.query('SELECT * FROM PENDAFTARAN WHERE id = ?', [id])
    return pendaftaran
  } catch (error) {
    return error
  } finally {
    connection.release()
  }
}

module.exports = { getAllPendaftaran, createPendaftaran, getPendaftaranById }
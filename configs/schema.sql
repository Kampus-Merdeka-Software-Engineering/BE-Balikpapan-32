CREATE DATABASE IF NOT EXISTS `caring_is_Loving`;

USE `caring_is_Loving`;


CREATE TABLE IF NOT EXISTS dokter (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(255) NOT NULL,
  foto text() NOT NULL,
  keterangan text() NOT NULL
);

CREATE TABLE IF NOT EXISTS pendaftaran (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  jenis_konseling VARCHAR(255) NOT NULL,
  dokter_id INT NOT NULL,
  FOREIGN KEY (dokter_id) REFERENCES dokter(id)
);


-- ===================================
INSERT INTO dokter (nama, nim, username, email, password) VALUES
('icanq', '15/379093/TK/43035', 'icanq', 'icanq@hotmail.com', 'f9uopasidfhilashdfiuash');
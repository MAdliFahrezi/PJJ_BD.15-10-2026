CREATE DATABASE IF NOT EXISTS perpustakaan;

USE perpustakaan;

CREATE TABLE IF NOT EXISTS buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul_buku VARCHAR(100) NOT NULL,
    pengarang VARCHAR(100) NOT NULL,
    tahun_terbit YEAR,
    stok INT NOT NULL
);

INSERT INTO buku
    (judul_buku, pengarang, tahun_terbit, stok)
VALUES
    ('Laskar Pelangi', 'Andrea Hirata', 2005, 10),
    ('Bumi', 'Tere Liye', 2014, 8),
    ('Negeri 5 Menara', 'Ahmad Fuadi', 2009, 12);

SELECT * FROM buku;

UPDATE buku
SET stok = 15
WHERE id_buku = 1;

SELECT * FROM buku;

DELETE FROM buku
WHERE id_buku = 2;

SELECT * FROM buku;

CREATE USER IF NOT EXISTS
    'petugas'@'localhost'
IDENTIFIED BY 'Petugas123!';

GRANT SELECT, INSERT
ON perpustakaan.buku
TO 'petugas'@'localhost';

CREATE USER IF NOT EXISTS
    'kepala'@'localhost'
IDENTIFIED BY 'Kepala123!';

GRANT SELECT
ON perpustakaan.buku
TO 'kepala'@'localhost';

SHOW GRANTS FOR 'petugas'@'localhost';

SHOW GRANTS FOR 'kepala'@'localhost';
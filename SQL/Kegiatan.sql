-- Active: 1675790193375@@pijardb-do-user-13063919-0.b.db.ondigitalocean.com@25060@crud-rizky@public
/*Buatlah table dengan ketentuan sebagai berikut:
i.	Table kota yang mana 1 kota memiliki banyak kabupaten, banyak kecamatan dan banyak desa. Kota memiliki entity nama dan kode
ii.	Table kabupaten yang mana 1 kabupaten hanya memiliki 1 kota dan banyak kegiatan Kabupaten memiliki entity nama dan kode
iii.	Table Kegiatan yang mana 1 kegiatan berada dibawah 1 kota dan bisa berada dibawah 1 kabupaten atau tidak. Kegiatan memiliki entity: kode, nama, tanggal mulai, tanggal akhir. (silakan tambahkan yang anda perlukan)

*/

CREATE TABLE kota (
  id_kota SERIAL PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  kode VARCHAR(20) NOT NULL
);

CREATE TABLE kabupaten (
  id_kabupaten SERIAL PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  kota_id INT NOT NULL,
  FOREIGN KEY (kota_id) REFERENCES kota(id_kota)
);

CREATE TABLE kegiatan(
    id_kegiatan SERIAL PRIMARY KEY ,
    kode_kegiatan VARCHAR(10) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    tgl_mulai DATE NOT NULL,
    tgl_akhir DATE NOT NULL,
    kota_id INT NOT NULL,
    kabupaten_id INT DEFAULT NULL,
    FOREIGN KEY (kota_id) REFERENCES kota(id_kota),
    FOREIGN KEY (kabupaten_id) REFERENCES kabupaten(id_kabupaten)
);

-- input data

INSERT INTO KOTA (nama,kode) VALUES ('Jakarta','JKT');
INSERT INTO KABUPATEN (nama,kota_id) VALUES('Jaksel',2);
INSERT INTO Kegiatan(kode_kegiatan,nama,tgl_mulai,tgl_akhir,kota_id) VALUES ('MLP-100','Mobile Legend Championship','2023-03-25','2023-04-05',1);
INSERT INTO Kegiatan(kode_kegiatan,nama,tgl_mulai,tgl_akhir,kota_id,kabupaten_id) VALUES ('LSNC-2022','Lost Saga National Championship 2022','2022-06-25','2022-09-05',2,2);

---Menampikan Data Table
SELECT kegiatan.kode_kegiatan, kegiatan.nama, kegiatan.tgl_mulai, kegiatan.tgl_akhir, kota.nama as nama_kota,
kab.nama as nama_kabupaten FROM kegiatan as kegiatan
INNER JOIN kota as kota ON kegiatan.kota_id = id_kota
LEFT JOIN kabupaten as kab ON kegiatan.kabupaten_id = id_kabupaten;

SELECT kode_kegiatan, nama, CASE 
  WHEN tgl_mulai > CURRENT_DATE THEN  'Belum Dimulai'
  WHEN tgl_mulai <= CURRENT_DATE AND tgl_akhir >= CURRENT_DATE THEN  'Aktif'
  ELSE  'SELESAI'
END as status
FROM kegiatan;
CREATE DATABASE fakultas;

CREATE TABLE jurusan (
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 kode CHAR(4) NOT NULL,
 nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('Laki-laki','perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

insert into jurusan (kode,nama) values ('KP','Keuangan Perbankan');
insert into jurusan (kode,nama) values ('HI','Hubungan Internasional');

insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'B00190021', 'Rayani', 'perempuan', 'Bandung', '2001-06-01', 'Ujungberung');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'B00190021', 'Rayani', 'perempuan', 'Bandung', '2001-06-02', 'Ujungberung');
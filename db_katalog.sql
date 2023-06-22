-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Jun 2023 pada 16.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_katalog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL,
  `buku_kode` varchar(50) NOT NULL,
  `buku_judul` varchar(50) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `buku_pengarang` varchar(50) NOT NULL,
  `buku_penerbit` varchar(50) NOT NULL,
  `buku_tahun` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`buku_id`, `buku_kode`, `buku_judul`, `kategori_id`, `buku_pengarang`, `buku_penerbit`, `buku_tahun`, `jumlah`) VALUES
(9, 'K0001', 'Mudah Menguasai Framework Laravel', 34, 'Yudho Yudhanto ', 'Elex Media Komputindo', '2019', 11),
(10, 'K0002', 'Scary Lessons - Reincarnation', 38, 'Emi Ishikawa', 'Elex Media Komputindo', '2019', 8),
(11, 'K0003', 'Mahir Bahasa Pemrograman PHP', 34, 'Miftahul Jannah, Sarwandi, Cyber Creative ', 'Elex Media Komputindo', '2019', 6),
(12, 'K0004', 'Di Penghujung Pelukan', 37, 'Iit Sibarani & Momo DM', 'TransMedia Pustaka ', '2017', 4),
(13, 'K0005', 'Kekasih Impian', 36, 'Wardah Maulina', 'Falcon Publishing ', '2019', 12),
(15, 'K0007', 'Zeros Familiar', 38, 'Yamaguchi Noboru', 'Shining Rose Media ', '2016', 14),
(16, 'K0008', 'Jika Hujan Pernah Bertanya', 36, 'Robin Wijaya', 'Matahari ', '2014', 3),
(17, 'K0006', 'Surat Terakhir dari Kekasih ', 37, 'Jojo Moyes', '  Gramedia Pustaka Utama', '2019', 5),
(18, 'K0009', 'Allah, Izinkan Kami Ke Surga-Mu', 39, 'Rudianto', 'Elex Media Komputindo', '2019', 7),
(19, 'K0010', 'Remember Me & I Will Remember You', 39, 'Wirda Mansur', 'Penerbit Katadepan', '2019', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(34, 'Pendidikan'),
(36, 'Novel'),
(37, 'Romance'),
(38, 'Komik'),
(39, 'Agama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `pinjam_nama` varchar(100) NOT NULL,
  `pinjam_nim` varchar(9) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `nama_user`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

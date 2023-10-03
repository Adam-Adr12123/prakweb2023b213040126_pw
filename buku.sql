-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2023 pada 09.20
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb2023b_213040126`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `no` int(3) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `jumlah_halaman` int(3) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`no`, `nama_buku`, `pengarang`, `penerbit`, `jumlah_halaman`, `gambar`) VALUES
(4, 'Buku Kantong Sosiologi SMA IPS', 'Agung S. S. Raharjo. S.Sos', 'Pustaka Widyatama', 44, 'BKSSMAIPS.jpg'),
(5, 'Buku Pintar Membuat Cake', 'Diah Surjani Ananto', 'DeMedia', 24, 'BPMC.jpg\r\n'),
(6, 'Mau Sukses Baca Buku ini!', 'Joko Salim, S.Kom, SE', 'Elex Media Komputindo', 18, 'SSSa.jpg\r\n'),
(7, 'Buku Pintar Ubuntu', 'Athailah', 'MediaKita', 49, 'ubuntu.jpg'),
(8, 'Buku Ajar Hak Azasi Manusia', 'Dr. I Made Wirya Darma, S.H., M.H.,Dr. Ni Nyoman Juwita Arsawati, S.H., M.Hum.', 'Nilacakra', 14, 'ham.jpg'),
(9, 'Buku Ajar Hukum Adat', 'Prof. Dr. Sri Hajati, S.H., M.S. dkk', 'Prenada Media', 321, 'BAHA.jpg'),
(10, 'Buku Ajar Fisiologi Manusia', 'Tahara Dilla Santi., M. Biomed, Dr. Aditya Candra, M. Biomed., AIFO-K', 'CV. Mitra Cendekia Media', 37, 'fisi.jpg\r\n'),
(11, 'BUKU AJAR PERENCANAAN PENGAJARAN PANDUAN DI PERGURUAN TINGGI', 'Dr. H. Farid Wajdi, S.Pd.I., M.Si.,', 'Ahlimedia Book', 34, 'panduanpt.jpg'),
(12, 'Buku Seri Kardiologi Penyakit Arteri', 'Andrea Laurentius', 'CV. Bintang Semesta Media', 35, 'penyakita.jpg'),
(13, 'Buku Ajar Microteaching Berorientasi Unjuk Kerja Calon Guru IPA', 'Budiyono Saputro', 'Academia Publication', 65, 'bam.jpg\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

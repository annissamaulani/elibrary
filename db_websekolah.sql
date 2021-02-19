-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2020 pada 14.22
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_websekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'Text Laporan Hasil Observasi', 'Pengertian text observasi, ciri-ciri, struktur, kaidah kebahasaan', '2020-10-27 07:39:34', 'Yustinah, S.pd.', 0, '834148847bbcef4ed3c2f0f7be8562d5.pdf'),
(14, 'Text Exposisi', 'Pengertian, Struktur, ciri-ciri, tujuan, jenis Teks Eksposisi', '2020-10-27 07:43:03', 'Yustinah, S.pd.', 0, 'cf99aed32d36ff935d64b32d84dbfd4e.pdf'),
(15, 'Text Anekdot', 'Pengertin, ciri-ciri, struktur, contoh lengkap text anekdot', '2020-10-27 07:45:07', 'Yustinah, S.pd.', 0, '899434585cb874e49de7650c3e4b06cb.pdf'),
(16, 'Text Prosedur', 'Pengertian, ciri-ciri, kaidah kebahasaan, fungsi, tujuan, contoh text prosedur', '2020-10-27 07:46:29', 'Yustinah, S.pd.', 0, '9649d21a3e798a6cfa9a817987ce2ed9.pdf'),
(17, 'Teks Eksplanasi', 'Pengertian, ciri-ciri, ujuan, jenis text eksplanasi', '2020-10-27 07:47:34', 'Yustinah, S.pd.', 0, '036e76efd4c5d9874845ef6f8181fef1.pdf'),
(18, 'Teks Ceramah', 'Pengertian, ciri-ciri, struktur, kaidah kebahasaan, dan contoh teks ceramah', '2020-10-27 07:48:28', 'Yustinah, S.pd.', 0, 'b170cb5c8eee0689a6d6d0cc5e8c5455.pdf'),
(19, 'Surat Lamaran Pekerjaan', 'Pengertian, ciri-ciri, struktur, kaidah kebahasaan, cara membuat, dan contoh surat lamaran pekerjaan. Lengkap!', '2020-10-27 07:50:01', 'Yustinah, S.pd.', 0, 'd83b2ebee2d8cfbe6ca47159ca6bf918.pdf'),
(20, 'Text Cerita Sejarah', 'Pengertian, struktur, kaidah kebahasaan, dan contoh teks cerita sejarah', '2020-10-27 07:51:19', 'Yustinah, S.pd.', 0, 'ad91ffa046ee60415c04aeaca6d9b2f6.pdf'),
(23, 'Flow Desain', 'Perancangan Perangkat Lunak', '2020-11-03 05:01:17', 'Admin', 0, '1195318d7d08a85328a16f8ec736c98c.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(33, 'Pendidikan', '2020-11-03 01:13:11'),
(34, 'Sosial', '2020-11-03 01:13:28'),
(35, 'Politik', '2020-11-03 01:13:37'),
(36, 'Budaya', '2020-11-03 01:13:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar_materi`
--

CREATE TABLE `tbl_komentar_materi` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) NOT NULL,
  `komentar_email` varchar(50) NOT NULL,
  `komentar_isi` varchar(120) NOT NULL,
  `komentar_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `komentar_status` varchar(2) NOT NULL,
  `komentar_tulisan_id` int(11) NOT NULL,
  `komentar_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(5, 'annissa', 'sukses terus', 'P', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Saya annissa, latihr pada tanggal 20 mei 2003 di kota sumedang', 'annissamaulani20032005@gmail.com', '085295021220', NULL, NULL, NULL, NULL, 1, '1', '2020-10-27 01:54:10', 'f22d7d1983bf29c0f6ba9d79ae764acf.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-10-26 14:07:48', '::1', 'Chrome'),
(932, '2020-10-26 23:45:09', '::1', 'Chrome'),
(933, '2020-10-28 10:29:14', '::1', 'Chrome'),
(934, '2020-10-28 22:14:32', '::1', 'Chrome'),
(935, '2020-10-31 05:06:01', '::1', 'Chrome'),
(936, '2020-11-01 09:31:17', '::1', 'Chrome'),
(937, '2020-11-02 02:09:35', '::1', 'Chrome'),
(938, '2020-11-03 00:04:48', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(29, 'Mewaspadai Pasal Pendidikan UU Cipta Kerja', '<p><strong>news.detik.com Jakarta</strong>&nbsp;-&nbsp;</p>\r\n\r\n<p>Upaya pemerintah meringkas berbagai peraturan untuk menumbuhkan iklim investasi usaha melalui skema Omnibus Law menambah daftar produk hukum kontroversial yang disahkan pada era kepemimpinan Presiden Joko Widodo. Meski begitu, Omnibus Law Undang-Undang (UU) Cipta Kerja digadang-gadang mampu mempercepat transformasi ekonomi nasional di tengah pelemahan ekonomi global akibat pandemi.</p>\r\n\r\n<p>Gelombang penolakan Omnibus Law ini sudah menyeruak ke publik sejak masih menjadi RUU. Bukan hanya kluster ketenagakerjaan yang ramai dipersoalkan, kluster pendidikan yang sebelumnya dikatakan dihapuskan juga menjadi polemik. Semua pasal kluster pendidikan memang akhirnya sama sekali tak tercantum di UU Cipta Kerja yang disahkan, namun di paragraf 12 Pendidikan dan Kebudayaan Pasal 65 masih ada 1 pasal 2 ayat yang muncul.<br />\r\n<br />\r\nPasal itu berbunyi, &quot;Pelaksanaan perizinan pada sektor pendidikan dapat dilakukan melalui perizinan berusaha sebagaimana dimaksud dalam undang-undang ini,&quot; pada ayat (1), dan &quot;Ketentuan lebih lanjut pelaksanaan perizinan pada sektor pendidikan sebagaimana dimaksud pada ayat (1) diatur dengan Peraturan Pemerintah,&quot; pada ayat (2).</p>\r\n\r\n<p>Jika menilik pada Bab 1 Ketentuan Umum Pasal 1 nomor 4, yang dimaksud dengan perizinan berusaha adalah legalitas yang diberikan kepada pelaku usaha untuk memulai dan menjalankan usaha dan/atau kegiatannya. Sedangkan pada Pasal 1 nomor 7, yang disebut pelaku usaha adalah orang perseorangan atau badan usaha yang melakukan usaha dan/atau kegiatan pada bidang tertentu.<br />\r\n<br />\r\nSelanjutnya soal definisi badan usaha diatur di Pasal 1 nomor 9. Yang dimaksud badan usaha adalah badan usaha berbentuk badan hukum atau tidak berbentuk badan hukum yang didirikan di wilayah NKRI dan melakukan usaha dan/atau kegiatan pada bidang tertentu.</p>\r\n\r\n<p>Substansi dari pasal tersebut arahnya memberikan jalan dan kesempatan pada korporasi untuk masuk ke sistem pendidikan Indonesia. Dengan adanya UU Cipta Kerja, unit usaha yang berinvestasi di Indonesia dapat memperlebar usahanya melalui sektor pendidikan. Pasal tersebut membuat pemerintah mudah mengeluarkan kebijakan perizinan usaha di bidang pendidikan.</p>\r\n\r\n<p><strong>Gagal Paham</strong></p>\r\n\r\n<p>Sejatinya, menyebut izin pendirian lembaga pendidikan dengan istilah perizinan berusaha pada sektor pendidikan itu sendiri akan membuat publik menjadi gagal paham, karena izin usaha meliputi semua aspek kegiatan ekonomi sebagaimana tertuang dalam Pasal 1 huruf d UU No.3 Tahun 1982 tentang Wajib Daftar Perusahaan. Di dalamnya jelas dinyatakan, usaha adalah setiap tindakan, perbuatan, atau kegiatan apa pun dalam bidang perekonomian, yang dilakukan oleh setiap pengusaha untuk tujuan memperoleh keuntungan atau laba.</p>\r\n\r\n<p>Tidak bisa dimungkiri, isi pasal pendidikan pada UU Cipta Kerja dapat memberi ruang kepada korporasi menjadi benar-benar pengelola komoditas pendidikan, dengan mengatur izin pendidikan sebagai izin usaha/bisnis profit bukan non-profit. Meskipun selanjutnya akan diatur dalam Peraturan Pemerintah (PP), namun PP adalah ranah otoritas kerja eksekutif, dibuat tanpa perlu persetujuan wakil rakyat dan lebih sulit dikontrol oleh publik.</p>\r\n\r\n<p>Harus diakui, adanya perizinan berusaha dalam Pasal 65 akan menjadikan sektor pendidikan sebagai aktivitas ekonomi. Tren ekonomi abad ke-21, sektor jasa masih menjadi primadona. Dunia pendidikan adalah satu dari tiga sektor bisnis yang dianggap paling menjanjikan, selain teknologi informasi, dan&nbsp;<em>wellness</em>. Belum lagi Indonesia terikat pada komitmen internasional bahwa pendidikan masuk sektor jasa yang diakui oleh The General Agreement on Tariffs and Trade (GATT). Tidak aneh jika kluster pendidikan UU Cipta Kerja masih menyisakan satu pasal &quot;perizinan berusaha&quot; untuk mengakomodasi investasi yang bersifat komoditas jasa perdagangan.</p>\r\n\r\n<p>Meski begitu, UUD 1945 dan UU Sisdiknas sebenarnya telah mengunci sektor ini dengan mematok &quot;prinsip nirlaba&quot;. Begitu juga dinyatakan dalam UU No. 12/2012 tentang Pendidikan Tinggi bahwa otonomi pengelolaan perguruan tinggi dilaksanakan berdasarkan prinsip nirlaba, akuntabel, transparan, penjaminan mutu, efektif, dan efisien.<br />\r\n<br />\r\nTapi nyatanya pasal pendidikan pada UU Cipta Kerja masih memberi ruang sektor pendidikan diprivatisasi para investor. Meski pemerintah berdalih pemberlakuan izin usaha ini hanya akan berlaku di kawasan ekonomi khusus (KEK), tetap saja pada saatnya nanti diimplementasikan perlu mekanisme&nbsp;<em>check and balance</em>&nbsp;agar penyedia jasa pendidikan tidak hanya menjadi perusahaan layaknya lembaga kursus yang hanya mementingkan perputaran roda ekonomi.</p>\r\n\r\n<p><strong>Jalan Yudisial</strong></p>\r\n\r\n<p>Praksis pendidikan nasional seharusnya bersendikan pada agama dan kebudayaan, sebagaimana digariskan oleh Ki Hajar Dewantara hampir satu abad yang lalu. Oleh karena itu, konsep restorasi sistem pendidikan nasional harus dikembalikan pada akar budaya leluhur sebagai syarat dan juga tujuan membentuk kepribadian serta kemerdekaan pendidikan di Indonesia. Dengan begitu, nilai lokal akan dihargai internasional, bukan justru menjadi pasar semata.</p>\r\n\r\n<p>Pada hakikatnya pendidikan adalah hak dasar yang dijamin dalam konstitusi kita. Masa depan bangsa ini tidak boleh dipertaruhkan hanya dengan segelintir pasal dalam UU Cipta Kerja. Kendali pembangunan sektor pendidikan di Indonesia harus dipandu oleh negara (<em>state led-development</em>), sebagaimana manifesto Nawacita bidang pendidikan pemerintahan Presiden Joko Widodo. Pemerintah seharusnya memproteksi sektor pendidikan dari ancaman privatisasi pendidikan yang mengedepankan kebebasan individu melalui mekanisme pasar (<em>market driven-development</em>) atau fundamentalisme pasar (neoliberalisme).</p>\r\n\r\n<p>Perlu kerja sama banyak pihak utamanya akademisi dan praktisi terkait untuk bersama-sama menggalang kesepahaman soal substansi Omnibus Law yang bertentangan dengan konstitusi. Pasal-pasal kontroversial termasuk pasal pendidikan UU Cipta Kerja ini dapat digugat ke Mahkamah Konstitusi (MK) asal didalilkan bertentangan dengan UUD 1945.</p>\r\n\r\n<p>Sebagaimana satu dekade lalu, upaya mempertegas prinsip nirlaba dalam dunia pendidikan berbuah dengan pembatalan UU No. 9/2009 tentang Badan Hukum Pendidikan (BHP) oleh MK. MK menilai UU BHP menjadikan pendidikan nasional diserahkan sepenuhnya kepada mekanisme pasar tanpa ada perlindungan dari negara. Tugas pemerintah di bidang pendidikan akan dilaksanakan oleh Badan Hukum Pendidikan Pemerintah (BHPP) dan Badan Hukum Pendidikan Pemerintah Daerah (BHPPD). Padahal, UUD 1945 mengamanatkan tanggung jawab pendidikan nasional pada negara.</p>\r\n\r\n<p>Kemenangan di masa lalu dapat menjadi model untuk menggugat pasal-pasal bermasalah UU Cipta Kerja. Jalan yudisial harus kembali ditempuh mengiringi aksi sosial. Tidak bisa gugatan dilakukan dengan terburu-buru dan tanpa mendengar lebih banyak keluhan dari pihak-pihak terkait yang merasa dirugikan dengan UU sapu jagat ini. Kalau tidak, elemen&nbsp;<em>civil society</em>&nbsp;akan melakukan langkah yang sama kelirunya dengan DPR yang terburu-buru mengesahkan UU ini.</p>\r\n', '2020-11-03 03:35:10', 33, 'Pendidikan', 0, '0962a78fa558507c72c1e5687d53bf79.jpeg', 5, 'annissa', 0, 'mewaspadai-pasal-pendidikan-uu-cipta-kerja'),
(30, 'Wakil Ketua MPR: Ponpes adalah Potret Nyata Kebinekaan Indonesia', '<p><strong>news.detik.com Jakarta</strong>&nbsp;-&nbsp;</p>\r\n\r\n<p>Selain menjadi pusat ilmu agama, pondok pesantren (ponpes) dapat berbaur dan mewarnai masyarakat sekitar. Menurut Wakil Ketua MPR Syarief Hasan, para santri dan santriwati yang menempuh pendidikan di ponpes juga berasal dari beragam latar belakang suku serta status sosial yang berbeda.</p>\r\n\r\n<p>&quot;Dan hal tersebut menjadi sesuatu yang lumrah serta biasa saja bagi mereka. Inilah yang saya sebut bahwa ponpes adalah potret nyata kebinekaan Indonesia. Jika ingin melihat bagaimana rakyat Indonesia melaksanakan kebinekaan, lihatlah ponpes,&quot; ujar Syarief, dalam keterangannya, Rabu (21/10/2020).</p>\r\n\r\n<p>Hal itu ia ungkapkan dalam acara Temu Tokoh Nasional bersama Wakil Ketua MPR Syarief Hasan, di Pondok Pesantren Roudhotul Muta&#39;allimin, Sukanagalih, Kabupaten Cianjur, Jawa Barat, Selasa (20/10).</p>\r\n\r\n<p>&quot;Penjelasannya adalah, Indonesia terdiri dari keberagaman namun tetap bersatu dalam wadah Negara Kesatuan Republik Indonesia,&quot; kata dia.Kepada para santri Syarief menjelaskan Bhinneka Tunggal Ika adalah semboyan bangsa yang tertulis pada lambang negara Garuda Pancasila. Semboyan itu bermakna &#39;Berbeda-beda Tetap Satu Jua&#39;.</p>\r\n\r\n<p>Syarief mengungkapkan santri adalah generasi muda yang pintar. Banyak prestasi yang ditorehkan oleh kalangan santri. Oleh karena itu, ia mengajak santri terus rajin belajar.</p>\r\n\r\n<p>Sebagai informasi, turut hadir dalam acara yang mengikuti protokol kesehatan tersebut yakni Pimpinan Ponpes H. Dadang Abdul Aziz, Ketua Yayasan Hj. Tati Sholihah, tokoh masyarakat, tokoh agama sekitar, dan para santri serta santriwati.&quot;Bhinneka Tunggal Ika adalah sebagian dari ilmu pengetahuan yang luas. Belajar terus, jangan pantang menyerah jika gagal atau mendapat hambatan. Kalau itu konsisten dilakukan, saya yakin para santri ponpes Roudhotul Muta&#39;allimin akan menjadi &#39;mercusuar&#39; bangsa Indonesia,&quot; pungkasnya.</p>\r\n', '2020-11-03 03:37:54', 33, 'Pendidikan', 0, '2e7f8d5b1456d456098075c85a6ee089.jpeg', 5, 'annissa', 0, 'wakil-ketua-mpr:-ponpes-adalah-potret-nyata-kebinekaan-indonesia'),
(31, 'Wakil Ketua MPR Ingin Jangkauan Beasiswa Pendidikan Diperluas', '<p><strong>news.detik.com Jakarta</strong>&nbsp;-&nbsp;</p>\r\n\r\n<p>Wakil Ketua MPR Syarief Hasan berharap program beasiswa pendidikan dasar, menengah, dan tinggi untuk rakyat kecil diperluas. Apalagi di masa pandemi COVID-19 yang dampaknya memukul finansial masyarakat.</p>\r\n\r\n<p>Hal tersebut ia ungkapkan di acara Temu Tokoh Nasional bersama Wakil Ketua MPR Sjarifuddin Hasan, di Pondok Pesantren Roudhotul Muta&#39;allimin, Sukanagalih, Kabupaten Cianjur, Jawa Barat, Selasa (20/10).</p>\r\n\r\n<p>&quot;Adik santri kita ini ingin melanjutkan pendidikan ke jenjang lebih tinggi namun terkendala biaya. Malah, ada santri yang sudah menempuh pendidikan tinggi juga terancam keluar karena masalah yang sama. Ini sangat memprihatinkan. Generasi muda yang sedang semangat maju, tersandung masalah,&quot; ujar Syarief, dalam keterangannya, Rabu (21/10/2020).</p>\r\n\r\n<p>&quot;Tolak ukurnya di pasal itu. Menyelenggarakan pendidikan adalah salah satu pelayanan negara kepada rakyatnya dengan tujuan mencerdaskan. Mestinya, tidak ada kesulitan kepada setiap warga negara untuk mendapatkannya termasuk memperoleh beasiswa,&quot; ujarnya.Syarief mengatakan hak rakyat mendapatkan pendidikan dijamin melalui UUD NRI Tahun 1945 Pasal 31 ayat 1 yang berbunyi &#39;setiap warga negara berhak mendapatkan pendidikan&#39;. Kemudian ayat 2 yang berbunyi &#39;setiap warga negara wajib mengikuti pendidikan dasar dan pemerintah wajib membiayainya&#39;.</p>\r\n\r\n<p>Menurut Syarief, negara memang menyediakan program beasiswa di lembaga pendidikan. Namun, masih belum menjangkau seluruh masyarakat yang membutuhkan.</p>\r\n\r\n<p>Syarief mengajak seluruh elemen masyarakat untuk membantu generasi muda bangsa. Jangan sampai potensi besar mereka terhalang karena kemiskinan. &quot;Saya sendiri sesuai kapasitas dan kewenangan sebagai pimpinan MPR akan coba mendorong pemerintah menyikapi hal tersebut dengan sungguh-sungguh,&quot; pungkasnya.&quot;Kalau lembaga swasta, saya rasa ada namun banyak kendala. Inilah yang harus diperhatikan oleh pemerintah. Harus diperbaiki masalah-masalahnya, terus disempurnakan agar program beasiswa bisa diberikan dengan tepat sesuai sasaran,&quot; jelasnya.</p>\r\n\r\n<p>Sebagai informasi, turut hadir dalam acara tersebut Pimpinan Ponpes H. Dadang Abdul Aziz, Ketua Yayasan Hj. Tati Sholihah, tokoh masyarakat, tokoh agama sekitar dan para santri serta santriwati.</p>\r\n', '2020-11-03 03:40:25', 33, 'Pendidikan', 0, '871d113743d906cee29d6522db494519.jpeg', 5, 'annissa', 0, 'wakil-ketua-mpr-ingin-jangkauan-beasiswa-pendidikan-diperluas'),
(32, 'Di Tengah Pandemi, Pemerintah Tetap Jalankan Reformasi Sistem Pendidikan', '<p><strong>Liputan6.com, Jakarta -</strong>&nbsp;Pemerintah tengah mereformasi&nbsp;sektor&nbsp;<a href=\"https://www.liputan6.com/news/read/4386462/bincang-editor-potret-pendidikan-indonesia-di-masa-pandemi\">pendidikan</a>&nbsp;meskipun masih menghadapi pandemi Covid-19.&nbsp;Salah satu contohnya adalah&nbsp;dengan tetap menjalankan&nbsp;aktivitas belajar mengajar, sekalipun tidak bertatap muka.</p>\r\n\r\n<p>Menteri Keuangan Sri Mulyani Indrawati membeberkan, infrastruktur pendidikan menjadi salah satu yang disorot pemerintah di tengah pandemi. Bagaimana caranya para pelajar maaupun mahasiswa tetap bisa melakukan pembelajaran dengan jarak jauh.</p>\r\n\r\n<p>Sehingga dirilislah anggaran untuk pemberian kouta belajar diperuntukan bagi pelajar, mahasiswa, madrasyah, dan pesantren yang nilainya mencapai Rp 7,21 triliun. Anggaran tersebut diberikan sebagai fasilitas pemberian kuota&nbsp;internet untuk masing-masing pelajar.</p>\r\n\r\n<p>&quot;Ini saya belum berbicara konten pendidikan, baru kebutuhan dari situasi normal menjadi situasi yang harus pindah menjadi&nbsp;<em>online</em>. Ini membutuhkan sesuatu peningkatan yang sangat besar,&quot; kata Sri Mulyani dalam sebuah acara Cerita di Kemenkeu Mengajar, Senin (26/10/2020).</p>\r\n\r\n<p>Dia mengatakan, pada saat pemerintah mencetuskan ide untuk anggaran pembiayaan kuota internet bagi pelajar, justru mendapatkan pertanyaan dari Dewan Perwakilan Rakyat (DPR).</p>\r\n\r\n<p>Dirinya bersama Menteri&nbsp;<a href=\"https://www.liputan6.com/tag/pendidikan\">Pendidikan</a>&nbsp;dan Kebudayaan (Mendikbud) Nadiem Makarim ditanyakan bagaimana jika ada satu keluarga yang memiliki anak dua atau tiga tetapi tidak mempunyai hanphone&nbsp;untuk bisa melakukan kegiatan belajar mengajar.</p>\r\n\r\n<p>&quot;Itu baru masalah infrastrukturnya yaitu&nbsp;<em>hardware</em>, belum masalah membayar internet. Dan itu kita lihat observasi pemerintah begitu cepat. Wah ini kayaknya akan menimbulkan krisis dari sisi sekolah makanya Pak Nadiem itu yang terus-menerus meminta agar ada kuota untuk pelajar dan mahasiswa Rp 7,21 triliun,&quot; sebut dia.</p>\r\n\r\n<p>Bahkan, lanjut dia, ketika pemerintah punya niat baik untuk menganggarkan kouta internet secara bersamaan timbul kekhawatiran dari pemerintahan. Saat itu, terbesit apakah pemerintah mempunyai data nama murid, nomor telepon, hingga kekhawatiran tidak digunakan secara tepat.</p>\r\n\r\n<p>&quot;Waktu punya niat baik pun kita straggling dengan data dengan sistem yang sering memunculkan tadi. Apakah ada akuntabilitas begitu dilancarkan semua senang ada survei mengatakan sebagian dipakai untuk&nbsp;<em>game online</em>,&quot; katanya.</p>\r\n\r\n<p>&quot;Tapi poin saya adalah satu janganlah sampai keinginan kita untuk sempurna mencegah kita untuk berbuat sesuatu. Jadi kita tidak boleh menunggu sampai situasi bagus semua baru kita melakukan dalam situasi seperti ini,&quot; sambung dia.</p>\r\n\r\n<p>Bendahara Negara ini melanjutkan, pandemi Covid-19 tidak bisa diprediksi kapan akan berakhir. Di satu sisi pemerintah berpikir dalam jangka panjang harus tetap bisa menyelenggarakan proses&nbsp;<a href=\"https://www.liputan6.com/news/read/4386462/bincang-editor-potret-pendidikan-indonesia-di-masa-pandemi\">pendidikan</a>.</p>\r\n\r\n<p>&quot;Kita harus memanfaatkan krisis ini menggunakan krisis untuk merubah. Coba sebagian di akselerasi dalam situasi seperti ini jangan kemudian mengambil&nbsp;<em>excuse</em>&nbsp;atau alasan ini tidak bisa dilakukan. Justru pada saat krisis kita ingin reformasi itu di akselerasi di semua hal pendidikan kesehatan sosial dan juga dari sisi belanja pemerintah,&quot; tandas dia.</p>\r\n\r\n<p>Reporter: Dwi Aditya Putra</p>\r\n\r\n<p>Sumber: Merdeka.com</p>\r\n', '2020-11-03 03:42:37', 33, 'Pendidikan', 0, '93549f27c0deb68d3525f737184641a2.jpg', 5, 'annissa', 0, 'di-tengah-pandemi,-pemerintah-tetap-jalankan-reformasi-sistem-pendidikan'),
(33, 'Ketua MPR Beri Bantuan Kursi Roda buat Warga Lampung', '<p><strong>news.detik.com Jakarta</strong>&nbsp;-&nbsp;</p>\r\n\r\n<p>Ketua MPR RI Bambang Soesatyo (Bamsoet) diwakili Ketua Umum Gerakan Keadilan Bangun Solidaritas (GERAK BS) Aroem Alzier dan Relawan 4 Pilar MPR RI menyalurkan bantuan kepada warga di Desa Way Kepayang dan Desa Kedondong di Kabupaten Pesawaran, Lampung. Bantuan diberikan merespons permintaan pendamping Program Keluarga Harapan (PKH) Kabupaten Pesawaran.</p>\r\n\r\n<p>&quot;Bantuan yang disalurkan antara lain dua unit kursi roda, masing-masing untuk adik Ade Widya di Desa Way Kepayang dan Ibu Juminah di Desa Kedondong. Masyarakat lainnya di Desa Way Kepayang dan Desa Kedondong juga mendapatkan bantuan kemanusiaan dengan beras serta uang tunai untuk biaya berobat,&quot; ujar Bamsoet dalam keterangannya, Selasa (20/10/2020).</p>\r\n\r\n<p>Ketua DPR RI ke-20 ini menjelaskan Ade Widya adalah gadis manis berusia tujuh tahun yang tabah menjalani kehidupan. Selain tuna rungu, ia juga mengalami cacat sejak lahir. Keluarga Ade Widya sudah lama meminta bantuan kursi roda ke dinas sosial melalui pemerintah desa, tapi belum juga terealisasi. Sementara Ibu Juminah mengalami sakit yang menyebabkan kakinya lumpuh.</p>\r\n\r\n<p>Wakil Ketua Umum Depinas Soksi ini menuturkan semangat gotong royong membantu sesama di tengah Pandemi harus kembali dibangkitkan. Seberat apapun musibah, jika dihadapi dengan kebersamaan akan terasa ringan.&quot;Saat mendengar kondisi adik Ade Widya dan Ibu Juminah, GERAK BS dan Relawan 4 Pilar MPR RI langsung bergerak cepat menghimpun bantuan kemanusiaan. Alhamdulillah, dari gotong royong berbagai pihak, adik Ade Widya dan Ibu Juminah kini sudah bisa menikmati kursi roda yang sudah lama mereka idam-idamkan,&quot; jelas Bamsoet.</p>\r\n\r\n<p>&quot;Di luar sana, masih banyak saudara sebangsa yang membutuhkan uluran tangan. Masih banyak adik Ade Widya maupun Ibu Juminah lainnya. GERAK BS dan Relawan 4 Pilar MPR RI tak mungkin bisa menjangkau mereka semua. Namun demikian saya percaya, masih banyak pribadi, organisasi maupun gerakan serupa GERAK BS dan Relawan 4 Pilar MPR RI yang peduli terhadap saudara sebangsanya,&quot; pungkas Bamsoet.</p>\r\n', '2020-11-03 03:44:59', 34, 'Sosial', 2, '89720d362f244357c27b965c5580d420.jpeg', 5, 'annissa', 0, 'ketua-mpr-beri-bantuan-kursi-roda-buat-warga-lampung'),
(34, 'Inovasi Cek Bansos COVID-19 Banyuwangi Raih Indonesia Smart Nation 2020', '<p><strong>Banyuwangi</strong>&nbsp;-&nbsp;</p>\r\n\r\n<p>Banyuwangi meraih penghargaan&nbsp;<a href=\"https://www.detik.com/tag/pemkab-banyuwangi\">Indonesia Smart Nation Award</a>&nbsp;(ISNA) 2020. Banyuwangi meraih award kategori Smart Society berupa inovasi penggunaan TIK dalam penanganan dampak sosial COVID-19.</p>\r\n\r\n<p>Penghargaan tersebut diselenggarakan oleh Citiasia Center for Smart Nation (CCSN) dan tahun ini merupakan penyelenggaraan ke-4. Pada tahun ini, ISNA mengusung tema &quot;Smart City 2020: Driving Innovation &amp; Productivity During The Global Pandemic&quot;.</p>\r\n\r\n<p>Inovasi yang berhasil membawa Banyuwangi meraih penghargaan kategori Smart Society adalah Cek Bantuan Sosial (Bansos) dalam Penanganan COVID-19. Pada tahun 2020 ini, CCSN telah melakukan riset terhadap lebih dari 180 inovasi yang diinisiasi oleh pemerintah kota dan kabupaten dalam penanganan COVID-19 yang melibatkan lebih dari 500 partisipasi kabupaten dan kota di seluruh Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bupati Banyuwangi Abdullah Azwar Anas menyampaikan terima kasih atas penghargaan yang diterima. Anas menjelaskan bahwa Banyuwangi melakukan penanganan yang sangat serius dalam melakukan pendataan bansos bagi warga yang terdampak pandemi.</p>\r\n\r\n<p>Untuk keperluan tersebut,&nbsp;<a href=\"https://www.detik.com/tag/pemkab-banyuwangi\">Banyuwangi&nbsp;</a>membuka pelaporan online bantuan sosial (bansos) bagi warga terdampak pandemi COVID-19. Sistem pelaporan ini digunakan untuk menampung warga yang belum terdaftar di skema jaring pengaman sosial, baik dari pemerintah pusat, provinsi maupun kabupaten. Selain itu, warga bisa mengecek para penerima bansos dari pusat, provinsi, maupun kabupaten.&quot;Bansos ini sangat dibutuhkan oleh mereka yang terdampak. Sejumlah langkah dilakukan Banyuwangi untuk memastikan bansos dari pusat hingga daerah tersalur secara merata dan tepat sasaran kepada warga yang terdampak,&quot; kata Anas kepada detikcom, Selasa (6/10/2020).</p>\r\n\r\n<p>&quot;Kami menyadari situasi sangat dinamis saat awal pandemi. Ada kemungkinan warga terdampak belum menerima bantuan. Untuk itu, kami menyediakan pelaporan online, di samping warga bisa juga lapor ke desa atau kelurahan atau kecamatan,&quot; ujarnya.</p>\r\n\r\n<p>Pelaporan online tersebut terintegrasi dalam sebuah program Smart Kampung. Smart kampung yang digagas Pemkab Banyuwangi sejak 2016 ini memberikan banyak kemudahan dalam penanganan COVID-19, termasuk dalam pendataan penerima bantuan sosial (bansos).</p>\r\n\r\n<p>Selama ini, pemkab Banyuwangi telah melakukan pendataan warga miskin penerima bantuan dari pemerintah yang di-input ke dalam program Smart Kampung yang perekamannya by name by address by NIK.</p>\r\n\r\n<p>&quot;Dari data yang sudah ada, kami tinggal kategorisasikan mana yang bantuan pusat, provinsi, maupun kabupaten. Karena datanya terintegrasi, yang sudah mendapat bantuan pusat tidak akan bisa mendapatkan bantuan provinsi. Kemungkinan terjadi penerima ganda sangat kecil,&quot; kata Anas.</p>\r\n\r\n<p>&quot;Basisnya adalah nomor induk kependudukan (NIK) yang kami silangkan dengan Smart Kampung yang telah mempunyai basis data lengkap semua penerima bantuan. Jadi misal si A melaporkan tetangganya, si B, nah padahal si B ternyata sudah terdaftar sebagai penerima bantuan, maka otomatis tertolak,&quot; ujarnya.Anas melanjutkan, dalam pelaporan bansos online tersebut terdapat dua fitur Pertama, pelaporan warga yang belum menerima bantuan. Warga bisa melaporkan dirinya sendiri atau melaporkan orang lain yang dinilai layak dibantu.</p>\r\n\r\n<p>Fitur kedua adalah pengecekan penerima bansos. Warga cukup memasukkan NIK untuk mengetahui apakah sudah termasuk daftar penerima bantuan atau belum. &quot;Tinggal masukkan NIK, akan ketahuan sudah atau belum mendapatkan bantuan,&quot; kata Anas.</p>\r\n\r\n<p>Laporan warga yang masuk akan diverifikasi dengan dua tahap. Pertama, NIK disilangkan dengan basis data Pemkab Banyuwangi di&nbsp;<a href=\"https://www.detik.com/tag/pemkab-banyuwangi\">Smart Kampung</a>. Jika NIK terdeteksi sebagai penerima bantuan, maka otomatis tertolak. Smart Kampung sendiri adalah sistem digitalisasi pelayanan publik hingga tingkat desa yang dikembangkan Pemkab Banyuwangi.</p>\r\n\r\n<p>Verifikasi kedua, ketika warga yang melapor memang belum menerima bansos lainnya, maka tim akan menilai kelayakannya. &quot;Jika dinyatakan layak, maka bantuan disalurkan. Kami membikin SOP, bantuan tersalurkan paling lambat seminggu sejak dinyatakan layak,&quot; ujarnya.</p>\r\n', '2020-11-03 03:49:13', 34, 'Sosial', 3, '092d4bce0a3b75c907dbe7a7369be926.jpeg', 5, 'annissa', 0, 'inovasi-cek-bansos-covid-19-banyuwangi-raih-indonesia-smart-nation-2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_komentar_materi`
--
ALTER TABLE `tbl_komentar_materi`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar_materi`
--
ALTER TABLE `tbl_komentar_materi`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

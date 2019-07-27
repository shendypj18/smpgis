-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jul 2019 pada 05.35
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$eKbj3UhVx54esgUyBom/tuKFQLi/n5YlKeOrLlL/uAPeV87ruJHhK', '2019-05-13 21:16:56', '2019-05-13 21:16:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tahunan`
--

CREATE TABLE `data_tahunan` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `passing_grade` int(11) NOT NULL,
  `kuota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_tahunan`
--

INSERT INTO `data_tahunan` (`id`, `nama_sekolah`, `passing_grade`, `kuota`, `created_at`, `updated_at`) VALUES
(1, 'SMAN 1 BANDAR LAMPUNG', 323, 264, '2019-06-20 01:02:28', '2019-06-20 01:02:28'),
(2, 'SMAN 2 BANDAR LAMPUNG', 333, 346, '2019-06-20 01:02:46', '2019-06-20 01:02:46'),
(3, 'SMAN 3 BANDAR LAMPUNG', 315, 374, '2019-06-20 01:03:02', '2019-06-20 01:03:02'),
(4, 'SMAN 4 BANDAR LAMPUNG', 296, 315, '2019-06-20 01:03:19', '2019-06-20 01:03:19'),
(5, 'SMAN 5 BANDAR LAMPUNG', 312, 328, '2019-06-20 01:03:39', '2019-06-20 01:03:39'),
(6, 'SMAN 6 BANDAR LAMPUNG', 217, 324, '2019-06-20 01:04:00', '2019-06-20 01:04:00'),
(7, 'SMAN 7 BANDAR LAMPUNG', 299, 374, '2019-06-20 01:04:19', '2019-06-20 01:04:19'),
(8, 'SMAN 8 BANDAR LAMPUNG', 302, 432, '2019-06-20 01:04:42', '2019-06-20 01:04:42'),
(9, 'SMAN 9 BANDAR LAMPUNG', 327, 360, '2019-06-20 01:05:06', '2019-06-20 01:05:06'),
(10, 'SMAN 10 BANDAR LAMPUNG', 309, 340, '2019-06-20 01:05:29', '2019-06-20 01:05:29'),
(11, 'SMAN 11 BANDAR LAMPUNG', 245, 216, '2019-06-20 01:05:49', '2019-06-20 01:05:49'),
(12, 'SMAN 12 BANDAR LAMPUNG', 280, 360, '2019-06-20 01:06:08', '2019-06-20 01:06:08'),
(13, 'SMAN 13 BANDAR LAMPUNG', 256, 432, '2019-06-20 01:06:32', '2019-06-20 01:06:32'),
(14, 'SMAN 14 BANDAR LAMPUNG', 259, 432, '2019-06-20 01:06:59', '2019-06-20 01:06:59'),
(15, 'SMAN 15 BANDAR LAMPUNG', 290, 324, '2019-06-20 01:07:21', '2019-06-20 01:07:21'),
(16, 'SMAN 16 BANDAR LAMPUNG', 275, 288, '2019-06-20 01:07:40', '2019-06-20 01:07:40'),
(17, 'SMAN 17 BANDAR LAMPUNG', 178, 144, '2019-06-20 01:08:03', '2019-06-20 01:08:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kriteria`
--

CREATE TABLE `detail_kriteria` (
  `id` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `batas_bawah` int(11) NOT NULL,
  `batas_atas` int(11) NOT NULL,
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `jenis_kriteria` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `kriteria`, `jenis_kriteria`, `created_at`, `updated_at`) VALUES
(2, 'jarak', 'cost', '2019-06-20 01:13:57', '2019-06-20 01:14:29'),
(3, 'kuota', 'binefit', '2019-06-20 01:14:09', '2019-06-20 01:14:09'),
(4, 'pg', 'binefit', '2019-06-20 01:14:16', '2019-06-20 01:14:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jumlah_guru` int(11) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `akreditas` varchar(10) NOT NULL,
  `Link_Sekolah` varchar(50) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `alamat`, `jumlah_guru`, `gambar`, `visi`, `misi`, `no_telp`, `id_kecamatan`, `akreditas`, `Link_Sekolah`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 'SMAN 1 BANDAR LAMPUNG', 'SMAN 1 Bandar Lampung, Jalan Jenderal Sudirman, Rawa Laut, Bandar Lampung City, Lampung, Indonesia', 49, NULL, 'MAJU DALAM PENGUASAAN IPTEK, KREATIF DALAM SENI BUDAYA, PEDULI LINGKUNGAN HIDUP, SEHAT JASMANI DAN ROHANI YANG DILANDASI IMAN DAN TAKWA', 'Menciptakan suasana yang kondusif untuk mengembangkan potensi siswa melalui penekanan pada penguasaan kompetensi bidang ilmu pengetahuan dan teknologi serta Bahasa Inggris.', '0721 252190', NULL, 'B', 'http://sma1bandar.sch.id', '-5.422194999999999', '105.2654771', '2019-05-21 01:47:45', '2019-07-19 05:41:53'),
(3, 'SMAN 2 BANDAR LAMPUNG', 'SMAN 2 Bandar Lampung, Jalan Amir Hamzah, Gotong Royong, Bandar Lampung City, Lampung, Indonesia', 75, NULL, 'UNGGUL, BERBUDAYA DAN BERKARAKTER', 'Mewujudkan Nilai-nilai Keagamaan di Sekolah.     Mengembangkan Jati Diri Bangsa.     Mengembangkan Potensi Kecerdasan Peserta Didik.     Mengembangkan Kultur Positif.     Meningkatkan Proses Pembelajaran dan Penilaian yang Baik.     Menjadikan Tenaga Kependidikan yang Profesional.', '0721-252106', NULL, 'A', 'https://smanda-bdl.sch.id/', '-5.4267677', '105.25487840000005', '2019-06-19 23:58:33', '2019-07-18 22:35:27'),
(4, 'SMAN 3 BANDAR LAMPUNG', 'SMAN 3 Bandar Lampung, Jalan Khairil Anwar, Durian Payung, Bandar Lampung City, Lampung, Indonesia', 66, NULL, 'Unggul Dalam Prestasi Akademik, Ekstrakurikuler Berwawasan Global Berlandaskan Keimanan dan Ketakwaan.', 'Menyelenggarakan program pendidikan berbasis kompetensi;  Melaksanakan model pembelajaran yang efektif dan efesien; Mendorong dan membantu siswa dalam mewujudkan cita-cita; Meraih prestasi dalam bidang akademik dan ekstra kurikuler; Menerapkan kedisiplinan dalam menegakkan tata tertib sekolah; Membentuk warga sekolah yang beriman dan bertaqwa; Meningkatkan peran serta orang tua dan masyarakat dalam pendidikan; Melengkapi sarana, prasarana, dan fasilitas pembelajaran. Menumbuhkan wawasan tentang Teknologi Informasi kepada seluruh warga sekolah.', '0721-255600', NULL, 'A', 'https://www.sman3bandarlampung.sch.id/', '-5.4211049', '105.24477179999997', '2019-06-20 00:00:58', '2019-07-18 22:36:32'),
(5, 'SMAN 4 BANDAR LAMPUNG', 'Jl. Dr. Cipto Mangunkusumo No.88, Kupang Teba, Kec. Tlk. Betung Utara, Kota Bandar Lampung, Lampung 35212', 47, NULL, 'Bertaqwa, disiplin, cerdas, terampil, menuju prestasi', '1. Menumbuhkan semangat bertaqwa kepada Tuhan Yang Maha Esa sesuai dengan ajaran agamanya. 2. Meningkatkan disiplin dalam mencapai prestasi 3. Meningkat kan mutu dalam proses belajar mengajar 4. Meningkatkan kecerdasan dan ketrampilan 5. Meningkatkan prestasi ekstrakurikuler', '(0721) 481121', NULL, 'B', 'http://sman4balam.blogspot.com/', '-5.4354915', '105.267941', '2019-06-20 00:06:16', '2019-06-27 01:14:07'),
(6, 'SMAN 5 BANDAR LAMPUNG', 'Jln Soekarno Hatta (By Pass), Way Dadi, Sukarame 35131', 59, NULL, 'Menghasilkan Lulusan yang Unggul dalam Prestasi, Agamis, dan berwawasan Global yang berorintasi pada Teknologi Informasi. Dengan Indikator  :      Bertaqwa Kepada Tuhan Yang Maha Esa     Berprestasi     Berkepribadian', 'Senantiasa meningkatkan keimanan, ketaqwaan dan kpribadian yang mantap melalui kegiatan PBM agama, kegiatan rohis dan BBQ.     Meningkatkan kecerdasan, keterampilan dan kreatifitas dengan kegiatan KBM, penelitian dan extrakurikuler.     Meningkatkan terus kompetensi guru dengan IHT, workshop, symposium, konferensi, seminar agar dihasilkan pembelajaran yang aktif, kreatif, effektif dan menyenangkan.', '(0721) 703930', NULL, 'A', 'www.sman5-bdl.sch.id', '-5.4145103', '105.2523256', '2019-06-20 00:09:39', '2019-06-27 01:16:01'),
(7, 'SMAN 6 BANDAR LAMPUNG', 'Jl. KH Agus Salim 35, Bandar Lampung, Lampung', 48, NULL, 'Unggul dalam mutu akademik dan non akademik berlandaskan   Imtaq,Hygenis ,Disiplin Serta  mampu  bersaing di Era Global', '1.            Meningkatkan Ketaqwaan dan Keimanan terhadap Tuhan Yang Maha Esa. 2.            Menciptakan lingkungan  pembelajaran yang kondusif dalam upaya meningkatkan mutu pembelajaran. 3.            Meningkatkan komitmen seluruh tenaga kependidikan terhadap tugas pokok dan fungsinya dengan melaksanakan model pembelajaran yang efektif dan efisien. 4.            Mengembangkan Seni dan Olah Raga sesuai dengan kemampuan dan bakat siswa sehingga menjadi sekolah yang diperhitungkan dalam setiap kompetisi. 5.            Menerapkan management partisipasi dalam meningkatkan kinerja dengan meningkatkan peran serta orang tua dan masyarakat.  6.            Menumbuhkembangkan wawasan Teknologi informasi kepada warga sekolah dengan melengkapi sarana/prasarana dan fasilitas sekolah', '0721-33386', NULL, 'B', 'http://www.sman6bdl.sch.id/', '-5.4382507', '105.2941274', '2019-06-20 00:14:50', '2019-06-27 01:34:42'),
(8, 'SMAN 7 BANDAR LAMPUNG', 'Jl. Teuku Cik Dirito No.2, Bandar Lampung, Lampung', 74, NULL, 'Unggul dalam prestasi berdasarkan imta', 'Menerapkan disiplin yang tinggi dengan mengedepankan contoh atau suri tauladan     Meningkatkan penghayatan terhadap ajaran agama yang dianut dan juga budaya bangsa sehingga menjadi sumber kearifan dalam bertindak     Mewujudkan proses pembelajaran dan system evaluasi yang efektif, serta melakukan perbaikan secara berkesinambungan     Mengefektifkan pelaksanaan program perbaikan pembelajaran     Mengoptimalkan pelaksanaan program Kegiatan 7K     Meningkatkan pembinaan kegiatan ektrakurikuler     Melengkapi fasilitas/ sarana-prasarana', '0721-540270', NULL, 'A', 'http://smanegri7.blogspot.com', '-5.4041534', '105.199143', '2019-06-20 00:26:01', '2019-06-27 01:37:16'),
(9, 'SMAN 8 BANDAR LAMPUNG', 'Jl. Laks. Malahayati, Bandar Lampung, Lampung', 53, NULL, 'Terwujudnya Insan Berimtaq, Berprestasi dan Berwawasan Global', 'Menjadikan warga sekolah yang berakhlak mulia.     Melaksanakan pembelajaran Intra dan Ekstrakurikuler yang bermutu, efektif, kreatif, dan inovatif.     Meningkatkan sumber daya manusia sesuai dengan perkembangan iptek.', '0721-484453', NULL, 'B', 'http://www.sman8bdl.sch.id/', '-5.4491221', '105.2557078', '2019-06-20 00:28:10', '2019-07-04 20:04:17'),
(10, 'SMAN 9 BANDAR LAMPUNG', 'Jl. Panglima Polem No.18 Segala Mider, Bandar Lampung, 35152', 73, NULL, 'SMA NEGERI 9 BANDAR LAMPUNG TERDEPAN DALAM IMTAQ DAN IPTEK, LINGKUNGAN ASRI DAN BERWAWASAN GLOBAL', 'Menjadikan masyarakat sekolah beriman, bertaqwa dan berbudaya mutu serta lingkungan yang sehat.     Meningkatkan profesionalisme ketenagaan.     Meningkatkan kualitas proses pembelajaran dan mutu lulusan yang berwawasan lingkungan.     Memanfaatkan dan mengembangkan sarana prasarana sumber belajar.     Meningkatkan peran serta orang tua, masyarakat, dunia usaha dan industri dalam pendidikan serta pengelolaan lingkungan.     Menghasilkan lulusan yang kompeten sesuai dengan tuntutan kualitas sumberdaya manusia yang dapat diterima oleh dunia Internasional.     Menumbuhkan manajemen partisipatif dengan melibatkan seluruh warga sekolah dan stake holder sekolah.', '0721-772924', NULL, 'A', 'http://smalan.sch.id', '-5.3901005', '105.2467587', '2019-06-20 00:30:19', '2019-07-04 20:05:43'),
(11, 'SMAN 10 BANDAR LAMPUNG', 'Jl. Gatot Subroto 46, Bandar Lampung, Lampung', 65, NULL, 'Mewujudkan sekolah yang berprestasi dalam bidang akademik, ilmu pengetahuan, teknologi, olahraga, seni dan budaya yang mandiri berdasarkan iman dan taqwa', 'a.       Meningkatkan manajemen sekolah untuk mencapai keunggulan siswa/i dan sekolah  b.      Meningkatkan kualitas pembelajaran untuk mencapai kompetensi siswa/i dalam belajar  c.       Meningkatkan kualitas guru dan pegawai untuk mewujudkan dan tercapainya standar pelayanan minimal di sekolah  d.      Meningkatkan kualitas dan kuantitas sarana dan prasarana pendukung pembelajaran untuk menunjang penguasaan iptek  e.       Meningkatkan sumber daya manusia (SDM) yang berkualitas dan membina siswa untuk mewujudkan sikap kritis, sistematis, cermat, cerdas dan mandiri  f.       Meningkatkan kualitas kemitraan dengan orang tua , masyarakat, dunia usaha/kerja dan perguruan tinggi      g.   Memberdayakan warga dan lingkungan sekolah demi terwujudnya pembelajaran yang aktif dan kondusif', '0721-251516', NULL, 'A', 'https://www.sman10bdl.sch.id', '-5.4288614', '105.2735479', '2019-06-20 00:33:41', '2019-07-04 20:07:03'),
(12, 'SMAN 11 BANDAR LAMPUNG', 'Jl. Laks. RE Martadinata, Bandar Lampung, Lampung', 37, NULL, 'Disiplin,Bermutu,berprestasi,Selaras dengan Perkembangan IPTEK berlandaskan IMTAQ', '1. Meningkatkan Pengetahuan Dan Keterampilan Tenaga Pendidik dan Kependidikan agar Bekerja Secara Profesional. 2. Melengkapi Sarana Prasarana Sekolah untuk Menunjang Terselenggaranya Pendidikan dan Pembelajaran yang Efektif dan Efisien. 3. Menyelenggarakan Berbagai Kegiatan untuk Memberi Kesempatan Kepada Peserta Didik agar dapat Mengembangkan Potensi dan Bakatnya secara Optimal 4. Menciptakan Lingkungan Sekolah yang Bersih,Sehat,Aman dan Nyaman,agar terwujudnya Suasana Sekolah yang Kondusif. 5. Menyelenggarakan Pembinaan Rohani dan Keagamaan secara berkesinambungan dan Terpadu dalam Rangka Peningkatan Iman dan Taqwa Bagi Warga Sekolah.', '0721-480719', NULL, 'B', 'http://www.sman11bandarlampung.sch.id/', '-5.4726211', '105.2406214', '2019-06-20 00:36:21', '2019-07-04 20:11:25'),
(13, 'SMAN 12 BANDAR LAMPUNG', 'Jl. Hendro Suratmin, Bandar Lampung, Lampung', 59, NULL, 'Berprestasi, beriman, berakhlak, dan populis', '1.    Menerapkan disiplin yang tinggi dalam segala kegiatan 2.    Menjadikan siswa yang berhasil dan berkembang secara optimal 3.    Menumbuhkan penghayatan dan pengamalan terhadap ajaran agama yang dianut 4.    Menciptakan kegiatan belajar mengajar yang optimal dengan suasana sekolah yang kondusif 5.    Menjadikan salah satu sekolah unggulan dengan memberdayakan seluruh potensi yang ada 6.    Menjadikan sekolah sebagai tempat belajar yang sejuk, teduh, dan menyenangkan 7.    Menciptkan administrasi sekolah yang handal dan professional 8.    Menciptakan sekolah dengan sarana yang lengkap 9.    Menumbuhkankembangkan rasa kepedulian terhadap masyarakat sekelilingnya', '(0721)781150', NULL, 'A', 'http://www.sman12bdl.sch.id', '-5.3767343', '105.3095344', '2019-06-20 00:39:33', '2019-07-04 20:12:39'),
(14, 'SMAN 13 BANDAR LAMPUNG', 'Jl. Padat Karya Sinar Harapan, Bandar Lampung, Lampung', 54, NULL, 'Tahun 2020 SMA Negeri 13 Bandar Lampung menjadi sekolah ternyaman yang  rindang, asri, serta terwujudnya siswa yang beriman, bertaqwa, berprestasi, dan berbudi luhur.', '1.	Menanam pohon perindang di dalam dan di luar lingkungan sekolah secara berkala.  2.	Menjaga, memperbaiki, dan melestarikan lingkungan dengan menerapkan 7 K (kebersihan, keindahan, kesopanan, kerapian, kedisiplinan, ketekunan, dan keamanan).  3.	Menumbuhkan penghayatan terhadap ajaran agama yang dianut sehingga menjadi sumber kearifan dalam bersikap dan bertindak.  4.	Mengamalkan ajaran agama yang dianut dalam kehidupan sehari-hari baik di lingkungan sekolah maupun di masyarakat.  5.	Meningkatkan sikap dan perilaku berakhlak mulia pada peserta didik.  6.	Menciptakan suasana kekeluargaan yang kondusif dan harmonis.  7.	Membangun potensi diri dan mengembangkan budaya belajar, gemar membaca, menulis dan berkomunikasi  8.	Mendorong dan membantu setiap siswa untuk mengendali potensi dirinya sehingga dapat dikembangkan secara optimal  9.	Menumbuhkan sikap ulet, gigih serta siap berkompetisi meraih prestasi belajar.', '0721-7690304', NULL, 'A', 'http://sman13bdl.sch.id', '-5.3459361', '105.2557296', '2019-06-20 00:42:14', '2019-07-04 20:13:52'),
(15, 'SMAN 14 BANDAR LAMPUNG', 'Bukit Kemiling Permai Kemiling, Bandar Lampung, Lampung', 60, NULL, 'Mewujudkan lulusan yang bertakwa kepada Tuhan Yang Maha Esa, terampil, berpengetahuan luas, berbudi pekerti luhur, berkwalitas dan populis.', 'Membentuk peserta didik yang memiliki ketakwaan terhadap Tuhan Yang Maha Esa.     Membentuk penyelenggaraan pendidikan yang bermutu, efisien dan relevan sesuai dengan tuntutan kurikulum yang berlaku.      Mewujudkan kegiatan pembelajaran yang inovatif, kreatif, dan menyenangkan.      Mengembangkan  sikap dan kepribadian yang santun, beretika dan berestetika tinggi.     Mempersiapkan peserta didik untuk melanjutkan ke jenjang pendidikan tinggi.     Meningkatkan profesionalisme dan kompetensi Guru dan Pegawai.     Meningkatkan jaringan kerjasama dengan lembaga dan instansi terkait dan stakeholder sekolah.     Melaksanakan pembinaan kesiswaan secara intensif melalui kegiatan OSIS dan kegiatan ektrakurikuler, untuk mendorong terwujudnya perkembangan potensi dan bakat yang dimiliki oleh siswa.     Menanamkan budaya tertib dan disiplin dalam kehidupan sekolah kepada segenap warga sekolah.     Menumbuhkan penghayatan dan pengalaman terhadap agama yang dianut dan membudayakan pendidikan budi pekerti luhur di sekolah.     Mengembangkan seluruh komponen sekolah menuju ketercapaian SPM (Standar Pelayanan Minimum) Pendidikan.     Melengkapi sarana prasarana dan fasilitas pendidikan yang dibutuhkan untuk menunjang tercapainya kegiatan pembelajaran.     Mengembangkan pengetahuan dan ketrampilan dalam bidang seni budaya berbasis budaya lokal.', '(0721) 8011014', NULL, 'B', 'http://www.sman14bl.sch.id', '-5.3802299', '105.2104653,17', '2019-06-20 00:44:16', '2019-07-04 20:17:58'),
(16, 'SMAN 15 BANDAR LAMPUNG', 'Jl. Turi Raya, Labuhan Dalam, Bandar Lampung, Bandar Lampung, Lampung', 55, NULL, 'Asah , Asih Menuju Prestasi', 'Meningkatkan jiwa IMTAQ kepada Tuhan YME. · Meningkatkan dan mengembangkan IPTEK · Meningkatkan Disiplin Siswa dalam KBM menuju Prestasi. · Meningkatkan Siswa Dalam Prestasi Olahraga. · Meningkatkan Siswa dalam Bidang Kesenian.', '0721-789569', NULL, 'B', 'http://www.sman15-bdl.sch.id', '-5.3602581', '105.2657456', '2019-06-20 00:46:57', '2019-07-16 21:08:04'),
(17, 'SMAN 16 BANDAR LAMPUNG', 'Jl.Darussalam,Bukit Bilabong Jaya,Susunan Baru Tanjung Karang Barat, Bandar Lampung, Lampung', 49, NULL, 'Bertanggung jawab dalam memajukan mutu pendidikan baik dari jasmani rohani dan sosial  bagi para setiap siswa-siswi', 'Meningkatkan jiwa IMTAQ kepada Tuhan YME.     Meningkatkan dan mengembangkan IPTEK     Meningkatkan Disiplin Siswa dalam KBM menuju Prestasi.     Meningkatkan Siswa Dalam Prestasi Olahraga.     Meningkatkan Siswa dalam Bidang Kesenian', '(0721) 7531916', NULL, 'B', 'http://www.sman16-bdl.sch.id', '-5.4022869', '105.2272147', '2019-06-20 00:49:29', '2019-07-04 20:22:09'),
(18, 'SMAN 17 BANDAR LAMPUNG', 'Jl. Soekarno-Hatta Simpang Suban Kelurahan Pidada Kecamatan Panjang, Bandar Lampung, Lampung', 24, NULL, 'Menuju peserta didik yang berprestasi, berkarya, berwawasan kewirausahaan yang dilandasi dengan iman dan taqwa', '1) Melaksanakan kegiatan keagamaan 2) Menumbuhkan semangat untuk berprestasi secara intensif 3) Membantu siswa dalam mengenali potensi diri untuk dikembangkan secara optimal 4) Menciptakan generasi yang mampu mengukir karya-karya baru (berkreasi)', '(0721)341047', NULL, 'B', 'http://sman17bdl.sch.id/', '-5.4634241', '105.3228561', '2019-06-20 00:52:07', '2019-07-04 20:23:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id` int(11) NOT NULL,
  `subkriteria` varchar(20) NOT NULL,
  `kriteria` varchar(20) NOT NULL,
  `bb` int(11) NOT NULL,
  `ba` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id`, `subkriteria`, `kriteria`, `bb`, `ba`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'a1', 'jarak', 0, 3000, 5, '2019-06-20 01:15:53', '2019-06-20 01:15:53'),
(2, 'a2', 'jarak', 3001, 6000, 4, '2019-06-20 01:16:47', '2019-06-20 01:16:47'),
(3, 'a3', 'jarak', 6001, 9000, 3, '2019-06-20 01:55:03', '2019-06-20 01:55:03'),
(4, 'a4', 'jarak', 9001, 12000, 2, '2019-06-20 01:55:38', '2019-06-20 01:55:38'),
(5, 'a5', 'jarak', 12001, 15000, 1, '2019-06-20 01:56:23', '2019-06-20 01:56:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_indo` int(11) NOT NULL,
  `b_ing` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `asal_sekolah`, `alamat`, `latitude`, `longitude`, `photo`, `b_indo`, `b_ing`, `mtk`, `ipa`, `created_at`, `updated_at`) VALUES
(12, 'putri pertama sari', 'putripertamas34@gmail.com', NULL, '$2y$10$iXJRuwnmXJtigPbTrN31Xu2p03GG9NUVG3F5qbZVVovqL.k84qX.W', NULL, 'putri', 'Sma n 3 bandar lampung', 'jl.khairil anwar gang manggis 1', NULL, NULL, '1563515381.JPG', 80, 89, 70, 78, '2019-07-18 22:49:42', '2019-07-18 22:49:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_tahunan`
--
ALTER TABLE `data_tahunan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_kriteria`
--
ALTER TABLE `detail_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_tahunan`
--
ALTER TABLE `data_tahunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `detail_kriteria`
--
ALTER TABLE `detail_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2019 at 07:12 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.2.18

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
-- Table structure for table `admins`
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$eKbj3UhVx54esgUyBom/tuKFQLi/n5YlKeOrLlL/uAPeV87ruJHhK', '2019-05-13 21:16:56', '2019-05-13 21:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `data_tahunan`
--

CREATE TABLE `data_tahunan` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `passing_grade` int(11) NOT NULL,
  `kuota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_tahunan`
--

INSERT INTO `data_tahunan` (`id`, `sekolah_id`, `nama_sekolah`, `passing_grade`, `kuota`, `created_at`, `updated_at`) VALUES
(1, 1, 'SMP Negeri 1 Bandar Lampung', 267, 168, '2019-06-20 06:56:29', '2019-06-20 15:19:43'),
(2, 2, 'SMP Negeri 2 Bandar Lampung', 262, 166, '2019-06-20 15:18:46', '2019-06-20 15:18:46'),
(3, 3, 'SMP Negeri 3 Bandar Lampung', 244, 65, '2019-06-20 15:29:27', '2019-06-20 15:29:27'),
(4, 4, 'SMP Negeri 4 Bandar Lampung', 257, 100, '2019-06-20 15:30:03', '2019-06-20 15:30:03'),
(5, 5, 'SMP Negeri 5 Bandar Lampung', 252, 85, '2019-06-20 15:30:37', '2019-06-20 15:30:37'),
(6, 6, 'SMP Negeri 6 Bandar Lampung', 235, 85, '2019-06-20 15:31:14', '2019-06-20 15:31:14'),
(7, 7, 'SMP Negeri 7 Bandar Lampung', 234, 140, '2019-06-20 15:31:41', '2019-06-20 15:31:41'),
(8, 8, 'SMP Negeri 8 Bandar Lampung', 247, 111, '2019-06-20 15:32:07', '2019-06-20 15:32:07'),
(9, 9, 'SMP Negeri 9 Bandar Lampung', 233, 106, '2019-06-20 15:32:51', '2019-06-20 15:32:51'),
(10, 10, 'SMP Negeri 10 Bandar Lampung', 248, 90, '2019-06-20 15:33:24', '2019-06-20 15:33:24'),
(11, 11, 'SMP Negeri 11 Bandar Lampung', 203, 93, '2019-06-20 15:33:49', '2019-06-20 15:33:49'),
(12, 12, 'SMP Negeri 12 Bandar Lampung', 237, 64, '2019-06-20 15:34:15', '2019-06-20 15:34:15'),
(13, 13, 'SMP Negeri 13 Bandar Lampung', 230, 198, '2019-06-20 15:34:45', '2019-06-20 15:34:45'),
(14, 14, 'SMP Negeri 14 Bandar Lampung', 261, 93, '2019-06-20 15:35:18', '2019-06-20 15:35:18'),
(15, 15, 'SMP Negeri 15 Bandar Lampung', 225, 10, '2019-06-20 15:35:43', '2019-06-20 15:35:43'),
(16, 16, 'SMP Negeri 16 Bandar Lampung', 237, 81, '2019-06-20 15:36:10', '2019-06-20 15:36:10'),
(17, 17, 'SMP Negeri 17 Bandar Lampung', 221, 68, '2019-06-20 15:36:35', '2019-06-20 15:36:35'),
(18, 18, 'SMP Negeri 18 Bandar Lampung', 214, 140, '2019-06-20 15:36:58', '2019-06-20 15:36:58'),
(19, 19, 'SMP Negeri 19 Bandar Lampung', 256, 70, '2019-06-20 15:37:19', '2019-06-20 15:37:19'),
(20, 20, 'SMP Negeri 20 Bandar Lampung', 237, 139, '2019-06-20 15:37:44', '2019-06-20 15:37:44'),
(21, 21, 'SMP Negeri 21 Bandar Lampung', 248, 185, '2019-06-20 15:38:10', '2019-06-20 15:38:10'),
(22, 22, 'SMP Negeri 22 Bandar Lampung', 255, 111, '2019-06-20 15:38:51', '2019-06-20 15:38:51'),
(23, 23, 'SMP Negeri 23 Bandar Lampung', 252, 70, '2019-06-20 15:39:11', '2019-06-20 15:39:11'),
(24, 24, 'SMP Negeri 24 Bandar Lampung', 237, 100, '2019-06-20 15:39:37', '2019-06-20 15:39:37'),
(25, 25, 'SMP Negeri 25 Bandar Lampung', 245, 160, '2019-06-20 15:40:07', '2019-06-20 15:40:07'),
(26, 26, 'SMP Negeri 26 Bandar Lampung', 209, 142, '2019-06-20 15:40:40', '2019-06-20 15:40:40'),
(27, 27, 'SMP Negeri 27 Bandar Lampung', 226, 9, '2019-06-20 15:41:08', '2019-06-20 15:41:08'),
(28, 28, 'SMP Negeri 28 Bandar Lampung', 222, 95, '2019-06-20 15:41:36', '2019-06-20 15:41:36'),
(29, 29, 'SMP Negeri 29 Bandar Lampung', 261, 105, '2019-06-20 15:41:55', '2019-06-20 15:41:55'),
(30, 30, 'SMP Negeri 30 Bandar Lampung', 223, 61, '2019-06-20 15:42:14', '2019-06-20 15:42:14'),
(31, 31, 'SMP Negeri 31 Bandar Lampung', 220, 50, '2019-06-20 15:42:52', '2019-06-20 15:42:52'),
(32, 32, 'SMP Negeri 32 Bandar Lampung', 181, 55, '2019-06-20 15:43:18', '2019-06-20 15:43:18'),
(33, 33, 'SMP Negeri 33 Bandar Lampung', 206, 40, '2019-06-20 15:43:45', '2019-06-20 15:43:45'),
(34, 34, 'SMP Negeri 34 Bandar Lampung', 216, 22, '2019-06-20 15:44:15', '2019-06-20 15:44:15'),
(35, 35, 'SMP Negeri 35 Bandar Lampung', 206, 20, '2019-06-20 15:46:49', '2019-06-20 15:46:49'),
(36, 36, 'SMP Negeri 36 Bandar Lampung', 228, 20, '2019-06-20 15:47:15', '2019-06-20 15:47:15'),
(37, 37, 'SMP Negeri 37 Bandar Lampung', 215, 16, '2019-06-20 15:47:46', '2019-06-20 15:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kriteria`
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
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `jenis_kriteria` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kriteria`, `jenis_kriteria`, `created_at`, `updated_at`) VALUES
(1, 'jarak', 'cost', '2019-05-16 00:39:15', '2019-06-20 08:42:50'),
(2, 'Selisih PG & Nilai UN', 'Binefit', '2019-06-20 08:43:58', '2019-06-20 08:43:58'),
(3, 'Kuota', 'Binefit', '2019-06-20 08:44:14', '2019-06-20 08:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jumlah_guru` int(60) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `akreditas` varchar(10) NOT NULL,
  `Link_Sekolah` varchar(50) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `alamat`, `jumlah_guru`, `gambar`, `visi`, `misi`, `no_telp`, `id_kecamatan`, `akreditas`, `Link_Sekolah`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'SMP Negeri 1 Bandar Lampung', 'SMP Negeri 1 Bandar Lampung, Jalan Mister Gele Harun, Rawa Laut, Bandar Lampung City, Lampung, Indonesia', 58, NULL, 'Mewujudkan Lulusan SMP Negeri 1 Bandar Lampung yang Bertakwa, Cerdas, Terampil,  Berkarakter, dan Kompetitif Global (WADAS  PILTERKOM)     Dengan Indikator:  1.  Terwujudnya layanan pendidikan yang bermutu, efesien, dan relevan pada era global.  2.  Terwujudnya kehidupan warga sekolah yang berkarakter relegius, nasionalis, integritas, mandiri dan gotong royong.  3.  Terwujudnya sistem manajemen sekolah yang transparan, akuntabel, efektif, dan partisipatif.  4.  Terwujudnya budaya mutu  5.  Terjalinnya kerja sama dengan sekolah dalam dan luar negeri yang terakreditasi.  6.  Unggul dalam prestasi akademik yang meliputi:       -  Pencapaian nilai ujian nasional       -  Berbagai lomba/olimpiade mata pelajaran di tingkat nasional dan internasional.       -  Pencapaian test standar internasional.  7.  Unggul dalam prestasi nonakademik yang meliputi :       -  Lomba ekstrakurikuler.       -  Imtak dan Budi Pekerti.  8.  Mampu bersaing di tingkat nasional dan internasional.  9.  Terwujudnya lingkungan sekolah yang a', '1.  Mewujudkan pendidikan yang bermutu, efesien, dan relevan sesuai dengan tuntutan kemajuan zaman.  2.  Melaksanakan pengembangan kegiatan keagamaan dan budi pekerti.  3.  Melaksaanakan manajemen berbasis sekolah (MBS).  4.  Menjalin kerjasama  dengan sekolah-sekolah untuk meningkatkan mutu pendidikan.  5.  Melaksanakan pengembangan SDM pendidik dan tenaga kependidikan.  6.  Melaksanakan pengembangan kurikulum satuan pendidikan melalui pendekatan ilmiah dalam proses pembelajaran sesuai dengan kurikulum 2103.  7.  Mempertahankan dan meningkatkan mutu layanan pendidikan.  8.  Meningkatkan mutu proses pembelajaran dan bimbingan secara efektif dan inovatif.  9.  Meningkatkan profesionalitas dan kompetensi guru dan pegawai.  10. Meningkatkan pengadaan fasilitas sekolah sesuai dengan standar nasional.  11. Meningkatkan standar pencapaian ketuntasan belajar dan kelulusan siswa.  12. Melaksanakan pembinaan kesiswaan secara intensif melalui kegiatan OSIS dan ekstrakurikuler  untuk meningkatkan prestasi siswa dibidang', '081369480963 (A.B. Harianto)', NULL, 'A', 'www.spansabdl.sch.id', '-5.421188', '105.2647657', '2019-07-08 05:20:53', '2019-07-16 22:31:28'),
(2, 'SMP Negeri 2 Bandar Lampung', 'SMP Negeri 2 Bandar Lampung, Jalan Pramuka, Rajabasa, Bandar Lampung City, Lampung, Indonesia', 51, NULL, 'Unggul, Kompetitif  dan Kolaboratif di Era Global Berlandaskan Iman dan Taqwa', '1. Mewujudkan lulusan yang berprestasi dan mampu bersaing di tingkat nasional maupun internasional. 2. Mewujudkan siswa dengan kemampuan non akademik yang mampu bersaing di tingkat nasional dan internasional. 3. Mewujudkan lulusan yang cerdas, kompetitif, cinta tanah air, santun dan bertaqwa. 4. Mewujudkan perangkat kurikulum yang lengkap, kreatif, inovatif, dan menyenangkan. 5. Mewujudkan proses pembelajaran yang aktif, kreatif, efektif, inovatif dan menyenangkan melalui pendekatan ilmiah. 6. Mewujudkan fasilitas sekolah yang lengkap, relevan, dan berwawasan kedepan. Mewujudkan pendidik dan tenaga kependidikan yang mampu, memiliki komitmen dan kompetensi tinggi. 6. Mewujudkan manajemen berbasis sekolah (MBS) yang tangguh. Mewujudkan sistem penilaian autentik proses dan hasil belajar yang akuntabel. Mewujudkan pembimbingan yang memadai, wajar dan adil sesuai dengan tuntutan pendidikan. Mewujudkan jalinan kerjasama dengan sekolah dan institusi lain di dalam dan luar negeri. 7. Mewujudkan sekolah yang inovatif, kreatif, dinamis dan berwawa', '(0721) 8011455', NULL, 'A', 'http://smpn2-blampung.sch.id/', '-5.376446534739357', '105.22160888465578', '2019-07-08 07:40:45', '2019-07-08 07:40:45'),
(3, 'SMP Negeri 3 Bandar Lampung', 'SMPN 3 Bandar Lampung, Jalan Basuki Rahmat, Gedong Pakuon, Bandar Lampung City, Lampung, Indonesia', 55, NULL, 'Beriman, bertaqwa, unggul dalam prestasi, terampil dan mampu menghadapi tantangan masa depan', '1. Menumbuhkan penghayatan dan pengamalan terhadap ajaran agama yang dianut sehingga menjadi manusia yang beriman dan bertaqwa 2. Meningkatkan kegiatan dibidang agama dan melaksanakan ajaran agama dalamkehidupan sehari-hari 3. Meningkatkan pembiasaan nilai karakter bangsa relijius, nasionalis, mandiri, gotong royong dan integritas 4. Melaksanakan pengembangan kurikulum sekolah 5. Melaksanakan proses Pembelajaran dan bimbingan secara efektif dan efisiense hingga setiap siswa tumbuh dan berkembang dengan baik sesuai dengan potensinya. 6. Mendorong dan menumbuhkan semangat berkompetensi kepada seluruh warga sekolah 7. Melaksanakan Pembelajaran berkarakter bangsa untuk setiap mata pelajaran 8. Menerapkan pengelolaan sekolah secara partisipatif dengan melibatkan semua warga sekolah dan masyarakat 9. Membangun generasi emas 2045 dengan dibekali karakter, keterampilan dan literasi 10. Mendorong penguatan nilai – nilai karakter 11. Melaksanakan pengintegrasian tripusat pendidikan (keluarga, sekolah dan masyarakat) dengan intrakurikuler, ko-kurikuler, ekstrakurikuler dan hidden curr di sekolah 12. Meningkatkan dan mengembangkan profesionalitas (Pendidikdan Tenaga Kependidikan) 13. Meningkatkan prestasi siswa dalam kegiatan intra dan ekstrakurikuler 14. Melaksanakan pengembangan kompetensi siswa yang berprestasi dan pembinaan kepada siswa yang berkemampuan rendah dibidang akademik 15. Melaksanakan pengembangan fasilitas pendidikan dan manajemen berbasis pendidikan (SNP) 16. Menumbuhkan budaya santun, budayamalu, budaya maju dan budaya tertib 17. Menumbuhkan pembiasaan senyum, salam, sapa, sopan dan santun', '(0721) 488843', NULL, 'A', 'http://smpnegeri3bandarlampung.blogspot.com/', '-5.441008999999998', '105.25440430000003', '2019-07-08 08:04:04', '2019-07-08 08:04:04'),
(4, 'SMP Negeri 4 Bandar Lampung', 'SMPN 4 Bandar Lampung, Jalan Hos Cokroaminoto, Rawa Laut, Bandar Lampung City, Lampung, Indonesia', 60, NULL, 'Mewujudkan lulusan SMP Negeri 4 Bandar Lampung yang CERDAS, BERIMAN, BERTAQWA, TRAMPIL dan KOMPETITIF, UNGGUL dalam Prestasi.', '1. Mewujudkan pendidikan yang adil dan merata, bermutu, efisien dan relevan sesuai dengan tuntutan kurikulum yang berlaku 2. Mengimplementasikan  manajemen berbasis sekolah (MBS) dalam pengelolaan kelebagaan sekolah 3. Mengembangkan seluruh kemampuan sekolah menuju ketrecapaian Standar Pelayanan Minimun (SPM) Pendidikan. 4. Meningkatkan jaringan kerjasama dengan lembaga dan instansi terkait dan Stokholder sekolah. 5. Meningkatkan Profesionalitas dan Kompetensi guru serta pegawai 6. Melengkapi sarana prasarana dan fasilitas pendidikan yang dibutuhkan untuk menunjang tercapainya SSN. 7. Melaksanakan pembinaan kesiswaan secara intensif melalui kegiatan OSIS dan  ekstrakurikuler untuk mendorong terwujudnya pengembambangan terwujudnya pengembangan potensi dan bakat yang dimiliki siswa. 8. Menanamkan budaya tertib dan disiplin dalam kehidupan sekolah segenap warga sekolah.', '(0721) 252710', NULL, 'A', 'http://smpnegeri4bandarlampung.blogspot.com/', '-5.423298799999999', '105.26276640000003', '2019-07-08 08:15:46', '2019-07-08 08:15:46'),
(5, 'SMP Negeri 5 Bandar Lampung', 'Junior High School 5 Bandar Lampung, Jalan Beo, Tanjung Agung Raya, Bandar Lampung City, Lampung, Indonesia', 81, NULL, 'Terwujudnya SMP Negeri 5 Bandar Lampung menjadi sekolah yang berkualitas, menghasilkan siswa yang bertaqwa, berprestasi, berbudaya dan terampil', '1. Mewujudkan pendidikan bermutu dan inovatif. 2. Mewujudkan lulusan yang beriman dan bertaqwa serta menjunjung tinggi toleransi antar umat beragama. 3. Mewujudkan kemampuan potensi akademik dan non akademik. 4. Mewujudkan penerapan disiplin, etika dan solidaritas. 5. Mewujudkan lingkungan sekolah yang Aman, Sehat, Rindang, dan Indah (ASRI). 6. Mewujudkan keterampilan dibidang IPTEK.', '(0721) 254072', NULL, 'A', 'smpn5-bdl.blogspot.com', '-5.4123436', '105.26975240000002', '2019-07-19 07:13:16', '2019-07-19 07:13:16'),
(6, 'SMP Negeri 6 Bandar Lampung', 'SMPN 6 Bandar Lampung, Jalan Laksamana Malahayati, Pesawahan, Bandar Lampung City, Lampung, Indonesia', 66, NULL, 'Berkualitas, Berbudaya, dan Bertaqwa', '1. Melaksanakan pengelolaan pendidikan berbasis sekolah dengan melibatkan stakeholders secara aktif. 2. Meningkatkan kompetensi tenaga pendidik dan kependidikan. 3. Melaksanakan pengembangan kurikulum sekolah. 4. Meningkatkan mutu kegiatan pembelajaran aktif, inovatif, kreatif, efektif, dan menyenangkan (paikem). 5. Meningkatkan prestasi akademik dan non-akademik. 6. Menumbuhkan penghayatan dan pengamalan ajaran agama agama agar menjadi manusia yang bertawqwa. Meningkatkan ketercukupan sarana dan prasarana belajar. 7. Meningkatkan ketertiban dan kedisiplinan warga sekolah.', '(0721) 483629', NULL, 'A', 'https://www.smpn6bandarlampung.sch.id/', '-5.4488822', '105.25819690000003', '2019-07-19 07:18:10', '2019-07-19 07:18:10'),
(7, 'SMP Negeri 7 Bandar Lampung', 'SMP NEGERI 7 BANDAR LAMPUNG, Segala Mider, Bandar Lampung City, Lampung, Indonesia', 50, NULL, '-', '-', '(0721) 266689', NULL, 'A', 'http://www.smpn7bdl.sch.id/', '-5.4027939', '105.23883139999998', '2019-07-19 07:27:46', '2019-07-19 07:27:46'),
(8, 'SMP Negeri 8 Bandar Lampung', 'SMP Negeri 8 Bandar Lampung, Kampung Baru, Bandar Lampung City, Lampung, Indonesia', 54, NULL, 'Mewujudkan sekolah terbaik, menghasilkan peserta didik yang berkualitas Iptek dan imtaqnya', '1. Melaksanakan pembelajaran bimbingan terefektif. 2. Menghasilkan lulusan yang dapat bersaing. 3. Meningkatkan lingkungan sekolah sesuai 7k. 4. Menumbuhkan kegiatan berlandaskan religius, berbudi dengan wawasan ipteq imtaq. 5. Meningkatkan profesionalisme pendidik pendidikan. 6. Mengembangkan kegiatan ekstrakurikuler potensial. 7. Membudayakan tiada hari tanpa kompetisi.', '(0721) 701781', NULL, 'A', 'smpnegeri8bdl.blogspot.com/p/blog-page.html', '-5.3725681', '105.25038770000003', '2019-07-19 07:32:55', '2019-07-19 07:32:55'),
(9, 'SMP Negeri 9 Bandar Lampung', 'SMP Negeri 9 Bandar Lampung, Jalan Amir Hamzah, Gotong Royong, Bandar Lampung City, Lampung, Indonesia', 44, NULL, '-', '-', '(0721) 252888', NULL, 'A', 'smpn9-bandar-lampung.blogspot.com/', '-5.426887799999999', '105.25393459999998', '2019-07-19 07:36:33', '2019-07-19 07:36:33'),
(10, 'SMP Negeri 10 Bandar Lampung', 'SMP Negeri 10 Bandar Lampung, Jalan Panglima Polim, Segala Mider, Bandar Lampung City, Lampung, Indonesia', 59, NULL, '-', '-', '(0721) 701279', NULL, 'A', 'https://smpn10balam.blogspot.com/', '-5.3925378', '105.24858689999996', '2019-07-19 07:44:12', '2019-07-19 07:44:12'),
(11, 'SMP Negeri 11 Bandar Lampung', 'SMP Negeri 11 Bandar Lampung, Ketapang, Bandar Lampung City, Lampung, Indonesia', 58, NULL, '-', '-', '-', NULL, 'A', 'https://www.smpn11balam.sch.id/', '-5.435838599999999', '105.29634699999997', '2019-07-19 07:48:24', '2019-07-19 07:48:24'),
(12, 'SMP Negeri 12 Bandar Lampung', 'SMPN 12 Bandar Lampung, Jalan Professor M. Yamin, Rawa Laut, Bandar Lampung City, Lampung, Indonesia', 56, NULL, 'Mewujudkan siswa, guru, dan karyawan SMP Negeri 12 Bandar Lampung dalam penguasaan IPTEKS yang berlandaskan IMTAQ, budi pekerti luhur, dan berwawasan lingkungan.', '1. Meningkatkan wawasan pengetahuan keagamaan yang didasari keimanan, ketaqwaan terhadap Tuhan Yang Maha Esa dan berbudi pekerti luhur. 2. Melaksanakan pembelajaran secara intensif, terjadwal, efektif, dan efisien bagi guru dan siswa 3. Meningkatkan wawasan pengetahuan keagamaan yang di dasari keimanan dan ketaqwaan terhadap Tuhan Yang Maha Esa 4. Melaksanakan pembelajaran secara intensif, terjadwal, efektif, dan efisien bagi guru dan siswa 5. Menumbuhkan semangat keunggulan pada warga sekolah dan membudayakan sikap peduli terhadap lingkungan hidup 6. Melengkapi dan memberdayakan media pembelajaran secara maksimal untuk meningkatkan prestasi akademis siswa 7. Menyelenggarakan program kegiatan kompetensi dan kompetisi bagi pengembangan profesi guru dan prestasi siswa 8. Menjalin kerjasama antara sekolah, orang tua siswa, Komite Sekolah, dan Stake Holder secara rutin 9. Melengkapi sarana kesenian dan olah raga guna meningkatkan prestasi dalam bidang kesenian dan olahraga 10. Meningkatkan kualitas kegiatan ilmiah tim PIR/KIR ketingkat nasional dan internasional', '(0721) 252910', NULL, 'A', 'smpn12bdl.blogspot.com/', '-5.4211369', '105.26676559999999', '2019-07-19 07:55:02', '2019-07-19 07:55:02'),
(13, 'SMP Negeri 13 Bandar Lampung', 'SMP Negeri 13 Bandar Lampung, Jalan Marga, Beringin Raya, Bandar Lampung City, Lampung, Indonesia', 65, NULL, 'Mewujudkan  sekolah  berkualitas berdasarkan IPTEK dan IMTAK', '1. Melaksanakan  pembinaan  dalam  bentuk  pembelajaran  materi  membaca  Al - Qur’an,  sehingga  diharapkan  dapat  meningkatkan  keimanan  dan  ketakwaan dan budi pekerti siswa agar dapat bertindak arif bijaksana. 2. Melaksanakan  pembelajaran  dan  bimbingan  yang  standar  secara  terus  menerus  sehingga  siswa berkembang  secara  optimal  dengan  potensi  yang  dimiliki. 3. Menyelenggarakan  pendidikan  sesuai  dengan  standar  pendidikan  efisien  relefan   sehingga   proses   kegitan   belajar   mengajar   (KBM)   terlaksana  dengan baik. 4. Meningkatkan  profesionalisme  pendidik  dan  tenaga  ke pendidikan  melalui work   shop,   In   House  Treaning ,  lokakarya,   seminar   dan   penyetaraan  kualifikasi pendidikan.  5. Menanamkan kesadaran budaya tertib dan disiplin dalam kehidupan warga  dan lingkungan sekolah. 6. Mengembangkan ilmu pengetahuan dan teknologi yang ber basis ICT. 7. Menciptakan  lulusan  yang  berkualitas,  berakhlak  tinggi  dan  bermakna  pada tuhan Yang Maha Esa. 8. Memberdayakan dan melengkapi fasilitas sekolah untuk menunjang proses  pembelajaran,  sehingga  mampu  menciptakan  keunggulan,  baik  prestasi  akademis dan n on akademis. 9. Menerapkan   manajemen   partisipasi   dengan   memberdayakan   seluruh  warga sekolah, komite sekolah dan stekholders . 10. Meningkatkan  bimbingan  dan  latihan  dalam  bidang  pengembangan  diri  sesuai dengan minat dan bakat anak didik.', '(0721) 271054', NULL, 'A', 'smpn13-bdl.blogspot.com/', '-5.3939505', '105.20172300000002', '2019-07-30 05:52:35', '2019-07-30 05:52:35'),
(14, 'SMP Negeri 14 Bandar Lampung', 'SMPN 14 Bandar Lampung, Jalan Teuku Cik Ditiro, Beringin Raya, Bandar Lampung City, Lampung, Indonesia', 61, NULL, 'Menjadikan SMP Negeri 14 Bandarlampung sebagai sekolah yang terbaik dari yang baik dikota Bandarlampung', '1. Melaksanakan pembelajaran dan bimbingan secara maksimal serta melaksanakan berbagai macam kegiatan secara intensif untuk memberikan kesempatan kepada siswa agar dapat mengembangkan potensi dan bakat yang dimiliki secara optimal. 2. Meningkatkan SDM guru dan pegawai. 3. Meningkatkan pelaksanaan ajaran agama dalam kehidupan sehari – hari. 4. Melaksanakan pengembangan kurikulum sekolah. 5. Melaksanakan pengembangan silabus setiap mata pelajaran. 6. Melaksanakan pengembangan RPP setiap mata pelajaran. 7. Melaksanakan pengembangan system penilaian. 8. Melaksanakan pembelajaran dan bimbingan secara effektif, sehingga setiap siswa tumbuh dan berkembang secara baik sesuai dengan potensi. 9. Mendorong dan menumbuhkan semangat berkompetisi kepada seluruh warga sekolah. 10. Menerapkan pengelolaan sekolah secara partisipasi dengan melibatkan semua warga sekolah dan masyarakat. 11. Mengembangkan kurikulum muatan lokal. 12. Meningkatkan kemampuan guru dalam pengembangan metode pembelajaran. 13. Meningkatkan kemampuan dalam pengembangan strategi pembelajaran. 14. Memberikan pembinaan khusus kepada siswa yang berpotensi dibidang olahraga. 15. Melaksanakan peningkatan disiplin sekolah. 16. Membantu siswa dalam membentuk jiwa dan raga yang sehat sehingga dapat bekerja dengan kesadaran dan disiplin tinggi. 17. Melaksanakan kegiatan yang dapat mengembangkan potensi siswa untuk membentuk jiwa seni dan budaya yang tinggi. 18. Bekerjasama dengan lembaga terkait, masyarakat, dalam pembinaan siswa melalui kegiatan ekstrakurikuler. 19. Melaksanakan peningkatan kegiatan UKS. 20. Melaksanakan peningkatan kegiatan pramuka. 21. Melaksanakan peningkatan kegiatan KIR. 22. Melaksanakan pengembangan kegiatan dibidang keterampilan. 23. Melaksanakan pengembangan kompetensi kepada siswa yang berprestasi dibidang akademik. 24. Melaksanakan pembinaan kepada siswa yang kemampuan dibidang akademik rendah. 25. Melaksanakan pengembangan fasilitas pendidikan. 26. Melaksanakan pengembangan manajemen berbasis SNP. 27. Melaksanakan pengembangan kemampuan SDM (pendidik dan tenaga kependidikan).', '(0721) 270540', NULL, 'A', 'smpn14bdrlampung.blogspot.com/', '-5.399253400000001', '105.20705550000002', '2019-07-30 06:01:44', '2019-07-30 06:01:44'),
(15, 'SMP Negeri 15 Bandar Lampung', 'SMP Negeri 15 Bandar Lampung, Jalan Banten, Bakung, Bandar Lampung City, Lampung, Indonesia', 56, NULL, 'Sekolah Unggul Bercirikan Taqwa, Cerdas, Terampil, Mandiri dan Berkarakter', '1. Melengkapi     sarana     /     prasarana     sekolah     yang     menjadi  terselenggaranya  pendidikan  dan  pembelajaran  yang  efektif  dan  efisien.  2.Memperbaiki  sarana  /  prasarana  sekolah  yang  kurang  memadai  /  rusak    untuk    menunjang    terselenggaranya    pendidikan    dan  pembelajaran yang kondusif.  3.Mendorong  dan  memberikan  kesempatan  kepada  setiap  guru  /  pegawai   untuk   meningkatkan   pengetahuan   dan   ketrampilan,  sehingga setiap guru / pegawai dapat bekerja secara profesional.  4.Berupaya  untuk  menciptakan  lingkungan  sekolah  yang  bersih,  indah,  sehat,  aman  dan  nyaman,  agar  terwujud  suasana  sekolah  yang kondusif.  5.Menyelenggarakan   berbagai   macam   kegiatan   secara   intensif  untuk    memberikan    kesempatan    kepada    siswa    agar    dapat  mengembangkan   potensi   dan   bakat   yang   dimilikinya   secara  optimal.  6.Menciptakan  situasi  dan  iklim  kerja  yang  harmonis,  sehingga  mampu   mendorong   peningkatan   kerja   sama   seluruh   warga  sekolah.  7.Membangun     demokrasi     sekolah     yang     dapat     menumbuh  kembangkan  semangat  dan  motivasi  siswa  dalam  melaksanakan  tugas pokoknya sebagai pelajar.  8.Menjalin  kerjasama  yang  harmonisa    dengan  masyarakat  dan  instansi   terkait,   untuk   meningkatkan   kepeduliannya   terhadap  pendidkan sekolah.  9.Mengembangkan  wirausaha  sekolah  dalam  rangka  peningkatan  kesejahteraan guru dan pegawai.  10.Menyelenggarakan  pembinaan  kerokhanian  secara  intensif  dan  terpadu, dalam rangka peningkatan iman dan taqwa serta berbudi  pekerti luhur bagi warga sekolah.  11.Meningkatkan kedisiplinan bagi semua warga sekolah.  12.Menyelenggarakan    Manajemen    Peningkatan    Mutu    Berbasis  Sekolah (MPMBS) secara akuntabel dan transparan.  13.Selalu berpartisipasi dalam kegiatan atau even-event penting yang  diselenggarakan  oleh  dinas  dan  lembaga-lembaga  serta  instansi  terkait.', '(0721) 489627', NULL, 'A', '10807204.siap-sekolah.com/sekolah-profil/', '-5.451498099999999', '105.25022739999997', '2019-07-30 06:08:53', '2019-07-30 06:08:53'),
(16, 'SMP Negeri 16 Bandar Lampung', 'Junior High School 16 Bandar Lampung, Jalan Dokter Cipto Mangunkusumo, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', 53, NULL, 'Menjadi Sekolah Model Berbudaya Lingkungan, Berakhlak Mulia, Unggul pada Ilmu Pengetahuan dan Teknologi', '1. melengkapi sarana/prasarana sekolah yang menjadi kebutuhan guru/pegawai untuk menunjang terselenggaranya pendidikan dan pembelajaran yang efektif dan efisien; 2. memperbaiki sarana/prasarana sekolah yang kurang memadai/rusak untuk menunjang terselenggaranya pendidikan dan pembelajaran yang kondusif; 3. mendorong dan memberikan kesempatan kepada setiap guru/pegawai untuk meningkatkan pengetahuan dan ketrampilannya, sehingga setiap guru/pegawai dapat bekerja secara profesional; 4. berupaya untuk menciptakan lingkungan sekolah yang bersih, indah, sehat, aman dan nyaman, agar terwujud suasana sekolah yang kondusif; 5. menyelenggarakan berbagai macam kegiatan secara intensif untuk memberikan kesempatan kepada siswa agar dapat mengembangkan potensi dan bakat yang dimilikinya secara optimal; 6. menciptakan situasi dan iklim kerja yang harmonis, sehingga mampu mendorong peningkatan kerja sama seluruh warga sekolah; 7. membangun demokrasi sekolah yang dapat menumbuhkembangkan semangat dan motivasi siswa dalam melaksanakan tugas pokoknya sebagai pelajar; 8. menjalin kerjasama yang harmonis dengan masyarakat dan instansi terkait, untuk meningkatkan kepeduliannya terhadap pendidikan sekolah; 9. mengembangkan wirausaha sekolah dalam rangka peningkatan kesejahteraan guru dan pegawai; 10. menyelenggarakan pembinaan kerokhanian secara intensif dan terpadu, dalam rangka peningkatan iman dan taqwa serta berbudi pekerti luhur bagi warga sekolah; 11. meningkatkan kedisiplinan bagi semua warga sekolah; 12. Menyelenggarakan Menejemen Peningkatan Mutu Berbasis Sekolah (MPMBS) secara akuntabel dan transparan, dan; 13. selalu berpartisipasi dalam kegiatan atau event-event penting yang diselenggarakan oleh dinas dan lembaga-lembaga serta instansi terkait.', '(0721) 484358', NULL, 'A', 'smp16bl.blogspot.com/', '-5.434256800000001', '105.26623749999999', '2019-07-30 06:11:40', '2019-07-30 06:11:40'),
(17, 'SMP Negeri 17 Bandar Lampung', 'SMPN 17 Bandar Lampung, Jalan Abdi Negara, Gulak Galik, Bandar Lampung City, Lampung, Indonesia', 45, NULL, 'Sekolah Berkualitas, Berbudaya dan Taqwa.', '1.    Meningkatkan Mutu Pendidikan SMP Negeri 17 Bandar Lampung. 2. Menumbuhkan sikap profesionalisme guru dan karyawan. 3. Melaksanakan Proses Belajar Mengajar (PBM) secara efektif dan efesien. 4. Meningkatkan Demokrasi Sekolah. 5. Menumbuhkan semangat warga sekolah untuk berprestasi. 6. Menciptakan lingkungan yang sehat dan iklim yang harmonis 7. Meningkatkan Keimanan dan Ketaqwaan terhadap Tuhan YME 8. Menanamkan kesadaran dalam melanjutkan kewajiban beragama 9. Menyelenggarakan berbagai kegiatan dibidang keagamaan.', '(0721) 487619', NULL, 'A', 'http://smpnegeri17bandarlampung.blogspot.com/', '-5.436168599999999', '105.26060319999999', '2019-07-30 06:14:19', '2019-07-30 06:14:19'),
(18, 'SMP Negeri 18 Bandar Lampung', 'SMPN 18 Bandar Lampung, Jalan Rasuna Said, Pengajaran, Bandar Lampung City, Lampung, Indonesia', 55, NULL, '-', '-', '(0721) 485630', NULL, 'A', '10807207.siap-sekolah.com/', '-5.429508799999999', '105.25529310000002', '2019-07-30 06:19:08', '2019-07-30 06:19:08'),
(19, 'SMP Negeri 19 Bandar Lampung', 'SMPN 19 Bandar Lampung, Jalan Turi Raya, Labuhan Dalam, Bandar Lampung City, Lampung, Indonesia', 63, NULL, 'UNGGUL DAN BERPRESTASI', 'DISIPLIN  KERJA  YANG TINGGI DALAM  MEWUJUDKAN MANAJEMEN BERBASIS SEKOLAH, KERJASAMA YANG HARMONIS , DAN  PELAYANAN PRIMA DI SEGALA BIDANG', '(0721) 780339', NULL, 'A', 'smpn19-bdl.blogspot.com/', '-5.364834900000001', '105.26730339999995', '2019-07-30 06:22:06', '2019-07-30 06:22:06'),
(20, 'SMP Negeri 20 Bandar Lampung', 'SMPN 20 Bandar Lampung, Labuhan Dalam, Bandar Lampung City, Lampung, Indonesia', 74, NULL, '-', '-', '-', NULL, 'B', 'smpn20bandarlampung.blogspot.com/', '-5.3526641', '105.26330619999999', '2019-07-30 06:27:14', '2019-07-30 06:27:14'),
(21, 'SMP Negeri 21 Bandar Lampung', 'SMPN 21 Bandar Lampung, Harapan Jaya, Bandar Lampung City, Lampung, Indonesia', 54, NULL, '-', '-', '(0721) 785609', NULL, 'A', 'http://smpn21bdl.blogspot.com/', '-5.365675899999998', '105.29981709999993', '2019-07-30 06:33:58', '2019-07-30 06:33:58'),
(22, 'SMP Negeri 22 Bandar Lampung', 'SMP Negeri 22 Bandar Lampung, Jalan ZA. Pagar Alam, Gedong Meneng, Bandar Lampung City, Lampung, Indonesia', 61, NULL, 'Mewujudkan sekolah yang berprestasi, berketerampilan,berkualitas, berlandaskan iman dan taqwa', '1. Mewujudkan lingkungan sekolah yang kondusif. 2. Melaksanakan KTSP dengan efektif dan efisien. 3. Melaksanakan pembelajaran dan bimbingan secara efektif dan efisien. 4. Melaksanakan dan mengembangkan pendidikan keterampilan dan kesehatan . 5. Meningkatkan kualitas tenaga kependidikan dan pengajaran . 6. Melaksanakan dan meningkatkan kualitas kegiatan keagamaan dan kebudayaan . 7. Membentuk team work sekolah yang berkualitas . 8. Mengikuti berbagai perlombaan dalam segala jenjang (tingkatan) . 9. Meningkatkan kesejahteraan warga sekolah . 10. Mewujudkan sarana dan prasarana penunjang kegiatan pembelajaran dan ekstrakurikuler .', '(0721) 703510', NULL, 'A', '10807194.siap-sekolah.com/sekolah-profil/', '-5.3731179', '105.23969740000007', '2019-07-30 06:37:58', '2019-07-30 06:37:58'),
(23, 'SMP Negeri 23 Bandar Lampung', 'SMP Negeri 23 Bandar Lampung, Jalan Jenderal Sudirman, Rawa Laut, Bandar Lampung City, Lampung, Indonesia', 47, NULL, '-', '-', '(0721) 252383', NULL, 'A', 'duajurai.co/tag/smpn-23-bandar-lampung/', '-5.4229123', '105.26379500000007', '2019-07-30 06:40:32', '2019-07-30 06:40:32'),
(24, 'SMP Negeri 24 Bandar Lampung', 'SMPN 24 Bandar Lampung, Jl. H. Endro Suratmin, Sukarame, Bandar Lampung City, Lampung, Indonesia', 50, NULL, 'Berkualitas dalam iman, ilmu dan  memiliki ketrampilan serta berakhlak mulia', '1. Membina ketaqwaan dan keimanan, budi pekerti luhur sesuai    dengan tuntunan agama dan budaya bangsa. 2. Meningkatkan penguasaan ilmu pengetahuan dan teknologi dengan mengoptimalkan potensi akademik yang dimiliki oleh setiap siswa. 3. Meningkatkan pembelajaran siswa melalui proses belajar mengajar yang aktif, kreatif, efektif, inovatif, dan menyenangkan. 4. Menggali, memupuk, mengembangkan bakat, minat prestasi siswa dalam bidang seni, olahraga, ketrampilan melalui penyelenggaraan kegiatan ekstrakurikuler yang selektif.', '(0721) 781268', NULL, 'A', 'smpn24bdl.blogspot.com/', '-5.377376899999999', '105.31181029999993', '2019-07-30 06:43:06', '2019-07-30 06:43:06'),
(25, 'SMP Negeri 25 Bandar Lampung', 'SMPN 25 Bandar Lampung, Jalan Amir Hamzah, Gotong Royong, Bandar Lampung City, Lampung, Indonesia', 49, NULL, 'UNGGUL DALAM PRESTASI IPTEK DAN IMTAQ SERTA TERPERCAYA DI MASYARAKAT', 'disiplin dalam kerja, mewujudkan manajemen berbasis sekolah, pelayanan prima dengan meningkatkan silaturahmi', '(0721) 256253', NULL, 'A', 'smp25bl.blogspot.com/', '-5.426349399999999', '105.25578189999999', '2019-07-30 06:48:52', '2019-07-30 06:48:52'),
(26, 'SMP Negeri 26 Bandar Lampung', 'SMPN 26 Bandar Lampung, Jalan Raden Imba Kusuma Gang Siswa, Kemiling Permai, Bandar Lampung City, Lampung, Indonesia', 38, NULL, 'Menjadi Pusat Sumber Belajar yang Bermutu', '(1) meningkatkan nilai rata - rata ujian nasional pada setiap angkatan, (2) meningkatkan pres tasi dalam bidang  olimpiade MIPA dan KIR, (3) meningkatkan prestasi dalam bidang Kepramukaan  dan  PMR,  (4)  meningkatkan  p restasi  dalam  bidang  bola  voli dan  basket,  (5)  meningkatkan   prestasi   dalam   bidang   seni   budaya   daerah   Lampung,   (6)  meningkatkan   penghayat an   dan   pengamalan   ajaran   agama   dalam   kehidupan  sehari - hari di sekolah, (7)  melaksanakan program pengambangan diri bagi warga  sekolah  untuk  mendorong  perkembangan  potensi  diri.', '(0721) 272067', NULL, 'B', 'smpn26bl.blogspot.com/', '-5.3887437', '105.2180644', '2019-07-30 06:51:49', '2019-07-30 06:51:49'),
(27, 'SMP Negeri 27 Bandar Lampung', 'SMP Negeri 27 bandar lampung, Jalan Raya Puri Gading, Sukamaju, Bandar Lampung City, Lampung, Indonesia', 37, NULL, '-', '-', '-', NULL, 'B', 'smpn27-bdl.blogspot.com/', '-5.4699073', '105.24616289999994', '2019-07-30 06:54:55', '2019-07-30 06:54:55'),
(28, 'SMP Negeri 28 Bandar Lampung', 'SMPN 28 Bandar Lampung, Jalan Bukit Kemiling Permai Raya, Kemiling Permai, Bandar Lampung City, Lampung, Indonesia', 42, NULL, '-', '-', '(0721) 8011028', NULL, 'A', 'smpn28-bdl.blogspot.com/', '-5.3798226', '105.21166459999995', '2019-07-30 06:57:25', '2019-07-30 06:57:25'),
(29, 'SMP Negeri 29 Bandar Lampung', 'SMP Negeri 29 Bandar Lampung, Jalan Soekarno Hatta By Pass, Way Dadi, Bandar Lampung City, Lampung, Indonesia', 57, NULL, 'Favorit, bermutu dalam iptek berdasarkan Imtaq', '- Menciptakan masyarakat sekolah yang kondusif - Membentuk insan taqwa, cerdas dan trampil - Meningkatkan rata-rata UAN D12 pertahun - Meningkatkan profesionalisme guru-guru dan karyawan - Menjalin kerjasama yang harmonis dengan masyarakat dan intansi lain.', '(0721) 5616693', NULL, 'A', 'smpn29-bdl.blogspot.com/', '-5.3802632', '105.28516650000006', '2019-07-30 06:59:09', '2019-07-30 06:59:09'),
(30, 'SMP Negeri 30 Bandar Lampung', 'SMPN 30 Bandar Lampung, Baru Ranji, South Lampung Regency, Lampung, Indonesia', 35, NULL, 'Kreatif, Berprestasi, Beriman, dan Berbudi Pekerti Luhur di Masyarakat', '1) Melaksanakan pembelajaran dan bimbingan secara efektif sehingga setiap siswa dan mutu tamatan dapat berkembang secara optimal.  2) Melaksanakan pembinaan kesiswaan secara intensif melalui kegiatan OSIS (Non Akademik) guna mendorong peningkatan prestasi siswa.  3) Menumbuhkan penghayatan terhadap ajaran agama yang dianut, serta dapat melaksanakan dengan penuh rasa tanggung jawab dalam kehidupan sehari-hari.  4) Menanamkan budaya tertib dan disiplin dalam kehidupan di sekolah dan masyarakat.  5) Membudayakan budi pekerti luhur sehingga menjadi sumber kearifan dan keteladanan dalam bersikap dan bertindak.  6) Mencukupi sarana, dan prasarana sekolah serta kesejahteraan warga sekolah, sehingga dapat menunjang aktivitas kinerja sekolah.  7) Menerapkan menejemen partisipasi dengan melibatkan warga sekolah dan Stake Holder sekolah, sehingga tercipta kerjasama yang harmonis dalam suasana yang kondusif untuk terwujud dan terciptanya tujuan sekolah.', '-', NULL, 'B', 'smpnegeri30bandarlampung.blogspot.com/', '-5.494140799999999', '105.33062289999998', '2019-07-30 07:01:04', '2019-07-30 07:01:04'),
(31, 'SMP Negeri 31 Bandar Lampung', 'SMPN 31 Bandar Lampung, Jl. Campang Raya, Campang Raya, Bandar Lampung City, Lampung, Indonesia', 53, NULL, '-', '-', '(0721) 350198', NULL, 'B', 'http://20328835.siap-sekolah.com/sekolah-profil/', '-5.4058184', '105.30147169999998', '2019-07-30 07:04:26', '2019-07-30 07:04:26'),
(32, 'SMP Negeri 32 Bandar Lampung', 'SMPN 32 BANDARLAMPUNG, Susunan Baru, Bandar Lampung City, Lampung, Indonesia', 39, NULL, '-', '-', '(0721) 6011676', NULL, 'C', 'duajurai.co/tag/smpn-32-bandar-lampung/', '-5.4038203', '105.22865980000006', '2019-07-30 07:06:20', '2019-07-30 07:06:20'),
(33, 'SMP Negeri 33 Bandar Lampung', 'SMPN 33 BANDAR LAMPUNG, Gang Kamboja II, Enggal, Bandar Lampung City, Lampung, Indonesia', 46, NULL, '-', '-', '-', NULL, 'B', '-', '-5.4144627', '105.26086439999995', '2019-07-30 07:08:50', '2019-07-30 07:08:50'),
(34, 'SMP Negeri 34 Bandar Lampung', 'SMPN 34 Bandar Lampung, Jl. Tupai Gg. Manggis, Sidodadi, Bandar Lampung City, Lampung, Indonesia', 39, NULL, '-', '-', '0822-8058-6643', NULL, 'B', '-', '-5.384026899999999', '105.25395470000001', '2019-07-30 07:10:48', '2019-07-30 07:10:48'),
(35, 'SMP Negeri 35 Bandar Lampung', 'SMP Negeri 35 bandar lampung, Jl. Drs. Warsito, Kupang Kota, Bandar Lampung City, Lampung, Indonesia', 20, NULL, '-', '-', '0821-8182-8118', NULL, 'B', 'smpn35bandarlampung.blogspot.com/', '-5.438939700000001', '105.2607236', '2019-07-30 07:13:42', '2019-07-30 07:13:42'),
(36, 'SMP Negeri 36 Bandar Lampung', 'SMPN 36 Bandar Lampung, Sukarame, Bandar Lampung City, Lampung, Indonesia', 25, NULL, '-', '-', '-', NULL, 'B', 'https://sekolah.nusagates.com/69969834', '-5.377067399999999', '105.31154040000001', '2019-07-30 07:16:35', '2019-07-30 07:16:35'),
(37, 'SMP Negeri 37 Bandar Lampung', 'SMPN 37 Bandar Lanpung, Jalan Ki Agus Anang, Ketapang, Bandar Lampung City, Lampung, Indonesia', 15, NULL, '-', '-', '-', NULL, 'B', '-', '-5.435885000000001', '105.29610260000004', '2019-07-30 07:18:28', '2019-07-30 07:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
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
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id`, `subkriteria`, `kriteria`, `bb`, `ba`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'Jarak', 0, 3000, 5, '2019-06-20 06:27:27', '2019-06-20 08:47:31'),
(2, 'A2', 'Jarak', 3001, 6000, 4, '2019-06-20 08:48:46', '2019-06-20 08:48:46'),
(3, 'A3', 'Jarak', 6001, 9000, 3, '2019-06-20 08:50:19', '2019-06-20 08:50:19'),
(4, 'A4', 'Jarak', 9001, 12000, 2, '2019-06-20 08:50:41', '2019-06-20 08:50:41'),
(5, 'A5', 'Jarak', 12000, 15000, 1, '2019-06-20 08:55:21', '2019-06-20 08:55:21'),
(6, 'A1', 'Selisih PG & UN', 251, 300, 5, '2019-06-20 18:06:47', '2019-06-20 18:11:26'),
(7, 'A2', 'Selisih PG & UN', 201, 250, 4, '2019-06-20 18:07:12', '2019-06-20 18:11:40'),
(8, 'A3', 'Selisih PG & UN', 151, 200, 3, '2019-06-20 18:08:26', '2019-06-20 18:11:53'),
(9, 'A4', 'Selisih PG & UN', 101, 150, 2, '2019-06-20 18:09:44', '2019-06-20 18:09:44'),
(10, 'A5', 'Selisih PG & UN', 0, 100, 1, '2019-06-20 18:12:55', '2019-06-20 18:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_indo` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `asal_sekolah`, `alamat`, `photo`, `b_indo`, `mtk`, `ipa`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'putri', 'putripertamas34@gmail.com', NULL, '$2y$10$/gfXglRqTp.lpidXzVPSmeSALiO8OHtCkOwfEQIj98XgyOiODjGPC', NULL, '', '', '', '', 0, 0, 0, NULL, NULL, '2019-05-21 00:29:23', '2019-05-21 00:29:23'),
(2, 'asdfasdf', 'asdfw@gmail.com', NULL, '$2y$10$ABwyZfYJuaMIaouoBrk5b.3ukWd9.yIjcWhE1h6wppewPoIy2gqSS', NULL, 'asdf', 'asdf', 'asldfjkaskldj', '1559047484.jpg', 12, 12, 12, NULL, NULL, '2019-05-28 05:44:44', '2019-05-28 05:44:44'),
(3, 'asdfq', 'qwe@gmail.com', NULL, '$2y$10$U5k8GD0tCV39SeWmU592kuBenytiHX5N/HLcpFTM1x0MN30JdkXFC', NULL, 'asdq', 'asdfw', 'asdfas', '1559047624.jpg', 12, 12, 12, NULL, NULL, '2019-05-28 05:47:04', '2019-05-28 05:47:04'),
(4, 'akmal', 'akmaljahidi68@gmail.com', NULL, '$2y$10$EtFVqEIPrnVo3waj0cD6meeG2P094q4gAmhE9uSTlrOP6xXetMxci', NULL, 'akmaljahidi', 'SMPN 2 Bandar Lampung', 'Jl. Raden Pemuka Gg. H. Bakri No. 18 Bandar Lampung', '1561036167.png', 85, 90, 85, '-5.3928154', '105.2736388', '2019-06-20 06:09:27', '2019-06-20 06:09:27'),
(5, 'aaa', 'ahha11@gmail.com', NULL, '$2y$10$AMGx79C4A2O15VgF8V85bekkUwewJk20TtOv/POJduZUDAjvvajZ2', NULL, 'ahha', 'smpn 2 bandar lampung', 'jl. hiu no 11', '1561075529.jpg', 88, 85, 90, NULL, NULL, '2019-06-20 17:05:30', '2019-06-20 17:05:30'),
(6, 'vinaawaliyah', 'vinaawaliyah@gmail.com', NULL, '$2y$10$S7Vl6fXugbb9qnqB.HGxGOwSqFCstTBajqLa0HE3o3N03lJ7j8EhG', NULL, 'vina awaliyah', 'smpn 2 bandar lampung', 'jl. cinta gg rindu no 11 bandar lampung', '1561075863.jpg', 80, 90, 90, NULL, NULL, '2019-06-20 17:11:03', '2019-06-20 17:11:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_tahunan`
--
ALTER TABLE `data_tahunan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sekolah_id` (`sekolah_id`);

--
-- Indexes for table `detail_kriteria`
--
ALTER TABLE `detail_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_tahunan`
--
ALTER TABLE `data_tahunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `detail_kriteria`
--
ALTER TABLE `detail_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2020 pada 14.59
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveller`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Dina Septiana Orln', 's@gmail.com', '08976534', 'gshadfhgfdad', '2020-05-12 14:11:42', '2020-05-12 14:11:42', NULL),
(17, 'abcd', 'dina@gmail.com', '08976534', 'edede', '2020-05-05 12:16:35', '2020-05-05 12:16:35', NULL),
(30, 'Dina Septiana Orln', 'ds@gmail.com', '1234', 'asdfjkl;', '2020-05-22 12:21:37', '2020-05-22 12:21:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `id` int(12) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`id`, `foto`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5ebe36ae99161.jpg', 'Mandalika, Nusa Tenggara Barat', 'Terletak di bagian Provinsi Nusa Tenggara Barat, Mandalika telah berhasil menarik banyak wisatawan dari waktu ke waktu. Nama “Mandalika” diambil dari legenda Putri Mandalika yang berasal dari Lombok. Mandalika berada di lahan seluas 1034 ha, yang berjarak hanya sekitar 1 jam perjalanan dari Bandara Internasional Lombok, atau setengah jam perjalanan dari pusat kota Lombok. Mandalika menyediakan beberapa pantai yang menakjubkan mulai dari pantai Tanjung Aan, Pantai Kuta, Pantai Seger, Pantai Serenting, hingga Pantai Gerupuk dan bukit yang indah serta subur. Di pantai pantai tersebut juga aman apabila digunakan untuk berbagai aktivitas, misalnya berselancar. Tempat ini cocok bagi mereka yang ingin menikmati keindahan alam maupun melepaskan penat dan merefresh diri. Mandalika juga sering mengadakan Festival Bau Nyale pada bulan Februari ataupun Maret. Acara ini merupakan acara lokal berupa tradisi Suku Sasak yang menangkap cacing laut di Pantai Seger. Semua wisatawan yang berkunjung, domestik maupun mancanegara diperbolehkan untuk berpartisipasi menikmati festival bersama penduduk lokal.\r\n\r\nMenuju lokasi Mandala bisa dicapai menggunakan pesawat atau Kapal Feri yang ada di Pulau Bali dan berhenti di Kota Mataram, kemudian menaiki Minibus yang ada di Terminal Bus Mandalika. Lalu anda bisa menuju tempat wisata mandalika terdekat yang dapat ditempuh dalam waktu kurang lebih 1 jam.\r\n\r\nMandalika pun menyediakan beragam toko oleh oleh disepanjang kawasan Pantai Kuta. Barang barang yang dijual biasanya adalah oleh oleh khas dari daerah Lombok, misalnya Gelang, Kain Tenun. Terdapat juga berbagai makanan khas misalnya Sate Bulayak, Ayam Rarang, dan masih banyak lagi. Makanan makanan khas tersebut diolah dan disajikan sedemikian indah dan baik hingga meningkatkan nafsu makan dan akan membuat anda puas apabila melahapnya. So, ayo berkunjung ke Mandalika :)', '2020-05-09 10:22:39', '2020-05-09 10:22:39', NULL),
(2, '5ebe385a715d0.jpeg', 'Pulau Peucang, Banten', 'Pulau Puecang terletak didalam Taman Nasional Ujung Kulon dengan Selat Panaitan di Kabupaten Pandeglang, yang ada di Provinsi Banten. Luas pulau ini mencapai sekitar 450 ha yang dikelilingi dengan pantai pasir putih yang disertai dengan air biru jernih, dan terumbu karang yang menakjubkan. Pulau ini juga merupakan rumah bagi hewan liar misalnya rusa, monyet, biawak,dan sebagainya. Pulau ini sangat jarang ditemui satwa predator. Nama “Puecang” diambil dari bahasa sunda puecang yang artinya kijang, karna disana banyak ditemui hewan kijang. Untuk menginap di pulau ini anda harus melakukan reservasi terlebih dahulu karna terbatasnya tempat penginapan yang disediakan. Fasilitas yang ada di penginapan juga masih sederhana dan berbeda dengan fasilitas penginapan dengan yang ada di hotel kota. Berbagai aktivitas yang dapat dilakukan antara lain perjalanan menembus hutan tropis (trekking santai jelajah hutan) sejauh 2km, mengikuti Open Trip Ujung Kulon, Hunting foto atau video, melihat sunrise maupun sunset, memancing ikan, bermain main di pantai, berinteraksi dengan satwa yang ada di Pulau Puecang, snorkeling, diving, berkemah, dan masih banyak lagi. \r\nUntuk mencapai lokasi dapat dicapai dengan menaiki perahu atau kapal tradisional milik nelayan lokal dari Sumur Dock atau Tanjung Lesung Resort yang dapat ditempuh sekitar 3 jam - 4 jam, atau dengan menaiki kapal cepat dari pusat wisata Pantai Carita.', '2020-05-09 11:52:23', '2020-05-09 11:52:23', NULL),
(3, 'kep seribu2.jpg', 'Kepulauan Seribu, DKI Jakarta', 'Kepulauan ini dikenal dengan gugusan pulau pulau kecil lainnya yang tidak kalah menarik. Dengan demikian kepulauan ini dijadikan sebagai Taman Nasional dengan luas sekitar 108.000 ha. Beberapa pulau yang ada di kepulauan ini diantaranya : <br> <br>\r\n<b> 1. Pulau Tidung </b> <br>\r\nPulau Tidung dikenal sebagai pulau idola dari kepulauan seribu, Pulau ini juga dikenal dengan dua bagian pulau berbeda yaitu Pulau Tidung Besar serta Pulau Tidung Kecil, yang terhubung dengan sebuah jembatan yang lumayan panjang yang terkenal dengan sebutan jembatan cinta. Untuk menuju pantai tidung anda harus transit dahulu di Pulau Pramuka yang ditempuh sekitar 3 jam dari Muara Angke. <br> <br>\r\n<b> 2. Pulau Semak Daun </b> <br>\r\nPulau ini dikenal sebagai pulau tak berpenghuni, Ketika mengunjungi pulau ini Anda dapat berkemah. <br> <br>\r\n<b> 3. Pulau Harapan </b> <br>\r\nPulau ini dikenal sebagai pulau dengan terumbu karang terbaik. Pulau ini juga dikenal sebagai salah satu tempat untuk penangkaran hewan langka, dan salah satu diantaranya adalah Elang Bondol. <br> <br>\r\n<b> 4. Pulau Pari </b> <br>\r\nPulau ini telah dilengkapi dengan penginapan yang tentunya telah termasuk dalam list paket yang Anda pilih. Dengan mengunjungi pulau yang satu ini, selain menikmati pasir putih, Anda juga dapat melihat proses budidaya rumput laut yang bisa dikunjungi dengan mudah, kemudian melakukan beragam kegiatan air atau bahkan jalan santai yang dapat dilakukan diantara lembutnya pasir putih. <br> <br>\r\n<b> 5. Pulau Pramuka </b> <br>\r\nPulau ini memiliki beberapa destinasi wisata yang dapat memberikan Anda kesenangan sekaligus ilmu yang bermanfaat. Di tempat ini terdapat penangkaran penyu, sehingga Anda pun dapat mempelajari seputar dunia hewan, seperti halnya mengenal penyu sisik dengan lebih baik. <br> <br>\r\n<b> 6. Pulau Bidadari </b> <br>\r\nPulau Bidadari dikenal sebagai pulau dengan catatan sejarah yang cukup penting. Menurut cerita masyarakat sekitar, pulau tersebut dulunya adalah tempat liburan yang digunakan oleh pangeran Jayakarta serta para penghuni kerajaan, karena itulah pulau tersebut kini dikenal dengan nama Pulau Bidadari. <br><br>\r\n<b> 7. Pulau Kotok </b> <br>\r\nPanorama bawah laut dari pulau ini sangat memanjakan para penyelam. Keasrian yang terdapat di Pulau Kotot ini tetap terjaga karena tidak disediakannya wahana-wahana seperti yang terdapat di kawasan Ancol dimulai dari Jetski, kemudian Banana Boat, dan beragam hal lainnya. bahkan keunikan dari pulau ini yaitu terdapat cottage yang tersedia di sebuah pohon.', '2020-05-09 11:55:04', '2020-05-09 11:55:04', NULL),
(4, '5ebe37fe6d09e.jpg', 'Nusa Dua, Bali', 'Nusa Dua Tempat Wisata Bali – Objek Liburan Pantai Pasir Putih Terbersih. Halaman ini mengenai daya tarik Nusa Dua tempat wisata Bali yang terkenal akan kebersihan pantai, laut dangkal, ombak tenang dan resort mewah. Di Nusa Dua terdapat 4 pantai pasir putih, sangat cocok untuk tempat liburan keluarga dan anak-anak. Selain itu, terdapat informasi cara terbaik menuju tempat wisata, jenis aktivitas serta objek wisata yang searah dan berdekatan. Asal nama dari Nusa Dua, dari dua pulau kecil yang terhubung dengan daratan, seperti yang terlihat di foto diatas. Kawasan tempat wisata Nusa Dua Bali dikelola oleh sebuah perusahaan yang bernama ITDC. Taman yang terdapat di kawasan Nusa Dua, kalau boleh saya katakan adalah taman terindah di Bali. Pada saat anda memasuki gerbang pintu masuk objek wisata Nusa Dua, tidak akan terlihat bahwa di balik taman terdapat hotel-hotel bintang lima berstandar internasional, yang memperkerjakan ribuan karyawan. Selain sebagai tempat menginap, hotel dan resort di Nusa Dua sangat sering di gunakan sebagai tempat konfrensi berskala international maupun nasional. Nusa Dua sebagai salah satu tempat wisata Bali, sangat terkesan akan kemewahan dan sangat tertata rapi. Kebersihan sangat terjaga dan pepohonan terpelihara. Bagi anda yang menginginkan untuk menginap di hotel resort bintang lima dengan pemandangan pantai pasir putih bersih, maka hotel di kawasan Nusa Dua Bali, mungkin dapat anda prioritaskan untuk tempat anda menginap selama liburan di Bali. Selain taman dan hotel mewah, tempat wisata Nusa Dua juga terkenal dengan pantai pasir putih dan air laut yang tenang.\r\n\r\n\r\nLokasi : \r\nTerletak di paling ujung bagian tenggara pulau Bali. Nusa Dua berjarak sekitar 40 kilometer dari kota Denpasar.\r\n\r\nAkses : \r\nJika dari dari Bandara Internasional Ngurah Rai, jaraknya kurang lebih 8 kilometer, atau sekitar tiga puluh menit perjalanan dengan menggunakan mobil.', '2020-05-09 11:55:49', '2020-05-09 11:55:49', NULL),
(5, '5ebe356a11706.jpg', 'Taman Nasional Gunung Kelimutu, Flores, Nusa Tenggara Timur', 'Masih ingat dengan gambar di mata uang selebaran 5.000 rupiah zaman dulu? Ya, keindahan Gunung Kelimutu dengan pesona danau tiga warnanya yang mendunia itu bahkan pernah diabadikan dalam mata uang rupiah kita. Masuk ke dalam bagian dari Taman Nasional Kelimutu, nama Kelimutu sendiri berasal dari gabungan kata “Keli” yang berarti gunung dan “Mutu” yang berarti mendidih. Gunung Kelimutu memiliki ketinggian 1.639 mdpl atau 5.377 kaki. Gunung Kelimutu mempunyai keindahan yang berbeda dari gunung-gunung yang berada di Indonesia, pasalnya Gunung Kelimutu memiliki Tiga Danau yang terbentuk dari letusan Gunung Kelimutu beberapa tahun silam, dengan warnanya yang berbeda-beda. Danau Kelimutu memiliki luas kurang lebih 1.051.000 meter persegi dengan volume air 1.292 juta meter kubik, ketinggian dinding kawah antara 100 hingga 200 meter. Dinding Danau Gunung Kelimutu tergolong terjal dan curam karena memiliki kemiringan 60 sampai 70 derajat. Ketiga Danau Kawah Gunung Kelimutu memiliki keindahan yang sangat mempesona dan begitu indah sehingga mampu menjadi daya tarik bagi para pengunjung domestik maupun mancanegara. Pengunjung pun rela berjalan kaki menaiki puluhan anak tangga dengan trek yang cukup menanjak, hanya untuk melihat lanskap Danau Kelimutu dari ketinggian. Dari puncak, pengunjung dapat melihat panorama 360 derajat yang mengelilingi Danau Kelimutu. Danau Kelimutu juga merupakan tempat yang tepat untuk menyaksikan panorama keindahan matahari terbit. Pengunjung rela melakukan trekking di pagi buta hanya untuk menyaksikan keindahan sunrise dari puncak Gunung Kelimutu.\r\n\r\n\r\nLokasi : \r\nDesa Pemo, Kecamatan Kelimutu, Kabupaten Ende, Flores, NTT.\r\n\r\nAkses : \r\nBagi pengunjung yang berasal dari luar kota, dapat menggunakan transportasi udara dengan tujuan Bandara H. Hasan Aroeboesman (Bandara di Kabupaten Ende). Sesampainya di Kabupaten Ende, pengunjung dapat melanjutkan perjalanan menuju Desa Moni, sebuah desa yang berada di kaki Gunung Kelimutu dengan jarak perjalanan sekitar 65 Kilometer dari bandara. Dikarenakan di Ende masih sangat minim akan transportasi umum untuk menuju Desa Moni, akan lebih baik jika pengunjung menyewa kendaraan bermotor di Ende atau dapat juga menggunakan jasa travel dengan tujuan Desa Moni atau Gunung Kelimutu. Jarak yang ditempuh pengunjung dari Kabupaten Ende sekitar 50 km menuju ke Desa Moni dan 15 km dari Kampung Moni hingga sampai ke gerbang pintu masuk Taman Nasional Kelimutu\r\n\r\nHarga Tiket : \r\n•	Pengunjung domestik Rp 5.000 rupiah\r\n•	Pengunjung mancanegara Rp. 150.000\r\n\r\nBiaya Tambahan : \r\n•	Parkir kendaraan motor Rp 5.000 \r\n•	Parkir kendaraan mobil Rp 10.000\r\n\r\nFasilitas : \r\nKDi sekitar lokasi danau, sudah tersedia berbagai fasilitas penunjang bagi para pengunjungnya mulai dari toilet, beberapa gazebo, lahan parkir dan jajaran kios yang menjajakan minuman dan makanan di sekitar area parkir. Fasilitas-fasilitas tersebut juga nampak terjaga dan terawat kebersihannya.', '2020-05-09 11:56:21', '2020-05-09 11:56:21', NULL),
(6, 'Raja Ampat, Indonesia.jpeg', 'Taman Nasional Raja Ampat, Papua', 'Kepulauan Raja Ampat terletak di bagian barat Pulau Papua. Secara spesifik gugusan pulau ini terletak dibawah Kabupaten Raja Ampat provinsi Papua Barat. Gugusan pulau terbesarnya ini terdiri diantaranya Pulau Batanta, Pulau Salawati, Pulau Misool, serta Pulau Waigeo. Perairan Kepulauan Raja Ampat merupakan salah satu dari 10 perairan terbaik untuk diving site (penyelaman) diseluruh dunia dan merupakan nomor 1 dibidang kelengkapan flora dan fauna bawah air saat ini.  Spesies yang dapat dijumpai ketika menyelam yaitu beberapa jenis kuda laut katai, dan ikan pari manta. Ikan endemik raja ampat yaitu sejenis ikan gobbie. Lautan lepas dengan pulau-pulau karang yang tersusun rapi menyambut beberapa ekor lumba-lumba yang berloncatan ceria. Langit yang biru berpadu dengan indahnya riak ombak menyisir setiap pasir putih di tepian pantai. Udara segar bertiup riuh rendah menjamin kesejukan alami khas hutan-hutan tropis yang hijau. Suara burung-burung camar pun menyeruak indah seakan bernyanyi dan mensyukuri pemandangan menakjubkan ini. Dari dalam air pun berkeriapan berbagai ikan berwarna cantik menghiasi karang-karang hidup yang menari gemulai. Ini adalah sebuah surga kehidupan nyata di bumi. Deskripsi tempat indah di atas bukanlah mimpi, semuanya nyata dan benar-benar ada. Bagi para penyelam dalam dan luar Indonesia, Raja Ampat dianggap sebagai surga yang tidak dapat diungkapkan dengan kata-kata. Satu-satunya cara untuk membuktikan berbagai pendapat ini adalah dengan datang langsung menikmati ‘sang mutiara’ di ujung Papua ini. Jika menyelam di Cape Kri atau Chicken Reef, Anda bisa dikelilingi oleh ribuan ikan. Kadang kumpulan ikan tuna, giant trevallies dan snappers. Tapi yang menegangkan jika kita dikelilingi oleh kumpulan ikan barakuda, walaupun sebenarnya itu relatif tidak berbahaya yang berbahaya jika kita ketemu barakuda soliter atau sendirian. Hiu karang juga sering terlihat, dan kalau beruntung Anda juga bisa melihat penyu sedang diam memakan sponge atau berenang di sekitar anda. Di beberapa tempat seperti di Salawati, Batanta dan Waigeo juga terlihat Dugong atau ikan duyung. Konon, nama \'Raja Ampat\' diambil dari tujuh telur yang ditemukan oleh seorang wanita leluhur mereka. Empat diantaranya menetas menjadi empat orang pangeran yang kelak menjadi Raja atas 4 pulau besar Waigeo, Salawati, Batanta, dan Misool. Sedangkan 4 lainnya menjadi hantu, seorang wanita dan sebuah batu. Kisah inilah yang secara tradisi dipercaya oleh masyarakat setempat sebagai awal mula berdirinya Raja Ampat. Memang masih sulit dipercaya secara akal sehat, namun bila kita menelaah lagi maknanya, alam Raja Ampat adalah sebuah tempat sakral layaknya kerajaan yang harus tetap dijaga dari kerusakan dan kehancuran. <br>\r\nRaja Ampat dapat dicapai dengan mendatangi kota Sorong terlebih dahulu. Biasanya para wisatawan banyak menggunakan penerbangan untuk sampai ke kota ini. Setelah sampai kota Sorong, kita dapat menggunakan sejenis kapal cepat yang biasa berlayar dua kali sehari menuju Waisai, ibukota kabupaten Raja Ampat. Perjalanan hanya akan memakan waktu sekitar 2-3 jam saja dari pelabuhan Sorong, hingga sampai di pelabuhan Waisai Raja Ampat. Raja Ampat juga memiliki berbagai kebudayaan dan kesenian yang sangat unik dan menarik. Beberapa desa di Raja Ampat memang sudah mengukuhkan keberadaan mereka sebagai desa wisata, salah satunya adalah Desa Arborek. Desa yang berada di satu pulau kecil ini memiliki banyak sekali kesenian, mulai tarian-tarian tradisional, makanan Sinole yang dibuat dari sagu, hingga kerajinan anyaman daun pandan khas Arborek yang sudah diwariskan secara turun-temurun antar generasi. Desa Arborek hanyalah satu diantara desa-desa lain dengan keunikannya masing-masing. Sejarah dan budaya Kepulauan Raja Ampat, membuat dunia berdecak kagum. Kini Raja Ampat sudah menjadi salah satu tujuan wisata terkenal di dunia, hanya saja karena akses yang terbatas, untuk mencapainya diperlukan biaya yang tidak sedikit. Namun, tidak perlu khawatir, Raja Ampat semakin hari semakin berbenah diri dengan menyediakan berbagai fasilitas untuk semua kalangan. Penginapan berbentuk resort dengan harga mahal hingga motel kecil nan murah akan mudah kita jumpai di Raja Ampat. Para wisatawan hanya perlu lebih bijak untuk menjaga kepulauan indah ini agar selalu terjaga supaya keindahannya dapat terus dinikmati hingga generasi-generasi berikutnya. ', '2020-05-09 11:57:30', '2020-05-09 11:57:30', NULL),
(7, '5ebe30dba5b7d.jpg ', 'Gunung Bromo', 'Gunung Bromo terkenal dengan festival Yadnya Kasada atau Kasodo yang dilakukan setiap tahun sekali. Banyak wisatawan yang datang ke Gunung Bromo untuk ikut menikmati festival ini. Pemandangan gunung vulkanik membuat bromo terlihat seperti planet lain. Gunung bromo merupakan salah satu gunung berapi yang masih aktif di Jawa Timur. Sejarahnya, Gunung Bromo sudah mengalami lebih dari 50 erupsi sejak 1804. Karena aktivitas dari gunung vulkanik inilah Bromo punya lanskap yang unik. Wisatawan diimbau untuk tidak mendekat sampai radius 1 km. Namun dari jarak aman pun Bromo seperti tak kehilangan pesona. Kawah Bromo yang aktif memberikan pemandangan asap yang tak ada habisnya. Pemandangan ini membuat kesan seolah-olah Bromo bukanlah bagian dari Bumi. Kawasan sekitar kawah terlihat gersang dan penuh debu vulkanik membawa imajinasi tentang kehidupan prasejarah yang pernah ada. Gunung Bromo memiliki ketinggian 2329m diatas permukaan laut yang terletak dikawasan Kabupaten Malang, Kabupaten Probolinggo, Kabupaten Pasuruan, dan Kabupaten Lumajang. Gunung Bromo masih satu kawasan dengan Gunung Semeru, yaitu kawasan Taman Nasional Bromo Tengger Semeru seluas 800km. Suhu di sekitar Gunung Bromo berkisar antara 3-20 derajat Celcius. <br>\r\nTiket masuk kawasan wisata Gunung Bromo berdasarkan data dari Balai Besar Taman Nasional Bromo Tengger Semeru (BBTNBTS) bagi wisatawan lokal pada hari kerja yakni Rp. 29.000/orang. Sedangkan tarif hari libur Rp 32.500/orang. Kemudian tarif masuk kawasan wisata Gunung Semeru Rp. 19.000/orang pada hari kerja. Sementara di hari libur Rp. 24.000/orang. Sedangkan wisatawan mancanegara yang masuk ke Gunung Bromo harus merogok kocek Rp. 220.000/orang di hari kerja dan Rp. 320.000/orang di hari libur. Kemudian tarif masuk ke kawasan wisata Gunung Semeru sebesar Rp. 210.000/orang di hari kerja dan Rp. 310.000/orang di hari libur. ', '2020-05-09 11:58:00', '2020-05-09 11:58:00', NULL),
(8, 'danau toba4.jpg', 'Danau Toba', 'Danau Toba terletak di pegunungan Bukit Barisan, Sumatera Utara. Luasnya 1.145 km <sup> 2 </sup> , yang menjadikannya danau terluas se-Asia Tenggara dan luasnya lebih besar dari Singapura [716 km]. Danau Toba juga menjadi danau terluas di dunia yang terbentuk dari erupsi gunung berapi, dan masuk dalam daftar Guinness World Records. Pulau Samosir adalah pulau yang unik karena merupakan pulau vulkanik di tengah Danau Toba. Ketinggiannya 1.000m di atas permukaan laut. Meskipun telah menjadi tempat tujuan wisata sejak lama, Samosir merupakan keindahan alam yang belum terjamah. Di tengah Pulau Samosir ini masih ada lagi dua danau indah yang diberi nama Danau Sidihoni dan Danau Aek Natonang. Selain karena keindahan alamnya yang memanjakan mata, Danau Toba juga dijaga keaslian khazanahnya oleh penduduk setempat yakni mulai dari kultur masyarakatnya hingga sosial budayanya. Pulau Samosir dan Danau Toba adalah jantung dan kampung halaman dari Suku Batak. Anda juga bisa merasakan keramahan penduduk desa tersebut sekaligus mengetahui kebudayaan mereka. <br>\r\nJika berwisata ke Danau Toba pada April hingga Agustus, kemungkinan Anda akan dapat menyaksikan kemeriahan dan ritual tradisional dari Suku Batak yaitu upacara Pesta Masyarakat Danau Toba. Upacara tersebut diselenggarakan untuk mengingat nenek moyang Suka Batak dengan menampilkan nyanyian, acara olahraga, dan tarian batak. Sedangkan untuk penginapan di Danau Toba, Anda tidak perlu khawatir, karena di sana banyak resort, hotel, dan penginapan biasa yang masing-masing menawarkan pemandangan luar biasa. Kegiatan wisata lain di Danau Toba yang dapat Anda lakukan di antaranya: mengelilingi Desa Tuktuk Siadong-Adong, berkunjung ke situs-situs bersejarah (Makam Raja Sidabutar), melihat masyarakat lokal menanam padi, dan melihat rumah-rumah penduduk dengan Gorga Batak. <br>\r\nDaerah sekitar Danau Toba memiliki hutan-hutan pinus yang tertata asri. Di pinggiran Danau Toba terdapat beberapa air terjun yang sangat mempesona. Di sekitar Danau Toba juga akan Anda dapati tempat pemandian air belarang. Di Pulau Samosir Anda juga dapat menemukan pegunungan berkabut, air terjun yang jernih untuk berenang, dan masyarakat peladang. Keramahan masyarakat Batak pun akan memikat Anda karena kemanapun Anda pergi maka dengan segera dapat menemukan teman baru. Di Kota Parapat yang merupakan semenanjung yang menonjol ke danau Anda dapat Anda nikmati pemandangan spektakuler Danau Toba. Parapat dihuni masyarakat Batak Toba dan Batak Simalungan yang dikenal memiliki sifat ceria dan mudah bergaul, terkenal pula senang mendendangkan lagu bertema cinta yang riang namun penuh perasaan.', '2020-05-09 11:58:34', '2020-05-09 11:58:34', NULL),
(9, '5ebe3611a2e91.jpg', 'Taman Nasional Pulau Komodo', 'Pulau komodo merupakan kawasan Taman Nasional Komodo yang dikelola oleh Pemerintah Pusat. Pulau ini terletak di Provinsi Nusa Tenggara Timur dekat dengan Pulau Sumbawa, yang dipisahkan oleh Selat Sape. Taman Nasional Komodo memiliki luas wilayah sebesar 173.300 ha. Terdapat tiga pulau besar yang masuk dalam kawasan Taman Nasional Komodo, yaitu Pulau Komodo, Pulau Padar, dan Pulau Rinca. Di taman ini terdapat beragam flora yaitu 254 spesies tanaman yang berasal dari Asia & Australia (contohnya : beragam kayu sepang , pohon nitak atau sterculia oblongata) , jenis jenis fauna (contohnya : komodo, rusa, dan jenis burung), padang rumput dan hutan savana yang memiliki luas sekitar 70% dari luas Taman Nasional Komodo. Pulau ini juga terdiri dari beberapa pulau kecil seperti Gili Lawa dan Pulau Padar. Gili Lawa merupakan sebuah pulau kecil tak berpenghuni yang terletak di sebelah utara Pulau Komodo. Pulau kecil ini terbagi menjadi dua, yaitu Gili Lawa Darat dan Gili Lawa Laut. Gili Lawa Darat menjadi salah satu spot wisata favorit yang biasa dikunjungi wisatawan setelah menyelam. Pulau ini merupakan perbukitan eksotis dengan padang rumput menghampar luas, dikelilingi oleh lautan yang biru. Padang rumput akan berwarna hijau ketika musim hujan dan berwarna kuning ketika musim kemarau. Saat berkunjung ke Gili Lawa Darat, wisatawan dapat tracking atau mendaki bukit untuk melihat pemandangan pulau-pulau yang berada di dekat Gili Lawa, seperti Pulau Komodo, Kanawa dan Sebayur. Dengan waktu kurang lebih 30 menit, Anda dapat sampai ke puncak pulau ini . Dan yang paling membanggakan adalah Pulau Komodo ini diresmikan sebagai Situs Warisan Dunia UNESCO. Disinilah tempat liburan yang lengkap, karena disini kita bisa snorkeling dan tracking sekaligus. Taman Nasional ini didirikan pada tahun 1980, guna melindungi komodo dan habitatnya. Disana selain komodo terdapat spesies hewan yang dilindungi lho. Pulau komodo aslinya adalah pulau vulkanis. Jumlah penduduk disana kurang lebih adalah 4.000 jiwa. Tiket masuk ke pulau komodo untuk wisatawan domestik adalah Rp. 75.000/orang untuk wisatawan mancanegara adalah Rp. 250.000/orang. Cuss, buruan kesini.', '2020-05-09 11:59:19', '2020-05-09 11:59:19', NULL),
(10, 'prambanan.jpeg', 'Candi Prambanan', 'Candi Roro Jonggrang atau yang lebih  dikenal dengan sebutan Candi Prambanan merupakan candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi atau tahun 850 masehi oleh Rakai Pikatan, dan terus dikembangkan oleh Balitung Maha Sambu, pada masa kerajaan Medang Mataram. Candi ini  terletak di Kabupaten Klaten, Jawa Tengah dengan kompleks yang terletak di Kecamatan Prambanan, Sleman, Daerah Istimewa Yogyakarta dan Kabupaten Klaten, Jawa Tengah sekitar 17 km timur laut Yogyakarta, 50 km barat daya Surakarta dan 120 km selatan Semarang, persis di perbatasan antara provinsi Jawa Tengah dan Daerah Istimewa Yogyakarta. Tepatnya candi ini berada di wilayah administrasi desa Bokoharjo, Prambanan Sleman. Sedangkan pintu masuk kompleks Candi Prambanan terletak di wilayah administrasi desa Tlogo, Prambanan, Klaten. Konon, Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu Brahma sebagai dewa pencipta, Wisnu sebagai dewa pemelihara, dan Siwa sebagai dewa pemusnah. Berdasarkan prasasti Siwagrha nama asli kompleks candi ini adalah Siwagrha dari bahasa Sanskerta yang berarti \'Rumah Siwa\', dan memang di garbagriha (ruang utama) candi Prambanan bersemayam arca Siwa Mahadewa setinggi 3m yang menujukkan bahwa di candi ini dewa Siwa lebih diutamakan. Candi Prambanan adalah salah satu Situs Warisan Dunia UNESCO yang kemudian menjadi salah satu candi terindah di Asia Tenggara.  Candi ini sering dijadikan kunjungan wisatawan dari seluruh dunia. Tiket masuk ke candi ini cukup terjangkau yaitu sekitar Rp. 30. 000 – Rp. 40.000/orang.', '2020-05-09 11:59:57', '2020-05-09 11:59:57', NULL),
(11, '5ebe2e7d8b417.jpg', 'Candi Borobudur', 'Candi Borobudur merupakan Candi Budha yang terletak di Borobudur, Magelang, Jawa Tengah. Candi Borobudur didirikan oleh para penganut Budha Mahayana sekitar tahun 800-an masehi pada masa pemerintahan Wangsa Syailendra dan dipimpin oleh arsitek Gunadarma. Candi yang berbentuk stupa ini berada sekitar 100km disebelah barat daya Semarang, 86km disebelah barat Surakarta, dan 40km disebelah barat laut Yogyakarta. Stupa utama terbesar terletak di tengah sekaligus memahkotai bangunan ini, dikelilingi oleh tiga barisan melingkari 72 stupa berlubang yang di dalamnya terdapat arca Buddha tengah duduk bersila dalam posisi teratai sempurna dengan <i> mudra </i> (sikap tangan) <i> Dharmachakra mudra </i> (memutar roda dharma). Candi ini sering digunakan untuk memperingati Trisuci Waisak, sebagai tempat ziarah untuk menuntun umat manusia beralih dari alam nafsu duniawi menuju pencerahan dan kebijaksanaan sesuai ajaran Buddha. Di candi ini terdapat 3 tingkatan ranah dalam kosmologi Budha yaitu <i> Kāmadhātu </i> (ranah hawa nafsu), <i>Rupadhatu</i> (ranah berwujud), dan <i>Arupadhatu</i> (ranah tak berwujud).  Candi ini juga termasuk dalam salah satu daftar situs warisan dunia UNESCO. Untuk mencapai Candi Borobudur ini dapat Ditempuh dari Yogyakarata anda dapat memakai bus Transjogja jalur A menuju Jombor. Setelah turun di Jombor adan dapat mencari bus jurusan Jombor – Borobudur. Harga tiket masuk ke candi ini untuk wisatawan lokal adalah Rp. 50.000/orang dan untuk wisawatan mancanegara adalah 25 dolar atau sekitar Rp. 354.000/orang. Komplek wisata candi Borobudur mempunyai fasilitas yang cukup memadai seperti penginapan, rumah makan, toko cinderamata, warung telekomunikasi. Juga terdapat beberapa tenaga guide yang dapat memandu dan menjelaskan mengenai informasi yang terkait dengan sejarah, budaya dan arti arsitektur dari Candi Borobudur.', '2020-05-09 12:00:51', '2020-05-09 12:00:51', NULL),
(12, '5ebe2da44f4b2.jpg', 'Blue Fire di Kawah Ijen', 'Kawah Ijen adalah sebuah danau kawah yang bersifat asam yang berada di puncak Gunung Ijen dengan kedalaman danau 200m dan luas kawah mencapai 5.466 Ha. Danau kawah Ijen dikenal dengan danau air asam kuat terbesar di dunia. Kawah Ijen berada dalam wilayah Cagar Alam Taman Wisata Ijen Kabupaten Bondowoso dan Kabupaten Banyuwangi, Jawa Timur. Fenomena eternal blue fire atau api biru ini terjadi karena gas yang keluar dari gunung belerang dan bercampur oksigen. Blue fire hanya dapat dilihat oleh mata manusia saat tidak ada cahaya. Waktu terbaik untuk mendaki Gunung ijen adalah tengah malam, karena api biru akan terlihat lebih jelas. Pada musim kemarau blue fire cenderung lebih sering muncul daripada musim penghujan. Pendakian Gunung Ijen mulai dibuka jam 2 dinihari. Dari Kawah Ijen, kita dapat melihat pemandangan gunung lain yang ada di kompleks Pegunungan Ijen, di antaranya adalah puncak Gunung Marapi yang berada di timur Kawah Ijen, Gunung Raung, Gunung Suket, dan Gunung Rante. Tiket masuk ke tempat wisata ini adalah Rp. 10.000/orang.', '2020-05-09 12:01:23', '2020-05-09 12:01:23', NULL),
(13, '5ebe37aa95ab6.jpeg', 'Nusa lembongan seaweed farming, Bali', 'Nusa Lembongan merupakan sebuah pulau kecil yang berada diantara Nusa Ceningan dan Nusa Penida yang terletak di Selat Badung sebelah tenggara Pulau Bali. Panjang pulau ini adalah 4,6km dan lebar 1km – 1,5km. Secara administratif, pulau ini termasuk wilayah Kabupaten Klungkung, Provinsi Bali, Indonesia. Nusa Lembongan terbagi menjadi dua desa yakni Desa Lembongan dan Desa Jungubatu. Desa Lembongan membawahi 6 dusun dan 12 banjar adat, yang wilayahnya berada di dua pulau yakni sebagian besar Nusa Lembongan dan Nusa Ceningan. <br> Keenam dusun yang menyokong Desa Lembongan yaitu; <br> 1. Dusun Kawan, <br> 2. Kaja, <br> 3. Kelod, <br> 4. Kangin, <br> 5. Ceningan Kawan dan, <br> 6.  Ceningan Kangin.<br> Desa Lembongan banyak mempunyai tempat-tempat menarik untuk dikunjungi wisatawan seperti pantai berpasir putih yang sangat menarik, goa alam dan buatan yang unik, tebing laut yang menantang, rawa-rawa yang penuh misteri yang menarik minat pengunjung untuk datang dan banyak lagi yang menarik di Desa Lembongan. Disana kita bisa menikmati keindahan Devil’s Tear, Mushroom Bay, dan Hutan Manrove. Pantai-pantai yang menarik dan terkenal di Desa Lembongan antara lain: <br> 1. Pantai Jungut Batu, <br> 2. Pantai Tanjung Sanghyang, <br> 3. Dream Beach, <br> 4. Selagimpak, <br> 5. Selambung, <br> 6. Sunset Beach, <br> 7. Pemalikan, <br> 8. Lebaoh (pantai pusat rumput laut), dll.<br> Tempat-tempat lain yang ramai dikunjungi wisatawan antara lain: <br> - Rumah Bawah Tanah (Underground House) Gala-gala, <br> - Goa Sarang Walet Batu Melawang, <br> - Art Shop Center Buanyaran, <br> - Rawa-rawa Pegadungan, <br> - Tempat Romantis Kolong Pandan Sunset Park, dll. <br>Transportasi dari dan ke Nusa Lembongan dan Desa Lembongan dengan Pulau Bali ditempuh melalui jalur laut yakni:<br>~ dari dan ke Bali timur melalui jalur Pelabuhan Tri Buwana - Bias Munjul Ceningan kangin, <br> ~ dari dan ke Bali Barat melalui jalur Pelabuhan Sanur Denpasar - Pelabuhan Tanjung Sanghyang Lembongan. <br>Lama perjalanan dari sanur menuju Tanjung Sanghyang Lembongan sekitar 1 jam - 1,5 jam menggunakan jukung (jangolan) dan sekitar 30 menit kalau menggunakan speed boat. Transportasi dari dan ke Desa Lembongan ada yang pagi hari menggunakan jukung, siang dan sore menggunakan speed boat.', '2020-05-09 12:02:02', '2020-05-09 12:02:02', NULL),
(14, '5ebe313a857ea.jpg', 'Gereja Ayam', 'Bekunjung ke Magelang, melihat sunrise di Punthuk Setumbu, kamu akan disuguhkan oleh destinasi lain yang tak kalah eksotik, yaitu Bukit Rhema atau yang terkenal dengan sebutan Gereja Ayam. Dengan jarak yang tak terlalu dekat dengan Punthuk Setumbu membuat kedua destinasi ini menjadi paket bagi wisatawan yang berkunjung. Meskipun disebut Gereja Ayam, bangunan tersebut sebetulnya berbentuk burung merpati. Bangunan tersebut digagas pengusaha Daniel Alamsyah pada tahun 1990an. Bangunan ini mulai dikunjungi para wisatawan mulai dari tahun 2000an. Bangunan tersebut memiliki kembaran di pesisir Atlantida, Uruguay, Amerika Selatan. Bangunan tersebut sempat menarik perhatian karena muncul dalam film Ada Apa dengan Cinta? 2.', '2020-05-09 12:02:40', '2020-05-09 12:02:40', NULL),
(15, 'tangkuban perahu1.jpg', 'Gunung Tangkuban Perahu', 'Gunung Tangkuban Perahu adalah salah satu gunung yang terletak di Provinsi Jawa Barat, Indonesia. Sekitar 20 km ke arah utara Kota Bandung, dengan rimbun pohon pinus dan hamparan kebun teh di sekitarnya, Gunung Tangkuban Parahu mempunyai ketinggian setinggi 2.084m diatas permukaan laut (mdpl). Kawasan ini menyediakan panorama alam cantik dengan pesona kawah kawah disekitarnya. Gunung Tangkuban Perahu memiliki 9 kawah yang ada di wilayahnya. Kawah-kawah tersebut adalah Kawah Ratu, Upas, Domas, Baru, Jurig, Badak, Jurian, Siluman dan Pangguyungan Badak. Tiga kawah terbesar dengan diameter sekitar 500 meter menjadi tujuan utama wisata. Adanya gas beracun di kawah ratu dan kawah upas mengakibatkan keduanya tidak  bisa dituruni sejak 1975 dan hanya Domas yang bisa dituruni. Bentuk gunung ini adalah Stratovulcano dengan pusat erupsi yang berpindah dari timur ke barat. Jenis batuan yang dikeluarkan melalui letusan kebanyakan adalah lava dan sulfur, mineral yang dikeluarkan adalah sulfur belerang, mineral yang dikeluarkan saat gunung tidak aktif adalah uap belerang. Daerah Gunung Tangkuban Parahu dikelola oleh Perum Perhutanan. Suhu rata-rata hariannya adalah 17°C pada siang hari dan 2°C pada malam hari. Gunung Tangkuban Parahu mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, hutan Montane, dan Hutan Ericaceous atau hutan gunung. Tiket masuk ke gunung ini adalah Rp. 12.000/orang', '2020-05-09 12:03:11', '2020-05-09 12:03:11', NULL),
(16, 'Istana-Anak-Anak-Playcentre-in-Taman-Mini-Indonesia-Park..jpg', 'Istana Anak Playcentre', 'Tempat ini bisa menjadi area bermain anak-anak ataupun belajar. Terdiri dari empat lantai serta memiliki ruang terbuka di lantai dua dengan menara yang menjulang tinggi. Bangunan utama istana yang dinamai Graha Widya Tama ini peresmiannya ditandatangani oleh Presiden Soeharto pada 20 April 1986. Menara sebagai lambang kebersamaan  anak laki-laki dan perempuan dalam menggapai prestasi setinggi-tingginya. Didalam ruang juga disajikan pameran wayang dan peragaan aneka permainan tradisional anak lainnya. Istana Anak-Anak Indonesia buka dari jam 08.30 – 17.00 setiap hari dan tidak ada perubahan jam buka pada akhir pekan. <br>\r\nHarga Tiket Istana Anak TMII <br>\r\na.	Tiket Reguler	Rp15.000/orang <br>\r\nb.	Wahana Berbayar	Rp10.000', '2020-05-09 12:03:59', '2020-05-09 12:03:59', NULL),
(17, '5ebe37623ee62.jpg', 'Pulau Maratua, Kepulauan Derawan', 'Pulau maratua adalah pulau terluar Indonesia yang terletak di Laut Sulawesi dan berbatasan dengan negara Malaysia. Pulau Maratua ini merupakan bagian dari wilayah pemerintah Kabupaten Berau, provinsi Kalimantan Timur. Pulau berbentuk kecil panjang dan lengkung tajam ini berada di sebelah selatan dari Kota Tarakan. Di pulau ini terdapat Danau Haji Buang dan Danau Tanah Bamban. Pulau Maratua memiliki keelokan alam dan bawah laut yang luar biasa. Pesona pantai hadir dari pasir putih yang sangat bersih dan masih sangat asri. Sangat ideal untuk menjadi destinasi liburan. Aura eksotisme Maratua terpancar dari kolaborasi sempurna pasir putih dan birunya air laut. Hal ini semakin dikuatkan dengan kualitas air yang sangat jernih dan terumbu karang yang terjaga sangat baik. Para divers seperti menemukan surga dan pulau ini disebut-sebut sebagai Maldivesnya Indonesia. Terumbu karang yang indah bertipe fringing Reef, didominasi padang lamun dengan jenis Halodule Uninervis beraneka ragam jenis ikan juga turut menemani wisatawan yang pergi menyelam.Tak heran jika banyak penyelam mengatakannya sebagai surganya para penyelam. Pulau Maratua memiliki banyak spot diving, diantaranya Jetty Dive, Turtle Traffic, Mid Reef, Eel Garden, Hanging Garden, Cabbage Garden, dan The Channel spot. Bukan itu saja, senja di Maratua juga indah. Suasana hening dan deburan ombak yang mulai meyapu seiring air laut pasang, menawarkan sensasi berbeda. Begitu juga saat matahari bangkit dari tidurnya. Lembayung cahaya jingga begitu indah, menawarkan sensasi yang tak ingin cepat hilang. Selain sebagai wisata bahari, sejak tahun 2015 Maratua juga memiliki acara tahunan yaitu Maratua Jazz and Dive Fiesta yang merupakan gagasan WartaJazz - sebuah ekosistem Jazz di Indonesia bersama Yayasan Berau Lestari (Bestari). Tiket masuk ke Maratua adalah Rp. 20.000/orang <br>\r\nUntuk mencapai Maratua ada beberapa cara antara lain melalui : <br>\r\nTanjung Redep menggunakan Speedboat atau Susi Air, <br>\r\nTanjung Batu menggunakan Speedboat <br>\r\nTarakan menggunakan Speedboat <br>\r\nBalikpapan menggunakan Direct Flight Garuda Indonesia.', '2020-05-09 12:04:39', '2020-05-09 12:04:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `information`
--

CREATE TABLE `information` (
  `id` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(12) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `foto`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5ea63c3bcd3b4.jpg', 'Mandalika, Nusa Tenggara Barat', 'Untuk wisatawan domestik / lokal tempat ini lebih dikenal sebagai Gili Trawangan, Pantai Senggigi, ataupun Gili Meno karna belum familiar dengan nama Mandalika.', '2020-04-25 22:16:29', '2020-04-25 22:16:29', '2020-04-25 22:16:29'),
(2, '5ebe8e3bac39b.jpg', 'Pulau Puecang, Banten', 'Pulau Puecang terletak didalam Taman Nasional Ujung Kulon dengan Selat Panaitan di Kabupaten Pandeglang, yang ada di Provinsi Banten.', '2020-04-25 22:31:47', '2020-04-25 22:31:47', '2020-04-25 22:31:47'),
(3, '5ebe2c03eafdc.jpg', 'Kepulauan Seribu, DKI Jakarta', 'Kepulauan Seribu yang terletak dibagian utara Jakarta adalah tempat yang tepat bagi warga jabodetabek yang ingin melepaskan rasa penat dengan jarak yang dekat.', '2020-04-25 23:08:18', '2020-04-25 23:08:18', '2020-04-25 23:08:18'),
(4, '5ebe27bf5404f.jpg', 'Kepulauan Nusa Dua, Bali', 'Di Bali ada destinasi wisata lainnya yang tidak kalah eksotis, yakni Nusa Dua.', '2020-04-25 23:08:58', '2020-04-25 23:08:58', '2020-04-25 23:08:58'),
(5, '5ebe240759c99.jpg', 'Taman Nasional Gunung Kelimutu, Flores, Nusa Tenggara Timur', 'Dari Pulau Dewata kita melipir ke Nusa Tenggara Timur (NTT).', '2020-04-25 23:09:40', '2020-04-25 23:09:40', '2020-04-25 23:09:40'),
(6, '5ebe28e357019.jpg', 'Taman Nasional Raja Ampat, Papua', 'Raja Ampat dianggap sebagai surga yang tidak dapat diungkapkan kata-kata.', '2020-04-25 23:10:56', '2020-04-25 23:10:56', '2020-04-25 23:10:56'),
(7, '5ebe22ed34e15.jpeg', 'Gunung Bromo, Jawa Timur', 'Gunung Bromo adalah salah satu destinasi wisata kebanggaan warga Jawa Timur yang sering dikunjungi oleh para wisatawan baik domestik maupun mancanegara', '2020-04-25 23:32:59', '2020-04-25 23:32:59', '2020-04-25 23:32:59'),
(8, '5ebe2b50ab2d1.jpeg', 'Danau Toba', 'Danau Toba merupakan salah satu destinasi wisata di Indonesia yang memiliki pesona menakjubkan. ', '2020-04-25 23:33:44', '2020-04-25 23:33:44', '2020-04-25 23:33:44'),
(9, '5ebe24f9f1b51.jpg', 'Taman Nasional Pulau Komodo', 'Pulau Komodo adalah sebuah pulau yang terletak di Kepulauan Nusa Tenggara.', '2020-04-25 23:34:22', '2020-04-25 23:34:22', '2020-04-25 23:34:22'),
(10, '5ebe289336d8c.jpg', 'Candi Prambanan', 'Candi Prambanan merupakan Candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi.', '2020-04-25 23:34:59', '2020-04-25 23:34:59', '2020-04-25 23:34:59'),
(11, '5ebe22558b34e.jpg', 'Candi Borobudur', 'Candi Borobudur merupakan Candi Budha terbesar di dunia yang banyak dikunjungi oleh wisatawan.', '2020-04-25 23:35:36', '2020-04-25 23:35:36', '2020-04-25 23:35:36'),
(12, '5ebe21e2b5552.jpg', 'Blue Fire di Kawah Ijen', 'Api Biru di Gunung Ijen, Jawa Timur, sering diburu para traveler. Api biru ini hanya ada di Indonesia dan Eslandia.', '2020-04-25 23:36:53', '2020-04-25 23:36:53', '2020-04-25 23:36:53'),
(13, '5ebe262c421ea.jpg', 'Nusa lembongan seaweed farming, Bali', 'Nusa Lembongan, di pulau ini kita bisa melihat sejuta keindahannya yang sudah go internasional.', '2020-04-25 23:37:28', '2020-04-25 23:37:28', '2020-04-25 23:37:28'),
(14, '5ebe239e7ee68.jpg', 'Gereja Ayam', 'Gereja Ayam merupakan sebuah tempat ibadah yang terletak di Magelang, Jawa Tengah, Indonesia.', '2020-04-25 23:38:33', '2020-04-25 23:38:33', '2020-04-25 23:38:33'),
(15, '5ebe2ab270bde.jpg', 'Gunung Tangkuban Perahu', 'Gunung Tangkuban Perahu adalah salah satu gunung yang terletak di Provinsi Jawa Barat, Indonesia.', '2020-04-25 23:39:23', '2020-04-25 23:39:23', '2020-04-25 23:39:23'),
(16, '5ec7b98f08e64.jpg', 'Istana Anak Playcentre', 'Istana anak-anak Indonesia atau sering juga disebut Istana Anak TMII ialah bangunan berbentuk istana yang mirip di cerita dongeng Cinderella.', '2020-04-25 23:40:02', '2020-04-25 23:40:02', '2020-04-25 23:40:02'),
(17, '5ebe25aadc2e3.jpg', 'Pulau Maratua, Kepulauan Derawan', 'Pulau maratua adalah pulau terluar Indonesia yang terletak di Laut Sulawesi dan berbatasan dengan negara Malaysia.', '2020-04-25 23:40:35', '2020-04-25 23:40:35', '2020-04-25 23:40:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DINA SEPTIANA', '$2y$10$RdnXu8sbcTje8YaDyEWIEe1lA9qzhuHyxhwQlrU0bHq6TBwwM7pmi', '2020-04-05 03:49:25', '2020-04-05 03:49:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `information`
--
ALTER TABLE `information`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

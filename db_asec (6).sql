-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 13 May 2025, 04:59:16
-- Sunucu sürümü: 10.6.21-MariaDB-cll-lve
-- PHP Sürümü: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_asec`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(2, 'alaaddin_k', '$2y$10$2GiEOBLsIFEKzq9B5WzSce0kbaj4thAIC1ltrxDZv5w9rndX6lGGi'),
(3, 'ali_ksk', '$2y$10$kmGNTYtljRAcdxsCPp4rE.mLLYeisburSl0VrUSefI6NMXG5p3TGi'),
(4, 'admin', '$2y$10$H74AR/GU1tSUwHNTk/kYzODQwRhiIlD9T6HoJ0SWo8pitZQHaYzMu'),
(5, 'aybusec', '$2y$10$d1AP3PLatPoArh5dUQf3Qur6d7m/IlpDqrtVfroX1I0.tNH0S3KTq'),
(6, 'nihat_eren', '$2y$10$Jlbkx6UbDZSKpq65cJmiPudNSHVTF1l/2t/tBi2epjXR89i7xdMZy'),
(7, 'yekli_amdn', '$2y$10$OuBtcb2Wc4Kh1fyGRqsam.2StbIrvF14qGQ69Xu1hbPClYLBChac2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `image_url`, `category`, `author`, `created_at`, `updated_at`) VALUES
(2, 'Yapay Zekânın Siber Güvenlikteki Devrimi: Dost mu, Düşman mı?', '<p></p><h1><br></h1><p>Yapay zekâ (YZ), artık sadece bilim kurgu filmlerinde değil; hayatımızın, sistemlerimizin ve hatta güvenlik protokollerimizin merkezinde. Ancak bu teknolojinin siber güvenlik alanındaki yükselişi, beraberinde hem büyük fırsatları hem de tedirgin edici riskleri getiriyor. Peki, YZ siber güvenliğin kahramanı mı, yoksa yeni nesil siber tehditlerin en güçlü müttefiki mi?</p><h2>1. Yapay Zekâ: Yeni Nesil Güvenlik Duvarı</h2><p>Geleneksel güvenlik sistemleri genellikle imza tabanlıdır ve daha önce tanımlanmış tehditlere karşı çalışır. Fakat günümüzde her 39 saniyede bir siber saldırı gerçekleştiği gerçeği düşünüldüğünde, önceden tanımlanmış tehditlerle sınırlı kalmak artık yeterli değil.</p><p>İşte burada yapay zekâ devreye giriyor.</p><p>YZ, ağ trafiğini sürekli analiz ederek normalin dışına çıkan davranışları tespit edebilir. Anomali tespiti, tehdit istihbaratı, otomatik yanıt sistemleri… Bunlar, bir güvenlik uzmanının rüyasını süsleyen özellikler. Örneğin:</p><ul>\r\n<li>\r\n<p><strong>Makine öğrenmesi</strong>, zararlı yazılımları davranışlarına göre sınıflandırarak sıfır gün tehditlerini yakalayabilir.</p>\r\n</li>\r\n<li>\r\n<p><strong>Doğal dil işleme</strong>, dark web’deki tehditleri izleyerek potansiyel saldırılar hakkında önceden bilgi toplayabilir.</p>\r\n</li>\r\n<li>\r\n<p><strong>Otonom yanıt sistemleri</strong>, insan müdahalesine gerek kalmadan saldırıya anında yanıt verebilir.</p>\r\n</li>\r\n</ul><h2>2. “Yapay Hackerlar”: Tehdidin Yeni Adı</h2><p>Ama işler burada bitmiyor. Yapay zekânın bu yetenekleri sadece savunma amaçlı değil, saldırı tarafında da kullanılabiliyor.</p><p>Bugün tehdit aktörleri:</p><ul>\r\n<li>\r\n<p>YZ tabanlı <strong>otomatik kimlik avı e-postaları</strong> üretiyor,</p>\r\n</li>\r\n<li>\r\n<p><strong>Captcha geçebilen botlar</strong> kullanıyor,</p>\r\n</li>\r\n<li>\r\n<p>Ve hatta <strong>yapay ses klonlaması</strong> ile sosyal mühendislik saldırılarını güçlendiriyor.</p>\r\n</li>\r\n</ul><p>2024\'te yapılan bir saldırıda, bir CEO\'nun sesinin yapay zekâ ile klonlanarak muhasebe ekibine sahte ödeme talimatı gönderildi. Hasar? 243.000 dolar.</p><p>YZ artık sadece bir araç değil, aynı zamanda bir “aktör”.</p><h2>3. Savunma ve Saldırı Arasında Bir Satranç Oyunu</h2><p>Siber güvenlik artık bir satranç tahtası. İki taraf da yapay zekâdan güç alıyor ve sürekli birbirine karşı hamle yapıyor. Bir taraf tehditleri tespit etmek için modeli eğitirken, diğer taraf bu modeli “kandırmak” için adversarial örnekler oluşturuyor.</p><p>Bu durum, özellikle <strong>adversarial machine learning</strong> (karşıt makine öğrenmesi) gibi yeni alt alanların doğmasına neden oldu. Ve belki de siber güvenliğin geleceği, bu iki yapay zekâ modelinin “birbirine karşı eğitilmesi” ile şekillenecek.</p><h2>4. İnsan Faktörü: Yapay Zekânın En Zayıf Noktası</h2><p>Ne kadar otomasyon yapılırsa yapılsın, siber güvenlik hâlâ büyük ölçüde insan davranışlarına bağlı. Yapay zekâ, kullanıcı hatalarını sıfırlayamaz. Tam aksine, bazen onları daha da görünmez hale getirebilir.</p><p>Bu nedenle, “insan” faktörü eğitilmediği sürece, YZ tabanlı en gelişmiş sistemler bile kırılabilir. Tıpkı modern bir kale gibi: Ne kadar yüksek surlarınız olursa olsun, içeriden biri kapıyı açarsa tüm savunma boşa gider.</p><h2>5. Gelecek: Yapay Zekâ Güvenlik Danışmanınız mı Olacak?</h2><p>Yapay zekâ, SOC (Security Operations Center) ekiplerinde bir çalışan gibi görev alıyor. Alarm yorgunluğunu azaltıyor, önceliklendirme yapıyor, hatta bazı kararları tamamen kendi alıyor.</p><p>Yakın gelecekte her güvenlik ekibinin bir YZ asistanı olacak. Hatta belki de bu asistan, bir gün insan müdahalesine ihtiyaç duymadan sistemleri yönetecek kadar gelişecek.</p><p>Ama o zamana kadar, ona güvenmeyi <strong>değil</strong>, onu anlamayı öğrenmemiz gerekiyor.</p><hr><h2>Son Söz: “Yapay Zekâ Tarafsızdır, Kullanıcısı Değil”</h2><p>Yapay zekâ, bir çekiç gibidir. Onunla bir ev de inşa edebilirsin, bir cam da kırabilirsin. Siber güvenlik dünyasında bu denge, teknoloji kadar <strong>etik değerler</strong>, <strong>eğitim</strong>, ve <strong>denetim</strong> ile de korunmalıdır.</p><p>Bu savaşta kazanan taraf olmak istiyorsak, YZ’yi sadece kullanmakla kalmamalı, onu yöneten zihinler olarak kalmalıyız.</p>', 'uploads/2acf17f7-edce-4d03-ad03-7c8876748702.png', 'Yapay Zeka', 'Ali Kesik', '2025-05-12 09:00:52', '2025-05-12 09:00:52'),
(3, 'Geleceği Kodlayan Kollar: Robotik Devrimin Eşiğindeyiz', '<p></p><h1><br></h1><p>Robotik, artık sadece fabrika hatlarında ürün taşıyan metal kolları ifade etmiyor. Bugün robotlar; hastanelerde ameliyat yapıyor, evlerimizde temizlik yapıyor, Mars’ta toprak analizi yapıyor ve çok yakın bir gelecekte sokakta yanımızdan yürüyüp geçecek.</p><p>Peki bu büyük dönüşüm sadece teknolojik mi? Yoksa insanlığın evriminin bir sonraki halkası mı?</p><h2>1. Robotik Nedir, Ne Değildir?</h2><p>Robotik; mekanik yapıların, elektronik bileşenlerin ve yapay zekânın birleşimiyle otonom veya yarı otonom sistemlerin geliştirilmesini konu alan bir bilim dalıdır. Ancak robotik sadece fiziksel makinelerle sınırlı değildir. Yazılım robotları (RPA), sosyal robotlar ve nano-robotlar gibi pek çok alt kolu mevcuttur.</p><p>Bugün bir robot:</p><ul>\r\n<li>\r\n<p><strong>Algılayabilir</strong> (kameralar, sensörler),</p>\r\n</li>\r\n<li>\r\n<p><strong>Düşünebilir</strong> (YZ ve karar algoritmaları),</p>\r\n</li>\r\n<li>\r\n<p><strong>Hareket edebilir</strong> (motorlar ve aktüatörler),</p>\r\n</li>\r\n<li>\r\n<p>Ve bazen <strong>hissedebilir</strong> (duyusal geri bildirim sistemleri).</p>\r\n</li>\r\n</ul><p>Kısacası; beyin, göz, kol ve sinir sistemi… Hepsi burada, tek bir gövdede birleşiyor.</p><h2>2. Robotik Nerelerde Hayatımıza Girdi?</h2><p>Robotik sistemler artık her yerdeler:</p><ul>\r\n<li>\r\n<p><strong>Sağlıkta:</strong> Da Vinci cerrahi robotu, milimetrik kesilerle açık ameliyat ihtiyacını ortadan kaldırıyor.</p>\r\n</li>\r\n<li>\r\n<p><strong>Tarımda:</strong> Tarım robotları, yapay zekâ destekli olarak bitki sağlığını analiz edip otomatik ilaçlama yapabiliyor.</p>\r\n</li>\r\n<li>\r\n<p><strong>Günlük Hayatta:</strong> Temizlik robotları, yapay zekâ ile evi haritalandırıp temizlik rotası çıkarıyor. Yeni nesil robot evcil hayvanlar ise yalnızlıkla mücadelede kullanılıyor.</p>\r\n</li>\r\n<li>\r\n<p><strong>Uzayda:</strong> Perseverance adlı Mars aracı, milyonlarca kilometre ötede insanlığı temsil ediyor.</p>\r\n</li>\r\n</ul><p>Ve elbette, <strong>endüstride</strong> robotlar hâlâ çok güçlü: üretim hızını artırıyor, hatayı azaltıyor ve insanları tehlikeli görevlerden kurtarıyor.</p><h2>3. İnsan–Robot İşbirliği: Rekabet Değil, Ortaklık</h2><p>Korkulanın aksine, robotlar iş gücünü tamamen ortadan kaldırmak yerine dönüştürüyor. Fiziksel işi robotlar yaparken, insanlar daha yaratıcı, denetleyici ve yönetici rollere geçiyor.</p><p>Yeni terimler doğuyor:<br>\r\n<strong>Cobots (collaborative robots)</strong> — insanlarla aynı ortamda, aynı hedef için çalışan robotlar. Artık robotlar insanı iten değil, insanla “el sıkışan” bir yapıda.</p><h2>4. Robotik Etiği: Makinelere Sınır Çizmek</h2><p>Robotik teknolojiler ilerledikçe bazı ciddi sorular da gündeme geliyor:</p><ul>\r\n<li>\r\n<p>Robotlar hangi kararları bağımsız almalı?</p>\r\n</li>\r\n<li>\r\n<p>Bir robot hata yaptığında kim sorumlu?</p>\r\n</li>\r\n<li>\r\n<p>İnsan gibi görünen robotlar, duygusal bağ kurmalı mı?</p>\r\n</li>\r\n</ul><p>Bu sorular sadece mühendisleri değil, filozofları, hukukçuları ve toplumun tamamını ilgilendiriyor. “Robot Hakları” bile bazı ülkelerde tartışma konusu hâline gelmiş durumda.</p><h2>5. Geleceğe Dair: İnsanlığın Yeni Uzantısı</h2><p>Çok uzak olmayan bir gelecekte, evimizdeki robot sadece yerleri süpürmeyecek. Çocuklarımızın ödevine yardım edecek, yaşlıların ilacını hatırlatacak, belki de duygusal destek sunacak.</p><p>Ayrıca robotlar artık <strong>beden dışı</strong> formlarda da var: Chatbot’lar, dijital asistanlar ve yazılım robotları, insan benzeri etkileşimler sunuyor.</p><hr><h2>Son Söz: Kodla Düşünen, Metalle Duygulanan Bir Gelecek</h2><p>Robotik, insanın doğaya karşı verdiği savaşta değil, doğayla birlikte sürdürülebilir bir yaşam kurma yolculuğunda en büyük müttefiki olabilir.</p><p>Eğer bu devrimi izlemek yerine yön vermek istiyorsak, robotları sadece kullanmayı değil, onları <strong>anlamayı</strong> ve <strong>sorumlulukla inşa etmeyi</strong> öğrenmeliyiz.</p><p>Çünkü robotlar geleceği inşa etmeyecek…<br>\r\n<strong>Onları inşa eden bizler, geleceği şekillendireceğiz.</strong></p>', 'uploads/1747041423_robotics.jpeg', 'Robotik', 'Ali Kesik', '2025-05-12 09:16:18', '2025-05-12 09:17:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `tarih` date NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `baslik`, `icerik`, `kategori`, `tarih`, `link`) VALUES
(4, '📢 Sitemiz Yayında!', 'Merhaba!\r\n\r\nAnkara Yıldırım Beyazıt Üniversitesi Yazılım Mühendisliği Kulübü (AYBU ASEC) olarak uzun süredir üzerinde çalıştığımız resmi web sitemiz artık yayında!\r\n\r\n🔗 (https://aybuasec.org) adresinden bize ulaşabilir, kulüp etkinlikleri, duyurular, teknik yazılar hakkında güncel bilgilere ulaşabilirsiniz.\r\n\r\n💡 Web sitemiz; hem üyelerimizle daha etkili iletişim kurmak hem de yazılım dünyasında iz bırakan işlerimizi sergilemek amacıyla oluşturuldu.\r\n\r\nTakipte kalın, çünkü birbirinden heyecan verici içerikler ve etkinlikler yolda!\r\nGeri bildirimlerinizi bizimle paylaşmayı unutmayın. 💬\r\n\r\nSevgilerle,\r\nAYBU ASEC Ekibi\r\n\r\n', 'Önemli', '2025-05-12', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

CREATE TABLE `etkinlikler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `tarih` date NOT NULL,
  `saat` varchar(20) DEFAULT NULL,
  `yer` varchar(255) DEFAULT NULL,
  `kayit_link` varchar(255) DEFAULT NULL,
  `foto_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`id`, `baslik`, `aciklama`, `tarih`, `saat`, `yer`, `kayit_link`, `foto_link`) VALUES
(4, 'ÖĞRENCİLER ANLATIYOR: Yurtdışı Stajı Hayal mi, Gerçek mi?', 'Yurtdışında staj yapmak, eğitim hayatının en heyecan verici deneyimlerinden biri olabilir. Ancak bu süreç bazen öğrenciler için bir hayal gibi görünebilir.\r\nAYBU Software Engineering Club (ASEC) olarak düzenlediğimiz \"Öğrenciler Anlatıyor: Yurtdışı Stajı Hayal mi, Gerçek mi?\" etkinliği ile, bu hayalin nasıl gerçeğe dönüştürülebileceğini birebir deneyimlemiş öğrencilerimiz sizlerle buluşuyor.\r\nEtkinlikte, Erasmus öğrenim hareketliliği, Erasmus+ staj programları, Work and Travel deneyimleri, bitirme projeleri ve aday mühendislik süreçleri hakkında doğrudan bilgi alma fırsatı bulacaksınız.\r\nKonuşmacılar kendi başvuru süreçlerini, karşılaştıkları zorlukları, edindikleri tecrübeleri ve bu süreçlerin kariyerlerine nasıl katkı sağladığını paylaşacaklar.\r\nEtkinlik sonunda ise katılımcılar, merak ettikleri tüm soruları konuşmacılara doğrudan yöneltebilecekler.\r\n\r\nDetaylı Program Akışı:\r\n\r\n11.00–11.10 | Erasmus Öğrenim Hareketliliği (1/2) — 3.sınıf öğrencisi Can Kankılıç\r\n11.10–11.20 | Erasmus Öğrenim Hareketliliği (2/2) — 3.sınıf öğrencisi Furkan Aydos\r\n11.20–11.35 | Erasmus Staj Hareketliliği — 3.sınıf öğrencisi Rüveyda Akça\r\n11.35–11.45 | Work and Travel (1/2) — 3.sınıf öğrencisi İlayda Akınet\r\n11.45–11.55 | Work and Travel — 3.sınıf öğrencisi Sencer Yavuz\r\n12.00–12.10 | Bitirme Projeleri - Araştırma Görevlisi Kübranur Gümüşlü\r\n12.10–12.20 | Aday Mühendislik - Araştırma Görevlisi Kübranur Gümüşlü', '2025-05-06', '11:00 - 13:00', 'Etlik Batı Kampüsü A Blok, 2. Kat Konferans Salonu', '', NULL),
(5, 'Going Beyond Code: ASEC Spring Picnic', 'In the software world, long hours spent in front of a screen often harm our health and weaken our social interactions. However, we know that success in our field comes not only from individuals who write good code but also from team players who can express themselves and communicate effectively. With this in mind, our ASEC Software Engineering Club organized a picnic on Sunday, May 4th, at Harikalar Diyarı. Throughout the picnic, various activities were held for our club members. Along with volleyball, nostalgic games such as dodgeball, tug of war, sack race, and jump rope took us on a journey to the past and brought lots of fun and joy.', '2025-05-04', '13:30 - 18:00', 'Harikalar Diyarı', '', NULL),
(6, 'Dijital Çağa Kadın Dokunuşu Etkinliği Gerçekleştirildi', 'Üniversitemiz Yazılım Mühendisliği Kulübü (ASEC) tarafından, bilişim ve girişimcilik dünyasında kadınların artan rolünü vurgulamak amacıyla “Dijital Çağa Kadın Dokunuşu” adlı etkinlik gerçekleştirildi.\r\n\r\nEtkinliğin açılışı, Mühendislik ve Doğa Bilimleri Fakültesi Dekan Yardımcımız Prof. Dr.  Gülnihal Meral tarafından gerçekleştirildi.\r\n\r\nEtkinlikte teknoloji ve girişimcilik alanında önemli çalışmalara imza atan kadın liderler öğrencilerle buluşturuldu. Flexvision Tech Kurucusu Ceyda Süer, TSE Bilişim Teknolojileri Test ve Belgelendirme Daire Başkanı Merve Hatice Karataş, Ulaştırma ve Altyapı Bakanlığı Haberleşme Genel Müdür Yardımcısı ve AUS Türkiye Başkanı Esma Dilek etkinliğin konuşmacıları olarak yer aldı.\r\n\r\nDavetli konuşmacı Ceyda Süer, kurumsal iş hayatından girişimcilik serüvenine uzanan kariyer yolculuğunu ve bu süreçte edindiği tecrübeleri katılımcılara aktardı.\r\n\r\nYazılım Mühendisliği Bölüm Başkanı Doç. Dr. Hilal Arslan moderatörlüğündeki panelde davetli panelistler ile soru-cevap gerçekleştirildi. Panelde moderatörümüz Hilal Arslan’ın akademisyenliğe kadın penceresinden bir bakış sunumundan sonra Esma Dilek kamuda kadının rolü, üstlenilen sorumluluklar ve karşılaşılan zorluklar hakkında önemli bilgiler aktardı. Merve Hatice Karataş ise Türkiye’de geliştirilen katma değerli ürünlerin uluslararası sertifikalandırılması sürecinde yürütülen çalışmalar ve bu sürecin bir kadın yönetici gözüyle serüveninden bahsetti.\r\n\r\nKatılım sağlayan misafirlerimize, akademisyenlerimize, öğrencilerimize ve kulüp danışman hocamız Doç. Dr. Yenal Arslan’a teşekkür ederiz.', '2025-04-08', '13:30 - 18:00', 'Etlik Batı Kampüsü A Blok, 2. Kat Konferans Salonu', '', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlik_fotolar`
--

CREATE TABLE `etkinlik_fotolar` (
  `id` int(11) NOT NULL,
  `etkinlik_id` int(11) NOT NULL,
  `dosya_yolu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `etkinlik_fotolar`
--

INSERT INTO `etkinlik_fotolar` (`id`, `etkinlik_id`, `dosya_yolu`) VALUES
(7, 4, 'uploads/etkinlikler/4/foto_6821be6598d725.77137891.png'),
(8, 5, 'uploads/etkinlikler/5/foto_6821c19a133ce1.88263642.jpg'),
(9, 5, 'uploads/etkinlikler/5/foto_6821c19a140d28.21115511.jpg'),
(10, 5, 'uploads/etkinlikler/5/foto_6821c19a14e967.26044845.jpg'),
(11, 5, 'uploads/etkinlikler/5/foto_6821c19a160384.53713933.jpg'),
(12, 5, 'uploads/etkinlikler/5/foto_6821c19a173151.99704779.jpg'),
(13, 5, 'uploads/etkinlikler/5/foto_6821c19a182570.89048801.jpg'),
(14, 6, 'uploads/etkinlikler/6/foto_6821c450347947.09091455.png'),
(15, 6, 'uploads/etkinlikler/6/foto_6821c450847dd9.88461107.png'),
(16, 6, 'uploads/etkinlikler/6/foto_6821c450dc48b3.99125798.png'),
(17, 6, 'uploads/etkinlikler/6/foto_6821c45138b205.01532435.png'),
(18, 6, 'uploads/etkinlikler/6/foto_6821c451866bb4.64577148.png'),
(19, 6, 'uploads/etkinlikler/6/foto_6821c451ca83b5.28400444.png'),
(20, 6, 'uploads/etkinlikler/6/foto_6821c45226ad47.25613850.png'),
(21, 6, 'uploads/etkinlikler/6/foto_6821c4527e54a7.05590384.png'),
(22, 6, 'uploads/etkinlikler/6/foto_6821c452e7eed2.97079783.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL,
  `kategori` enum('events','workshops','teams','other') DEFAULT 'events',
  `tarih` date DEFAULT NULL,
  `dosya_yolu` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `baslik`, `aciklama`, `kategori`, `tarih`, `dosya_yolu`, `created_at`) VALUES
(2, 'Piknik (1)', '', 'events', '2025-05-04', 'images/gallery/galeri_6821cd1f749576.68545737.jpg', '2025-05-12 10:27:43'),
(3, 'Piknik (2)', '', 'events', '2025-05-04', 'images/gallery/galeri_6821cd1f756d98.62117700.jpg', '2025-05-12 10:27:43'),
(4, 'Piknik (3)', '', 'events', '2025-05-04', 'images/gallery/galeri_6821cd1f764311.33979100.jpg', '2025-05-12 10:27:43');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 1,
  `last_attempt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `email`, `attempts`, `last_attempt`) VALUES
(1, 'nb.keskin@hotmail.com', 2, 1746463114);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `konu` varchar(255) DEFAULT NULL,
  `mesaj` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `tarih` datetime DEFAULT current_timestamp(),
  `okundu` int(11) DEFAULT 0,
  `yildiz` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `ad`, `email`, `konu`, `mesaj`, `ip`, `tarih`, `okundu`, `yildiz`) VALUES
(2, 'ALİ KESİK', 'ali.kesik76@gmail.com', 'dsfhsdfjdfgkfghldgjmsfgkdghkdghk', 'aaaa', '::1', '2025-04-27 23:53:41', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(120) NOT NULL,
  `university` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `class` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cv` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `instagram` varchar(120) DEFAULT NULL,
  `linkedin` varchar(120) DEFAULT NULL,
  `achievements` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `university`, `department`, `class`, `password`, `created_at`, `cv`, `avatar`, `birthdate`, `address`, `bio`, `instagram`, `linkedin`, `achievements`) VALUES
(1, 'ALİ KESİK', '05300372629', 'ali.kesik76@gmail.com', 'Ankara Yıldırım Beyazıt Üniversitesi', 'Yazılım Mühendisliği', '3', '$2y$10$75T7AOJtLnx7SDJ5DwKs6efA8vwgGfDUXJFg6FgF/DUUj2TJmpMcu', '2025-04-27 12:31:18', 'cv_1_1745757423.pdf', 'avatar_1_1745759199.jpg', '2002-03-01', 'Ayvalı mahallesi', 'x', '', '', 'x'),
(2, 'nilgün binnur keskin', '5418836783', 'nb.keskin@gmail.com', 'aybü', 'yazılım', '3', '$2y$10$O3OJAqIdYlCQvjngqUkW.eKjgQn2WWKbJD/avQjURxkOCXHWyM0Ve', '2025-05-05 16:38:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Gülben Kubat', '05408772002', 'gulbenkubat@icloud.com', 'Ankara Yıldırım Beyazıt Üniversitesi', 'Yazılım Mühendisliği', '3', '$2y$10$rRpfcmEnF9y8K7G6H8meUOkrk7EWcWrQ3/R1HyPkTa8Qw8KNw.H4i', '2025-05-06 12:16:51', NULL, NULL, '2002-06-17', '', '', '', '', ''),
(4, 'sena pekdemir', '05519646943', 'pekdemirsena3@gmail.com', 'Ankara Yildirim Beyazit Universitesi', 'Metallurgical and Materials Engineering', '3', '$2y$10$y1o9gAvshg9rPMNSibrS1OVc7HaH4aIdQEC8lnP7BcOy8EzIvZsJe', '2025-05-12 08:36:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Mustafa AYYILDIZ', '5451476828', '63ayldzmstf.21@gmail.com', 'Ankara Yıldırım Beyazıt Üniversitesi', 'Yazılım mühendisliği', '2', '$2y$10$3r2titnAPsAF0mwAcKSLsOE4upgZtZ6yYtEotokSrG35Wn5.aiKqu', '2025-05-12 10:24:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `etkinlikler`
--
ALTER TABLE `etkinlikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `etkinlik_fotolar`
--
ALTER TABLE `etkinlik_fotolar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etkinlik_id` (`etkinlik_id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikler`
--
ALTER TABLE `etkinlikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlik_fotolar`
--
ALTER TABLE `etkinlik_fotolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `etkinlik_fotolar`
--
ALTER TABLE `etkinlik_fotolar`
  ADD CONSTRAINT `etkinlik_fotolar_ibfk_1` FOREIGN KEY (`etkinlik_id`) REFERENCES `etkinlikler` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

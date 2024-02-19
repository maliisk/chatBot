CREATE DATABASE  IF NOT EXISTS `university_assistant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_assistant`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: university_assistant
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cevap_metni` varchar(720) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'Merhaba Ben Fırat Asistan. Nasıl Yardımcı Olabilirim ?'),(2,'İyiyim . Umarım siz de iyisinizdir. Ne öğrenmek istersiniz ?'),(3,'Bölümümüz 1995\'te kurulmuş olup, 1997\'den beri Eğitim-Öğretime devam etmektedir. Detalı bilgi için bölüm sayfasını ziyaret edebilirsiniz'),(4,'Lisansüstü programı, alanında uzman bilgisayar bilimcilerinin, özel sektörde ve yüksek öğretim kurumlarındaki bilgisayar mühendislerinin ihtiyaçlarına cevap verecek nitelikte tasarlanmıştır. Ayrıca, bu program farklı akademik disiplinlerde çalışan nitelikli öğrencilere, Bilgisayar Mühendisliği alanında ileri seviyede eğitim alma fırsatı da sunmaktadır.'),(5,'Mehmet KAYA, lisans, yüksek lisans ve doktora derecelerini Elektrik-Elektronik Mühendisliği ve Bilgisayar Mühendisliği alanlarında sırasıyla 1996, 1998 ve 2003 yıllarında Fırat Üniversitesi\'nden almıştır. Halen Fırat Üniversitesi Bilgisayar Mühendisliği Bölümü\'nde Profesör olarak görev yapmaktadır. 2002 yılında Kanada Calgary Üniversitesi Bilgisayar Bilimleri Bölümü ADSA Laboratuvarı\'nda misafir araştırmacı olarak bulunmuştur. Hakemli uluslararası dergilerde ve konferanslarda 90\'ın üzerinde makalesi yayınlanmıştır. Başlıca çalışma ve araştırma alanları veri madenciliği, sosyal ağ analizi ve makine öğrenmesidir.'),(6,'Detaylı bilgi için fü abs sitesini ziyaret edebilirsiniz'),(7,'2023-2024 Eğitim Öğretim yılı itibariyle İkinci Öğretim harcı 2035 TL\'dir.'),(8,'Ders listesi ve ders içerikleri hakkında bilgi almak için sitemizde Lisans seçeneği ile öğrenebilirsiniz'),(9,'Bölüm sitesinde duyurular kısmında ulaşabilirsiniz '),(10,'E devlet aracılığıyla e-kayıt gerçekleştirebilirsiniz '),(11,'OBS üzerinden dondurma işlemlerini gerçekleştirebilirsiniz'),(12,'OBS üzerinden ders kayıt işlemleriniz gerçekleştirebilirsiniz'),(13,'Bölüm sitesinde araştırma kısmında bölümümüzce yapılmış olan projelere ulaşabilirsiniz.'),(14,'Bölümümüz 1995\'te kurulmuş olup, 1997\'den beri Eğitim-Öğretime devam etmektedir. 2008 yılında tamamlanan toplam 3000 m2 alana sahip yeni binamızda 8 adet ortalama 50 kişilik sınıflar, 60 kişilik Sayısal Elektronik ve Mikroişlemci Laboratuvarı, ortalama 40 kişilik 2 adet PC laboratuvarı ve 50 kişilik Unix Sistem Laboratuvarı bulunmaktadır. ');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soru_metni` varchar(720) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Merhaba'),(2,'Nasılsın'),(3,'Bölüm Hakkında bilgi alabilir miyim'),(4,'Yüksek lisans nasıl yapabilirim'),(5,'mehmet kaya kimdir'),(6,'bölümde hangi hocalar var'),(7,'İkinci öğretim harcı ne kadar'),(8,'Hangi dersler var'),(9,'Ders programı '),(10,'Nasıl kayıt olabilirim '),(11,'Okulu nasıl dondurabilirim'),(12,'Ders kayıt nasıl yapılır'),(13,'Bölümde yapılan projeler'),(14,'bölüm tarihçesi');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-19 20:43:22

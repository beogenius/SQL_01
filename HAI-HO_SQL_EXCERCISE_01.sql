-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: Thuchanh001
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TblDetai`
--

DROP TABLE IF EXISTS `TblDetai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `TblDetai` (
  `Madt` char(10) NOT NULL,
  `Tendt` varchar(30) NOT NULL,
  `Kinhphi` int DEFAULT NULL,
  `Noithuctap` char(30) DEFAULT NULL,
  PRIMARY KEY (`Madt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblDetai`
--

LOCK TABLES `TblDetai` WRITE;
/*!40000 ALTER TABLE `TblDetai` DISABLE KEYS */;
INSERT INTO `TblDetai` VALUES ('1','Kinh Te',100000,'HA NOI'),('2','Khoa Hoc Cong Nghe',300000,'HAI PHONG'),('3','Quan Ly San Pham',200000,'XA LA - HA DONG');
/*!40000 ALTER TABLE `TblDetai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblGiangVien`
--

DROP TABLE IF EXISTS `TblGiangVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `TblGiangVien` (
  `Magv` int NOT NULL,
  `Luong` decimal(10,0) DEFAULT NULL,
  `Makhoa` char(10) DEFAULT NULL,
  `HoTenGv` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Magv`),
  KEY `Makhoa` (`Makhoa`),
  CONSTRAINT `tblgiangvien_ibfk_1` FOREIGN KEY (`Makhoa`) REFERENCES `TblKhoa` (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblGiangVien`
--

LOCK TABLES `TblGiangVien` WRITE;
/*!40000 ALTER TABLE `TblGiangVien` DISABLE KEYS */;
INSERT INTO `TblGiangVien` VALUES (1,8000000,'1','Mai Cong Son'),(2,9000000,'2','Ms Kieu Anh'),(3,7000000,'3','Ms Chau'),(4,6500000,'1','Mr The'),(5,6000000,'1','John Toan'),(6,8000000,'1','Nguyen Minh Nhat'),(7,9000000,'1','Ms Kieu Trinh'),(8,7000000,'1','Ms Thuy Anh'),(9,6500000,'1','Mr Dang Cap'),(10,10000000,'1','John Wick');
/*!40000 ALTER TABLE `TblGiangVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblHuongDan`
--

DROP TABLE IF EXISTS `TblHuongDan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `TblHuongDan` (
  `Masv` int NOT NULL,
  `Madt` char(10) DEFAULT NULL,
  `Magv` int DEFAULT NULL,
  `ketqua` decimal(5,2) DEFAULT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `Madt` (`Madt`),
  KEY `Magv` (`Magv`),
  KEY `Masv` (`Masv`),
  CONSTRAINT `tblhuongdan_ibfk_1` FOREIGN KEY (`Madt`) REFERENCES `TblDetai` (`Madt`),
  CONSTRAINT `tblhuongdan_ibfk_2` FOREIGN KEY (`Magv`) REFERENCES `TblGiangVien` (`Magv`),
  CONSTRAINT `tblhuongdan_ibfk_3` FOREIGN KEY (`Masv`) REFERENCES `TblSinhVien` (`Masv`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblHuongDan`
--

LOCK TABLES `TblHuongDan` WRITE;
/*!40000 ALTER TABLE `TblHuongDan` DISABLE KEYS */;
INSERT INTO `TblHuongDan` VALUES (2,'2',2,6.70,1),(3,'3',3,7.50,2),(4,'2',6,8.20,3),(5,'2',2,9.20,4),(6,'1',1,7.50,5),(7,'2',1,8.20,6),(8,'3',1,9.20,7),(1,'1',1,1.00,10);
/*!40000 ALTER TABLE `TblHuongDan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblKhoa`
--

DROP TABLE IF EXISTS `TblKhoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `TblKhoa` (
  `Makhoa` char(10) NOT NULL,
  `TenKhoa` char(30) DEFAULT NULL,
  `Dienthoai` char(10) DEFAULT NULL,
  PRIMARY KEY (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblKhoa`
--

LOCK TABLES `TblKhoa` WRITE;
/*!40000 ALTER TABLE `TblKhoa` DISABLE KEYS */;
INSERT INTO `TblKhoa` VALUES ('1','SINH HOC','909516869'),('2','DIA LY','909516869'),('3','QLTN','909202029'),('4','TOAN','123456789');
/*!40000 ALTER TABLE `TblKhoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblSinhVien`
--

DROP TABLE IF EXISTS `TblSinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `TblSinhVien` (
  `Masv` int NOT NULL,
  `MaKhoa` char(10) DEFAULT NULL,
  `HoTen` char(40) DEFAULT NULL,
  `NamSinh` int DEFAULT NULL,
  `Quequan` char(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`Masv`),
  KEY `MaKhoa` (`MaKhoa`),
  CONSTRAINT `tblsinhvien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `TblKhoa` (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblSinhVien`
--

LOCK TABLES `TblSinhVien` WRITE;
/*!40000 ALTER TABLE `TblSinhVien` DISABLE KEYS */;
INSERT INTO `TblSinhVien` VALUES (1,'1','HO DUC HAI',1995,'HANOI',19),(2,'2','THO',1995,'NEW YORK',19),(3,'3','VIET ANH',2000,'HA LONG',19),(4,'1','SY NGUYEN',1985,'QUANG NINH',19),(5,'2','TUAN ANH',1995,'HAI PHONG',19),(6,'3','THANH TUNG',1995,'YEN BAI',19),(7,'1','QUANG HA',1995,'LANG SON',19),(8,'4','THO',1995,'JAPAN',19),(9,'4','HOANG VIET ANH',2000,'AUSTRALIA',19),(10,'4','TRINH NGUYEN',1985,'ENGLAND',19),(11,'4','DUC ANH',1995,'POLAND',19),(12,'4','THANH HAI',1995,'HO CHI MINH',19),(13,'4','CONG VINH',1995,'KOREA',19),(14,'1','Le Van Son',2002,'Japan',17);
/*!40000 ALTER TABLE `TblSinhVien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 17:23:59

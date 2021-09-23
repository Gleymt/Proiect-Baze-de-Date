-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bd
CREATE DATABASE IF NOT EXISTS `bd` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd`;

-- Dumping structure for table bd.angajati
CREATE TABLE IF NOT EXISTS `angajati` (
  `Nr. Angajat` int(11) NOT NULL AUTO_INCREMENT,
  `Nume Angajat` char(50) DEFAULT NULL,
  `Prenume Angajat` char(50) DEFAULT NULL,
  `CNP Angajat` char(13) DEFAULT NULL,
  `Salariu` int(5) DEFAULT NULL,
  `Program` char(50) DEFAULT NULL,
  PRIMARY KEY (`Nr. Angajat`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table bd.clienti
CREATE TABLE IF NOT EXISTS `clienti` (
  `Idclient` int(11) NOT NULL AUTO_INCREMENT,
  `Nume Client` char(50) DEFAULT NULL,
  `Prenume Client` char(50) DEFAULT NULL,
  `CNP Client` char(13) DEFAULT NULL,
  `Serie/Nr Buletin` char(8) DEFAULT NULL,
  PRIMARY KEY (`Idclient`),
  KEY `Nume Client` (`Nume Client`),
  KEY `Prenume Client` (`Prenume Client`),
  KEY `CNP Client` (`CNP Client`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table bd.tranzactii
CREATE TABLE IF NOT EXISTS `tranzactii` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nume Client` char(50) DEFAULT NULL,
  `Prenume Client` char(50) DEFAULT NULL,
  `CNP Client` char(50) DEFAULT NULL,
  `Valuta primita` char(3) DEFAULT NULL,
  `Suma primita` int(11) DEFAULT NULL,
  `Valuta oferita` char(3) DEFAULT NULL,
  `Suma oferita` int(11) DEFAULT NULL,
  `Castig` int(11) DEFAULT NULL,
  `Nr. Angajat` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `nume` (`Nume Client`),
  KEY `prenume` (`Prenume Client`),
  KEY `cnp` (`CNP Client`),
  KEY `nr angajat` (`Nr. Angajat`),
  KEY `vo` (`Valuta oferita`),
  KEY `val` (`Valuta primita`),
  CONSTRAINT `val` FOREIGN KEY (`Valuta primita`) REFERENCES `valute` (`Valuta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table bd.utilizatori
CREATE TABLE IF NOT EXISTS `utilizatori` (
  `Nume` char(50) DEFAULT NULL,
  `Prenume` char(50) DEFAULT NULL,
  `Utilizator` char(50) NOT NULL,
  `Parola` char(50) DEFAULT NULL,
  PRIMARY KEY (`Utilizator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table bd.valute
CREATE TABLE IF NOT EXISTS `valute` (
  `Valuta` char(10) NOT NULL,
  `RON` float unsigned DEFAULT NULL,
  `USD` float unsigned DEFAULT NULL,
  `EUR` float unsigned DEFAULT NULL,
  `GBP` float unsigned DEFAULT NULL,
  PRIMARY KEY (`Valuta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

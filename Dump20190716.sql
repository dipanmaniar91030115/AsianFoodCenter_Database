-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asianfoodcenter
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `arts`
--

DROP TABLE IF EXISTS `arts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arts` (
  `CatID` int(2) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `BirthYear` varchar(4) DEFAULT NULL,
  `DeathYear` varchar(4) DEFAULT NULL,
  `Nationality` varchar(30) DEFAULT NULL,
  `KnownFor` varchar(30) DEFAULT NULL,
  `Notablework` varchar(100) DEFAULT NULL,
  `About` varchar(1500) DEFAULT NULL,
  `TimeOfCreation` varchar(11) DEFAULT NULL,
  `MediumDetails` varchar(30) DEFAULT NULL,
  `Dimensions` varchar(15) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  KEY `CatID_idx` (`CatID`),
  CONSTRAINT `CatID` FOREIGN KEY (`CatID`) REFERENCES `category` (`CatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arts`
--

LOCK TABLES `arts` WRITE;
/*!40000 ALTER TABLE `arts` DISABLE KEYS */;
INSERT INTO `arts` VALUES (1,'Leonardo da Vinci','1452','1519','Italian','Art and Science','Mona Lisa, The Last Supper','Leonardo di ser Piero da Vinci, more commonly Leonardo da Vinci, was an Italian polymath of the Renaissance, whose areas of interest included invention, painting, sculpting, architecture, science, music, mathematics, engineering, literature, anatomy, geology, astronomy, botany, writing, history, and cartography. He has been variously called the father of palaeontology, ichnology, and architecture, and is widely considered one of the greatest painters of all time. Sometimes credited with the inventions of the parachute, helicopter and tank, he epitomised the Renaissance humanist ideal.','','','',''),(1,'Claude Monet','1840','1926','French','Painter','Water Lilies','Oscar-Claude Monet was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movements philosophy of expressing ones perceptions before nature, especially as applied to plein air landscape painting. The term \"Impressionism\" is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris. Monets ambition of documenting the French countryside led him to adopt a method of painting the same scene many times in order to capture the changing of light and the passing of the seasons. From 1883, Monet lived in Giverny, where he purchased a house and property and began a vast landscaping project which included lily ponds that would become the subjects of his best-known works. In 1899, he began painting the water lilies, first in vertical views with a Japanese bridge as a central feature and later in the series of large-scale paintings that was to occupy him continuously for the next 20 years of his life.','','','',''),(2,'Mona Lisa','','','','','','The Mona Lisa is a half-length portrait painting by the Italian Renaissance artist Leonardo da Vinci that has been described as \"the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world\". The Mona Lisa is also one of the most valuable paintings in the world. It holds the Guinness World Record for the highest known insurance valuation in history at $100 million in 1962, which is worth nearly $800 million in 2017.','1503-1506','Oil on poplar panel','77cm x53 cm','Musee du Louvre, Paris');
/*!40000 ALTER TABLE `arts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `CatID` int(2) NOT NULL,
  `CategoryName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Biography'),(2,'Painting'),(3,'Theorem'),(4,'Programmming'),(5,'Algorithm');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maths`
--

DROP TABLE IF EXISTS `maths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maths` (
  `CatID` int(2) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `CreatorKnownFor` varchar(30) DEFAULT NULL,
  `BirthYear` varchar(4) DEFAULT NULL,
  `DeathYear` varchar(4) DEFAULT NULL,
  `About` varchar(2000) DEFAULT NULL,
  KEY `CatID_idx` (`CatID`),
  CONSTRAINT `maths_ibfk_1` FOREIGN KEY (`CatID`) REFERENCES `category` (`CatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maths`
--

LOCK TABLES `maths` WRITE;
/*!40000 ALTER TABLE `maths` DISABLE KEYS */;
INSERT INTO `maths` VALUES (1,'Euclid','Euclidean geometry','4BC','3BC','Euclid, sometimes given the name Euclid of Alexandria to distinguish him from Euclides of Megara, was a Greek mathematician, often referred to as the \"founder of geometry\" or the \"father of geometry\". He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century. In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and rigor.'),(3,'Pythagorean theorem','','','','In mathematics, the Pythagorean theorem, also known as Pythagoras theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides a, b and c, often called the \"Pythagorean equation\": {a^{2}+b^{2}=c^{2},} a^{2}+b^{2}=c^{2}, where c represents the length of the hypotenuse and a and b the lengths of the triangles other two sides. Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient Greek mathematician Pythagoras as it is he who, by tradition, is credited with its first proof, although no evidence of it exists.There is some evidence that Babylonian mathematicians understood the formula, although little of it indicates an application within a mathematical framework.Mesopotamian, Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases. The theorem has been given numerous proofs – possibly the most for any mathematical theorem. They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years. The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean, to objects that are not right triangles, and indeed, to objects that are not triangles at all, but n-dimensional solids. The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; popular references in literature, plays, musicals, songs, stamps and cartoons abound.'),(5,'Quicksort','','','','Quicksort (sometimes called partition-exchange sort) is an efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order. Developed by Tony Hoare in 1959 and published in 1961, it is still a commonly used algorithm for sorting. Quicksort is a comparison sort, meaning that it can sort items of any type for which a \"less-than\" relation (formally, a total order) is defined. In efficient implementations it is not a stable sort, meaning that the relative order of equal sort items is not preserved. Quicksort can operate in-place on an array, requiring small additional amounts of memory to perform the sorting. It is very similar to selection sort, except that it does not always choose worst-case partition.');
/*!40000 ALTER TABLE `maths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `technology` (
  `CatID` int(2) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `BirthYear` varchar(4) DEFAULT NULL,
  `DeathYear` varchar(4) DEFAULT NULL,
  `Nationality` varchar(30) DEFAULT NULL,
  `KnownFor` varchar(50) DEFAULT NULL,
  `About` varchar(1000) DEFAULT NULL,
  `DesignedBy` varchar(30) DEFAULT NULL,
  `DeveloperName` varchar(30) DEFAULT NULL,
  KEY `CatID_idx` (`CatID`),
  CONSTRAINT `technology_ibfk_1` FOREIGN KEY (`CatID`) REFERENCES `category` (`CatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'Steve Jobs','1955','2011','USA','Co-creator of the Macintosh & Apple','Steven Paul Jobs was an American entrepreneur and business magnate. He was the chairman, chief executive officer (CEO), and a co-founder of Apple Inc., chairman and majority shareholder of Pixar, a member of The Walt Disney Companys board of directors following its acquisition of Pixar, and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s and 1980s, along with Apple co-founder Steve Wozniak','',''),(1,'Bill Gates','1955','NA','USA','Founder of the Microsoft Corporation','William Henry Gates III is an American business magnate, investor, author, philanthropist, humanitarian, and principal founder of Microsoft Corporation. During his career at Microsoft, Gates held the positions of chairman, CEO and chief software architect, while also being the largest individual shareholder until May 2014. In 1975, Gates and Paul Allen launched Microsoft, which became the worlds largest PC software company. Gates led the company as chief executive officer until stepping down in January 2000, but he remained as chairman and created the position of chief software architect for himself.','',''),(4,'Java','','','','','Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers \"write once, run anywhere\", meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers. Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and released in 1995 as a core component of Sun Microsystems Java platform. The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them.','James Gosling','Sun Microsystems');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-16 16:10:24

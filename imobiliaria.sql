-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: imobiliaria
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anuncio`
--

DROP TABLE IF EXISTS `anuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anuncio` (
  `codigo_anuncio` int(2) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `data_anuncio` varchar(20) DEFAULT NULL,
  `valor` int(10) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_anuncio`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio`
--

LOCK TABLES `anuncio` WRITE;
/*!40000 ALTER TABLE `anuncio` DISABLE KEYS */;
INSERT INTO `anuncio` VALUES (1,1,'28/02/2021',400000,'venda'),(2,2,'07/10/2022',150000,'venda'),(3,3,'14/09/2022',2500,'locacao'),(4,4,'19/08/2021',250000,'venda'),(5,5,'30/04/2023',240000,'venda'),(6,6,'16/01/2023',350000,'venda'),(7,7,'31/05/2023',3100,'locacao'),(8,8,'06/11/2022',2700,'locacao'),(9,9,'03/03/2021',600000,'venda'),(10,10,'23/07/2021',320000,'venda'),(11,11,'09/06/2022',4000,'locacao'),(12,12,'27/02/2023',300000,'venda'),(13,13,'21/04/2021',1900,'locacao'),(14,14,'01/10/2022',3500,'locacao'),(15,15,'07/07/2021',3500,'locacao'),(16,16,'09/01/2022',200000,'venda');
/*!40000 ALTER TABLE `anuncio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartamento` (
  `id_apartamento` int(3) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `data_construcao` varchar(20) DEFAULT NULL,
  `num_vagaGaragem` int(2) DEFAULT NULL,
  `num_quartos` int(2) DEFAULT NULL,
  `num_suites` int(2) DEFAULT NULL,
  `num_salaEstar` int(2) DEFAULT NULL,
  `num_salaJantar` int(2) DEFAULT NULL,
  `armario_embutido` char(3) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL,
  `portaria_24h` char(3) DEFAULT NULL,
  `valor_condominio` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_apartamento`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `apartamento_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (201,2,'30/09/2022',1,2,1,1,1,'nao','4? andar','nao',250),(202,6,'06/01/2023',1,2,0,1,1,'sim','3? andar','nao',190),(203,10,'13/07/2021',1,3,1,1,1,'sim','8? andar','sim',560),(204,14,'21/09/2022',1,3,1,1,1,'sim','5? andar','sim',375),(205,18,'30/05/2021',1,3,1,1,1,'sim','2? andar','sim',300);
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `codigo_cargo` int(2) NOT NULL,
  `nome_cargo` varchar(50) DEFAULT NULL,
  `salario_base` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Corretor de imoveis',3000.00),(2,'Consultor imobiliario',2500.00),(3,'Avaliador de imoveis',3500.00),(4,'Assistente de vendas',1800.00),(5,'Coordenador de vendas',5500.00);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa` (
  `id_casa` int(3) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `data_construcao` varchar(20) DEFAULT NULL,
  `num_vagaGaragem` int(2) DEFAULT NULL,
  `num_banheiros` int(2) DEFAULT NULL,
  `num_quartos` int(2) DEFAULT NULL,
  `num_suites` int(2) DEFAULT NULL,
  `num_salaEstar` int(2) DEFAULT NULL,
  `num_salaJantar` int(2) DEFAULT NULL,
  `armario_embutido` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_casa`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (101,1,'23/02/2021',2,1,2,1,1,1,'sim'),(102,5,'20/04/2023',3,1,3,1,1,1,'sim'),(103,9,'24/02/2021',2,1,3,0,1,1,'nao'),(104,13,'11/04/2021',3,1,4,1,1,1,'nao'),(105,17,'18/08/2022',3,1,3,1,1,1,'sim'),(106,21,'11/09/2022',2,1,2,1,1,1,'sim');
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `codigo_cidade` int(2) NOT NULL,
  `nome_cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Florianopolis','Santa Catarina'),(2,'Rio Branco','Acre'),(3,'Manaus','Amazonas'),(4,'Salvador','Bahia'),(5,'Fortaleza','Ceara'),(6,'Belo Horizonte','Minas Gerais'),(7,'Belem','Para'),(8,'Recife','Pernambuco'),(9,'Rio Grande do Norte','Natal'),(10,'Goias','Goiania');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo_cliente` int(2) NOT NULL,
  `cod_endereco` int(2) DEFAULT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `cpf` char(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `cod_endereco` (`cod_endereco`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cod_endereco`) REFERENCES `endereco` (`codigo_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,8,'Pedro Paulo','223.035.670-41','pedropaulo@gmail.com','Masculino','Casado','Medico'),(2,6,'Maria Antonieta','866.110.160-31','mariaantonieta@gmail.com','Feminino','Casada','Jornalista'),(3,1,'Amilton Fernandes','582.103.870-73','amiltonfernandes@gmail.com','Masculino','Casado','Arquiteto'),(4,5,'Jeferson dos Santos','855.476.140-50','jefersonsantos.gmail.com','Masculino','Solteiro','Farmaceutico'),(5,9,'Ana Maria','754.971.890-32','anamaria@gmail.com','Feminino','Solteira','Contadora'),(6,10,'Carla Lana','958.259.170-63','carlalana@gmail.com','Feminino','Casada','Professora'),(7,2,'Jose Franco','643.657.290-20','josefranco@gmail.com','Masculino','Casado','Advogado'),(8,7,'Paula Vanda','649.682.000-72','paulavanda@gmail.com','Feminino','Casada','Designer grafico'),(9,4,'Leandro Borges','760.181.140-97','leandroborges@gmail.com','Masculino','Solteiro','Administrador'),(10,3,'Lucas Gaspar','150.372.090-05','lucasgaspar@gmail.com','Masculino','Casado','Dentista'),(11,4,'Isabela Souza','176.595.400-25','isabelasouza@gmail.com','Feminino','Casada','Fotografa'),(12,7,'Joao Pereira','398.663.350-20','joaopereira@gmail.com','Masculino','Casado','Chef de cozinha'),(13,1,'Maria Rodrigues','111.570.090-18','mariarodrigues@gmail.com','Feminino','Casada','Veterinaria'),(14,3,'Gabriel Costa','079.373.710-99','gabrielcosta@gmail.com','Masculino','Casado','Bombeiro'),(15,10,'Laura Ferreira','770.079.590-83','lauraferreira@gmail.com','Feminino','Casada','Psicologa'),(16,9,'Matheus Almeida','556.048.020-77','matheusalmeida@gmail.com','Masculino','Casado','Policial'),(17,5,'Sofia Goncalves','043.085.130-81','sofiagoncalves@gmail.com','Feminino','Solteira','Programadora'),(18,8,'Enzo Carvalho','718.175.990-62','enzocarvalho@gmail.com','Masculino','Solteiro','Programador'),(19,6,'Manuela Nunes','200.261.160-22','manuelanunes@gmail.com','Feminino','Solteira','Enfermeira'),(20,2,'Gustavo Castro','923.565.610-99','gustavocastro@gmail.com','Masculino','Solteiro','Contador');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `codigo_endereco` int(2) NOT NULL,
  `cod_cidade` int(2) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int(4) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_endereco`),
  KEY `cod_cidade` (`cod_cidade`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`cod_cidade`) REFERENCES `cidade` (`codigo_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1,'Joao Paulo','Rodovia Joao Paulo',4419,'88095-030'),(2,2,'Cidade Nova','Rua Guajara',9545,'69917-520'),(3,3,'Petropolis','Avenida Autaz Minim',3166,'69086-413'),(4,4,'Garcia','Rua Almeida Sande',4367,'41100-181'),(5,5,'De Lourdes','Avenida Santos Dumont',7150,'60120-245'),(6,6,'Minaslandia','Avenida Washington Luiz',5036,'30750-640'),(7,7,'Parque Verde','Rua Betania',1675,'26033-760'),(8,8,'Boa Viagem','Avenida Conselheiro Aguiar',9014,'58297-972'),(9,9,'Cidade Alta','Rua Apodi',6771,'49035-159'),(10,10,'Setor Oeste','Avenida Segunda Radial',3846,'74477-114');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagamento`
--

DROP TABLE IF EXISTS `forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pagamento` (
  `id_pagamento` int(2) NOT NULL,
  `tipo_pagamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` VALUES (1,'Dinheiro'),(2,'Cartao de Credito'),(3,'Cartao de Debito');
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `codigo_foto` int(2) NOT NULL,
  `nome_arquivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,'apartamento-201941'),(2,'casa-305832'),(3,'sala_comercial-183753'),(4,'casa-849654'),(5,'terreno-136255'),(6,'apartamento-198246'),(7,'sala_comercial-472097'),(8,'terreno-527408'),(9,'apartamento-482139'),(10,'casa-737210'),(11,'apartamento-351211'),(12,'casa-983412'),(13,'sala_comercial-685413'),(14,'casa-923514'),(15,'terreno-328415'),(16,'apartamento-571016'),(17,'sala_comercial-209417'),(18,'terreno-778218'),(19,'sala_comercial-264318'),(20,'terreno-253920'),(21,'casa-385221');
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `codigo_funcionario` int(3) NOT NULL,
  `cod_cargo` int(2) DEFAULT NULL,
  `nome_funcionario` varchar(100) DEFAULT NULL,
  `salario_funcionario` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(5,2) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `data_ingr_imob` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_funcionario`),
  KEY `cod_cargo` (`cod_cargo`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cod_cargo`) REFERENCES `cargo` (`codigo_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (801,1,'Miguel Castro',19800.00,0.07,'(47)3251-2648','(47)93575-5251','11/03/2020'),(802,2,'Gustavo Nunes',13600.00,0.06,'(47)3752-6131','(47)93334-8924','05/09/2020'),(803,3,'Lucas Benedito',3780.00,0.07,'(47)3725-1188','(47)92186-5666','18/04/2020'),(804,4,'Luiza Pereira',17880.00,0.06,'(47)3505-5484','(47)92524-2059','21/06/2020'),(805,5,'Sofia Andrade',5500.00,0.07,'(47)3741-7845','(47)93426-5452','30/08/2020');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico` (
  `id_historico` int(2) NOT NULL AUTO_INCREMENT,
  `cod_anuncio` int(2) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `data_anuncio` varchar(20) DEFAULT NULL,
  `valor` int(10) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_historico`,`cod_anuncio`),
  KEY `cod_anuncio` (`cod_anuncio`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`cod_anuncio`) REFERENCES `anuncio` (`codigo_anuncio`),
  CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,3,3,'05/09/2022',2700,'locacao'),(2,8,8,'15/10/2022',2000,'locacao'),(3,12,12,'10/01/2023',320000,'venda'),(4,16,16,'22/12/2021',170000,'venda'),(5,4,4,'02/08/2021',230000,'venda');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imobiliaria_cliente`
--

DROP TABLE IF EXISTS `imobiliaria_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imobiliaria_cliente` (
  `id_imv` int(2) NOT NULL,
  `cod_cliente` int(2) NOT NULL,
  PRIMARY KEY (`id_imv`,`cod_cliente`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `imobiliaria_cliente_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`),
  CONSTRAINT `imobiliaria_cliente_ibfk_2` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imobiliaria_cliente`
--

LOCK TABLES `imobiliaria_cliente` WRITE;
/*!40000 ALTER TABLE `imobiliaria_cliente` DISABLE KEYS */;
INSERT INTO `imobiliaria_cliente` VALUES (17,1),(18,3),(19,2),(20,6),(21,9);
/*!40000 ALTER TABLE `imobiliaria_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel` (
  `id_imovel` int(2) NOT NULL,
  `cod_endereco` int(2) DEFAULT NULL,
  `cod_foto` int(2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `area_m2` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_imovel`),
  KEY `cod_endereco` (`cod_endereco`),
  KEY `cod_foto` (`cod_foto`),
  CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`cod_endereco`) REFERENCES `endereco` (`codigo_endereco`),
  CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`cod_foto`) REFERENCES `foto` (`codigo_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,1,2,'Disponivel','Casa',192),(2,2,1,'Disponivel','Apartamento',156),(3,7,3,'Disponivel','Sala Comercial',430),(4,2,5,'Disponivel','Terreno',360),(5,5,4,'Disponivel','Casa',305),(6,4,6,'Disponivel','Apartamento',148),(7,9,7,'Disponivel','Sala Comercial',503),(8,5,8,'Disponivel','Terreno',540),(9,6,10,'Disponivel','Casa',500),(10,8,9,'Disponivel','Apartamento',440),(11,2,13,'Disponivel','Sala Comercial',270),(12,7,15,'Disponivel','Terreno',234),(13,10,12,'Disponivel','Casa',301),(14,9,11,'Disponivel','Apartamento',345),(15,4,17,'Disponivel','Sala Comercial',160),(16,10,18,'Disponivel','Terreno',192),(17,3,14,'Indisponivel','Casa',267),(18,1,16,'Indisponivel','Apartamento',280),(19,1,19,'Indisponivel','Sala Comercial',320),(20,6,20,'Indisponivel','Terreno',475),(21,4,21,'Indisponivel','Casa',190);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proprietario` (
  `codigo_proprietario` int(3) NOT NULL,
  `cod_cliente` int(2) DEFAULT NULL,
  PRIMARY KEY (`codigo_proprietario`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `proprietario_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario`
--

LOCK TABLES `proprietario` WRITE;
/*!40000 ALTER TABLE `proprietario` DISABLE KEYS */;
INSERT INTO `proprietario` VALUES (601,1),(602,2),(603,3),(604,4),(605,5),(606,6),(607,7),(608,8),(609,9),(610,10);
/*!40000 ALTER TABLE `proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala_comercial`
--

DROP TABLE IF EXISTS `sala_comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala_comercial` (
  `id_salaComercial` int(3) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `data_construcao` varchar(20) DEFAULT NULL,
  `num_banheiros` int(2) DEFAULT NULL,
  `num_comodos` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_salaComercial`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `sala_comercial_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala_comercial`
--

LOCK TABLES `sala_comercial` WRITE;
/*!40000 ALTER TABLE `sala_comercial` DISABLE KEYS */;
INSERT INTO `sala_comercial` VALUES (301,3,'04/09/2022',2,2),(302,7,'22/05/2023',2,2),(303,11,'31/06/2022',1,1),(304,15,'28/06/2021',1,1),(305,19,'15/11/2020',2,2);
/*!40000 ALTER TABLE `sala_comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terreno`
--

DROP TABLE IF EXISTS `terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terreno` (
  `id_terreno` int(3) NOT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `comprimento` decimal(10,2) DEFAULT NULL,
  `largura` decimal(10,2) DEFAULT NULL,
  `aclive_declive` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_terreno`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `terreno_ibfk_1` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terreno`
--

LOCK TABLES `terreno` WRITE;
/*!40000 ALTER TABLE `terreno` DISABLE KEYS */;
INSERT INTO `terreno` VALUES (401,4,24.00,15.00,'sim'),(402,8,30.00,18.00,'nao'),(403,12,18.00,13.00,'sim'),(404,16,16.00,12.00,'nao'),(405,20,25.00,19.00,'sim');
/*!40000 ALTER TABLE `terreno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacao`
--

DROP TABLE IF EXISTS `transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacao` (
  `id_transacao` int(2) NOT NULL,
  `cod_funcionario` int(3) DEFAULT NULL,
  `cod_cliente` int(2) DEFAULT NULL,
  `data_transacao` varchar(20) DEFAULT NULL,
  `id_pagm` int(2) DEFAULT NULL,
  `id_imv` int(2) DEFAULT NULL,
  `num_contrato` int(4) DEFAULT NULL,
  `valor_final` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_transacao`),
  KEY `cod_funcionario` (`cod_funcionario`),
  KEY `cod_cliente` (`cod_cliente`),
  KEY `id_pagm` (`id_pagm`),
  KEY `id_imv` (`id_imv`),
  CONSTRAINT `transacao_ibfk_1` FOREIGN KEY (`cod_funcionario`) REFERENCES `funcionario` (`codigo_funcionario`),
  CONSTRAINT `transacao_ibfk_2` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  CONSTRAINT `transacao_ibfk_3` FOREIGN KEY (`id_pagm`) REFERENCES `forma_pagamento` (`id_pagamento`),
  CONSTRAINT `transacao_ibfk_4` FOREIGN KEY (`id_imv`) REFERENCES `imovel` (`id_imovel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacao`
--

LOCK TABLES `transacao` WRITE;
/*!40000 ALTER TABLE `transacao` DISABLE KEYS */;
INSERT INTO `transacao` VALUES (1,801,1,'17/04/2022',1,17,1,240000),(2,802,3,'24/02/2023',3,18,2,185000),(3,803,2,'26/01/2022',1,19,3,4000),(4,804,6,'04/06/2023',2,20,4,268000);
/*!40000 ALTER TABLE `transacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `codigo_usuario` int(3) NOT NULL,
  `cod_cliente` int(2) DEFAULT NULL,
  `indicacao` varchar(100) DEFAULT NULL,
  `fiador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo_usuario`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (701,11,'Gabriela Ribeiro','Ana Santos'),(702,12,'Joaquim Oliveira','Miguel Cardoso'),(703,13,'Alice Miranda','Helena Cunha'),(704,14,'Guilherme Fonseca','Bruno Melo'),(705,15,'Vitoria Torres','Rafael Mendes'),(706,16,'Carlos Marques','Eduardo Lenes'),(707,17,'Mariana Fernandes','Beatriz Rocha'),(708,18,'Arthur Lopes','Felipe Santos'),(709,19,'Julia Oliveira','Carolina Lima'),(710,20,'Vinicius Costa','Davi Barbosa');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 14:50:04

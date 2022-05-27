-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 2, 10020 at 09:26 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

-- Database: `tienda`

--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--



-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

-- CREATE TABLE `categories` (
--   `id` int(11) NOT NULL,
--   `title` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

-- INSERT INTO `categories` (`id`, `title`) VALUES
-- (1, 'Embutido'),
-- (2, 'Carne'),
-- (3, 'Queso'),
-- (4, 'Otros');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`) VALUES
(1, 1,'alex@gmail.com'),
(2, 1,'alex@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) DEFAULT  100,
  `short_desc` varchar(255) NOT NULL
  -- `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`) VALUES
(1, 'Croquetas de Pollo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCroquetaP.jpg', NULL, 'Las croquetas de la abuela', 15.99, 100, 'Otros'),
(2, 'Croquetas de Jamon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCroquetaJ.jpg', NULL, 'Croquetas muy buenas con un jamon exquisito', 15.99, 100, 'Otros'),
(3, 'Pavo Pechuga', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/pavoPechuga.jpg', NULL, 'Pechuga de pavo de muy buena calidad', 6.9, 100, 'Embutido'),
(4, 'Pavo Muslo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/pavoMuslo.jpg', NULL, 'Muslo de pavo de muy buena calidad', 16.9, 100, 'Embutido'),
(5, 'Jamon Serrano', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonSerrano.jpg', NULL, 'Jamon del pais serrano curado en salamanca', 29.99, 100, 'Embutido'),
(6, 'Jamon Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonIberico.jpg', NULL, 'Jamon Iberico de muy buena Calidad', 56.89, 100, 'Embutido'),
(7, 'Jamon de Bellota', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonbellota.jpg', NULL, 'La mejor calidad la cual el jamon puede aspirar', 89, 100, 'Embutido'),
(8, 'Jamon Dulce', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonDulce.jpg', NULL, 'Jamon Dulce de la mejor calidad que probaras', 14.7, 100, 'Embutido'),
(9, 'Bacon Ahumado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/baconA.jpg', NULL, 'Bacon Ahumado muy bueno para cocinar', 14.7, 100, 'Embutido'),
(10, 'Bacon Natural', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/baconN.jpg', NULL, 'Bacon Natural muy bueno para freir', 14.7, 100, 'Embutido'),
(11, 'Butifarra Blanca', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraB.jpg', NULL, 'Butifarra Blanca tipica de Cataluña', 14.7, 100, 'Embutido'),
(12, 'Butifarra Catalana', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraC.jpg', NULL, 'Butifarra Catalana, la más tipica', 14.7, 100, 'Embutido'),
(13, 'Butifarra con Trufa', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraCT.jpg', NULL, 'Butifarra Trufada, no dejaras de comprarla', 15.9, 100, 'Embutido'),
(14, 'Butifarra con Huevo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraH.jpg', NULL, 'Butifarra de huevo, de lo mejor en butifarras', 14.7, 100, 'Embutido'),
(15, 'Butifarra suave', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneButifarra.jpg', NULL, 'Butifarra basica para cocinar', 8.99, 100, 'Carne'),
(16, 'Butifarra con Pimienta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneButifarraP.jpg', NULL, 'Butifarra con pimienta, perfecta para los amantes del picante', 12.99, 100, 'Carne'),
(17, 'Butifarra Ibérica', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carnebutifarraI.jpg', NULL, 'Butifarra Ibérica, lo mejor dentro de las butifarras', 15.99, 100, 'Carne'),
(18, 'Chuleta de Cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChuleta.jpg', NULL, 'Chuletas de cerdo, perfectas para cocinar rapido y bueno', 7.99, 100, 'Carne'),
(19, 'Costilla de Cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneCostillas.jpg', NULL, 'Costillas de cerdo perfectas para cocinar con buena calidad y precio', 7.99, 100, 'Carne'),
(20, 'Carne Lomo de 1 Color', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomo1.jpg', NULL, 'Lomo de un color ibérico de mucha calidad', 11.98, 100, 'Carne'),
(21, 'Carne Lomo de 2 Colores', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomo2.jpg', NULL, 'Lomo de dos colores ibérico de mucha calidad', 11.98, 100, 'Carne'),
(22, 'Carne Lomo Adobada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomoAdobado.jpg', NULL, 'Lomo adobado de mucha calidad y sazonado con las mejores especias', 14.97, 100, 'Carne'),
(23, 'Carne Magra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneMagra.jpg', NULL, 'Carne básica para comer rapido o picar', 6.9, 100, 'Carne'),
(24, 'Salchicas suaves', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichas.jpg', NULL, 'Salchichas ideales para los niños', 8.99, 100, 'Carne'),
(25, 'Salchichas con Pimienta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichasP.jpg', NULL, 'Salchichas con un toque de picante con pimienta, perfectas para los adoradores del picante', 11.99, 100, 'Carne'),
(26, 'Salchicas Ibéricas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichasI.jpg', NULL, 'Las mejores salchichas ibericas que encontrarás', 15.9, 100, 'Carne'),
(27, 'Solimillo de cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSolomillo.jpg', NULL, 'Solomillo ibérico perfecto para comida mas gourmette', 16.99, 100, 'Carne'),
(28, 'Secreto Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSecreto.jpg', NULL, 'Secreto Ibérico, perfecto para darle un toque distinto a tu barbacoa con calidad', 19.9, 100, 'Carne'),
(29, 'Hamburguesas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneHamburguesas.jpg', NULL, 'Carne de Hamburguesa casera muy buena', 8.99, 100, 'Carne'),
(30, 'Chistorra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChistorra.jpg', NULL, 'Chistorras, para darle un toque como chorizo a tus barbacoas', 11.99, 100, 'Carne'),
(31, 'Chorizos para cocinar', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChorizos.jpg', NULL, 'Chorizos para cocinar perfectos en una barbacoa con tus amigos', 9.99, 100, 'Carne'),
(32, 'Carne Picada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carnePicada.jpg', NULL, 'jamon del gueno', 7.99, 100, 'Carne'),
(33, 'Mano de cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneManoCerdo.jpg', NULL, 'jamon del gueno', 12.9, 100, 'Carne'),
(34, 'Chorizo Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizococP.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Embutido'),
(35, 'Chorizo no Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizococnoP.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Embutido'),
(36, 'Chorizo Ibérico Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoIbP.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Embutido'),
(37, 'Chorizo Ibérico no Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoIbnoP.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Embutido'),
(38, 'Lomo Embuchado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomo.jpg', NULL, 'jamon del gueno', 29.99, 100, 'Embutido'),
(39, 'Lomo Embuchado Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomoIb.jpg', NULL, 'jamon del gueno', 39.99, 100, 'Embutido'),
(40, 'Lomo de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomoPavo.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Embutido'),
(41, 'Fuet', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/fuet.jpeg', NULL, 'jamon del gueno', 14.9, 100, 'Embutido'),
(42, 'Fuet de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/fuetPavo.jpg', NULL, 'jamon del gueno', 18.99, 100, 'Embutido'),
(43, 'Longaniza Ibérica', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longaniza.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Embutido'),
(44, 'Longaniza negra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longanizaNegra.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Embutido'),
(45, 'Longaniza de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longanizaPavo.jpg', NULL, 'jamon del gueno', 18.99, 100, 'Embutido'),
(46, 'Chorizo de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoPavo.jpg', NULL, 'jamon del gueno', 18.99, 100, 'Embutido'),
(47, 'Mortadela de Olivas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaOlivas.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Embutido'),
(48, 'Mortadela Grande', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaGra.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Embutido'),
(49, 'Mortadela Pequeña', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaPeq.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Embutido'),
(50, 'Sobrasada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/sobrasada.jpg', NULL, 'jamon del gueno', 14.97, 100, 'Embutido'),
(51, 'Salami', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/salami.jpg', NULL, 'jamon del gueno', 15.99, 100, 'Embutido' ),
(52, 'Salmon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosSalmon.jpg', NULL, 'jamon del gueno', 59.99, 100, 'Otros'),
(53, 'Nata para cocinar', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosNata.jpg', NULL, 'jamon del gueno', 2.99, 100, 'Otros'),
(54, 'Mantequilla', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosMantequilla.jpg', NULL, 'jamon del gueno', 2.99, 100, 'Otros'),
(55, 'Datiles', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosDatiles.jpg', NULL, 'jamon del gueno', 9.99, 100, 'Otros'),
(56, 'Patatas de Olot', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPatatesO.jpg', NULL, 'jamon del gueno', 6, 100, 'Otros'),
(57, 'Pollo rustido', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPollo.jpg', NULL, 'jamon del gueno', 5.6, 100, 'Otros'),
(58, 'Albondigas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosAlbondigas.jpg', NULL, 'jamon del gueno', 5.6, 100, 'Otros'),
(59, 'Empanada de Atún', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosEmpanadaA.jpg', NULL, 'jamon del gueno', 14.9, 100, 'Otros'),
(60, 'Ensaladilla rusa', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosEnsaladillaR.jpg', NULL, 'jamon del gueno', 10.9, 100, 'Otros'),
(61, 'Pastel de marisco', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelMar.jpg', NULL, 'jamon del gueno', 9.99, 100, 'Otros'),
(62, 'Pastel de Salmon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelSal.jpg', NULL, 'jamon del gueno', 9.99, 100, 'Otros'),
(63, 'Lasaña', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosLasaña.jpg', NULL, 'jamon del gueno', 8.99, 100, 'Otros'),
(64, 'Crepes salados', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCrep.jpg', NULL, 'jamon del gueno', 12.99, 100, 'Otros'),
(65, 'Rollitos salados', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosRollito.jpg', NULL, 'jamon del gueno', 12.99, 100, 'Otros'),
(66, 'Libritos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosLibrito.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Otros'),
(67, 'Canelones', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCanelones.jpg', NULL, 'jamon del gueno', 10.99, 100, 'Otros'),
(68, 'Pastel de Atún', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelAt.jpg', NULL, 'jamon del gueno', 9.99, 100, 'Otros'),
(69, 'Queso Cheddar naranja', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCheddarN.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Queso'),
(70, 'Queso Cheddar blanco', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCheddarB.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Queso'),
(71, 'Queso Cambembert', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCamembert.jpg', NULL, 'jamon del gueno', 18.99, 100, 'Queso'),
(72, 'Queso Garcia Vaquero semi curado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGVsemi.jpg', NULL, 'jamon del gueno', 16.99, 100, 'Queso'),
(73, 'Queso Garcia Vaquero de cabra (dieta)', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGVcabra.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Queso'),
(74, 'Queso Garcia Vaquero 12 meses', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGV12.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Queso'),
(75, 'Queso Gran Cru', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGranCru.jpg', NULL, 'jamon del gueno', 27.99, 100, 'Queso'),
(76, 'Queso Havarti', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoHavarti.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Queso'),
(77, 'Queso Gouda', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGouda.jpg', NULL, 'jamon del gueno', 15.99, 100, 'Queso'),
(78, 'Queso Burgos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBurgos.jpg', NULL, 'jamon del gueno', 12.99, 100, 'Queso'),
(79, 'Queso Rulo de Mozzarela', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMozzarellaRulo.jpg', NULL, 'jamon del gueno', 13.99, 100, 'Queso'),
(80, 'Queso Bola de Mozzarella', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMozzarella.jpg', NULL, 'jamon del gueno', 14.99, 100, 'Queso'),
(81, 'Queso Rulo de cabra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoRulo.jpg', NULL, 'jamon del gueno', 15.99, 100, 'Queso'),
(82, 'Queso Mato', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMato.jpg', NULL, 'jamon del gueno', 12.99, 100, 'Queso'),
(83, 'Queso Azul', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoAzul.jpg', NULL, 'jamon del gueno', 20.99, 100, 'Queso'),
(84, 'Queso Parmesano', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoParmesanno.jpg', NULL, 'jamon del gueno', 25.99, 100, 'Queso'),
(85, 'Queso Tetilla', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoTetilla.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Queso'),
(86, 'Queso Sabanitas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoSabanitas.jpg', NULL, 'jamon del gueno', 3.5, 100, 'Queso'),
(87, 'Queso de cabra Aullentalobos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoAullentaLobos.jpg', NULL, 'jamon del gueno', 24.99, 100, 'Queso'),
(88, 'Queso Emmental', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoEmmental.jpg', NULL, 'jamon del gueno', 16.99, 100, 'Queso'),
(89, 'Queso Cremmette', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCremmette.jpg', NULL, 'jamon del gueno', 2.9, 100, 'Queso'),
(90, 'Queso Idiazabal', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoIdiazabal.jpg', NULL, 'jamon del gueno', 22.99, 100, 'Queso'),
(91, 'Queso Fol Epi', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFolEpi.jpg', NULL, 'jamon del gueno', 23.99, 100, 'Queso'),
(92, 'Queso Brie', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBrie.jpg', NULL, 'jamon del gueno', 16.99, 100, 'Queso'),
(93, 'Queso Flor de Esgueva', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFlorEsgueva.jpg', NULL, 'jamon del gueno', 18.99, 100, 'Queso'),
(94, 'Queso Pok', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoPok.jpg', NULL, 'jamon del gueno', 19.99, 100, 'Queso'),
(95, 'Queso Roquefort', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoRoquefort.jpg', NULL, 'jamon del gueno', 24.99, 100, 'Queso'),
(96, 'Queso Burrata', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBurrata.jpg', NULL, 'jamon del gueno', 4.5, 100, 'Queso'),
(97, 'Queso Feta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFeta.jpg', NULL, 'jamon del gueno', 3.5, 100, 'Queso');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `age` int(10) DEFAULT '18',
  `role` int(10) DEFAULT '555',
  `photoUrl` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'alex', 'e10adc3949ba59abbe56e057f20f883e', 'alex@gmail.com', 'not set', 'not set', 21, 777, NULL, 'local'), 
(2, 'edgar', '044d8d640801934556ec850a068a4bd9', 'edgar@gmail.com', 'not set', 'not set', 21, 555, NULL, 'local');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
-- ALTER TABLE `categories`
--   ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indexes for table `products`
--

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
-- ALTER TABLE `categories`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--

-- ALTER TABLE `products`
--   ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

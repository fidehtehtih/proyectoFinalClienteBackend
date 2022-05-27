-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 09:26 PM
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

-- Database: `angular-ecommerce-app`

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

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Embutido'),
(2, 'Carne'),
(3, 'Queso'),
(4, 'Otros');

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
(7, 22,'edgar@gmail.com'),
(119, 22,'edgar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 7, 1, 1),
(2, 119, 2, 1);

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
  `quantity` int(10) DEFAULT '100',
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Croquetas de Pollo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCroquetaP.jpg', NULL, 'Las croquetas de la abuela', 89, 100, 'Otros', 4),
(2, 'Croquetas de Jamon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCroquetaJ.jpg', NULL, 'Croquetas muy buenas con un jamon exquisito', 89, 100, 'Otros', 4),
(3, 'Pavo Pechuga', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/pavoPechuga.jpg', NULL, 'Pechuga de pavo de muy buena calidad', 16.9, 100, 'Embutido', 1),
(4, 'Pavo Muslo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/pavoMuslo.jpg', NULL, 'Muslo de pavo de muy buena calidad', 16.9, 100, 'Embutido', 1),
(5, 'Jamon Serrano', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonSerrano.jpg', NULL, 'Jamon del pais serrano curado en salamanca', 29.99, 100, 'Embutido', 1),
(6, 'Jamon Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonIberico.jpg', NULL, 'Jamon Iberico de muy buena Calidad', 89, 100, 'Embutido', 1),
(7, 'Jamon de Bellota', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonbellota.jpg', NULL, 'La mejor calidad la cual el jamon puede aspirar', 89, 100, 'Embutido', 1),
(8, 'Jamon Dulce', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/jamonDulce.jpg', NULL, 'Jamon Dulce de la mejor calidad que probaras', 14.7, 100, 'Embutido', 1),
(9, 'Bacon Ahumado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/baconA.jpg', NULL, 'Bacon Ahumado muy bueno para cocinar', 14.7, 100, 'Embutido', 1),
(10, 'Bacon Natural', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/baconN.jpg', NULL, 'Bacon Natural muy bueno para freir', 14.7, 100, 'Embutido', 1),
(11, 'Butifarra Blanca', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraB.jpg', NULL, 'Butifarra Blanca tipica de Cataluña', 14.7, 100, 'Embutido', 1),
(12, 'Butifarra Catalana', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraC.jpg', NULL, 'Butifarra Catalana, la más tipica', 14.7, 100, 'Embutido', 1),
(13, 'Butifarra con Trufa', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraCT.jpg', NULL, 'Butifarra Trufada, no dejaras de comprarla', 15.9, 100, 'Embutido', 1),
(14, 'Butifarra con Huevo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/ButifarraH.jpg', NULL, 'Butifarra de huevo, de lo mejor en butifarras', 14.7, 100, 'Embutido', 1),
(15, 'Butifarra suave', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneButifarra.jpg', NULL, 'Butifarra basica para cocinar', 8.99, 100, 'Carne', 2),
(16, 'Butifarra con Pimienta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneButifarraP.jpg', NULL, 'Butifarra con pimienta, perfecta para los amantes del picante', 12.99, 100, 'Carne', 2),
(17, 'Butifarra Ibérica', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carnebutifarraI.jpg', NULL, 'Butifarra Ibérica, lo mejor dentro de las butifarras', 15.99, 100, 'Carne', 2),
(18, 'Chuleta de Cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChuleta.jpg', NULL, 'Chuletas de cerdo, perfectas para cocinar rapido y bueno', 7.99, 100, 'Carne', 2),
(19, 'Costilla de Cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneCostillas.jpg', NULL, 'Costillas de cerdo perfectas para cocinar con buena calidad y precio', 7.99, 100, 'Carne', 2),
(20, 'Carne Lomo de 1 Color', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomo1.jpg', NULL, 'Lomo de un color ibérico de mucha calidad', 11.98, 100, 'Carne', 2),
(21, 'Carne Lomo de 2 Colores', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomo2.jpg', NULL, 'Lomo de dos colores ibérico de mucha calidad', 11.98, 100, 'Carne', 2),
(22, 'Carne Lomo Adobada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneLomoAdobado.jpg', NULL, 'Lomo adobado de mucha calidad y sazonado con las mejores especias', 14.97, 100, 'Carne', 2),
(23, 'Carne Magra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneMagra.jpg', NULL, 'Carne básica para comer rapido o picar', 6.9, 100, 'Carne', 2),
(24, 'Salchicas suaves', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichas.jpg', NULL, 'Salchichas ideales para los niños', 8.99, 100, 'Carne', 2),
(25, 'Salchichas con Pimienta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichasP.jpg', NULL, 'Salchichas con un toque de picante con pimienta, perfectas para los adoradores del picante', 11.99, 100, 'Carne', 2),
(26, 'Salchicas Ibéricas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSalchichasI.jpg', NULL, 'Las mejores salchichas ibericas que encontrarás', 15.9, 100, 'Carne', 2),
(27, 'Solimillo de cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSolomillo.jpg', NULL, 'Solomillo ibérico perfecto para comida mas gourmette', 16.99, 100, 'Carne', 2),
(28, 'Secreto Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneSecreto.jpg', NULL, 'Secreto Ibérico, perfecto para darle un toque distinto a tu barbacoa con calidad', 19.9, 100, 'Carne', 2),
(29, 'Hamburguesas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneHamburguesas.jpg', NULL, 'Carne de Hamburguesa casera muy buena', 8.99, 100, 'Carne', 2),
(30, 'Chistorra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChistorra.jpg', NULL, 'Chistorras, para darle un toque como chorizo a tus barbacoas', 11.99, 100, 'Carne', 2),
(31, 'Chorizos para cocinar', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneChorizos.jpg', NULL, 'Chorizos para cocinar perfectos en una barbacoa con tus amigos', 89, 100, 'Carne', 2),
(32, 'Carne Picada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carnePicada.jpg', NULL, 'jamon del gueno', 89, 100, 'Carne', 2),
(33, 'Mano de cerdo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/carneManoCerdo.jpg', NULL, 'jamon del gueno', 89, 100, 'Carne', 2),
(34, 'Chorizo Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizococP.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(35, 'Chorizo no Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizococnoP.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(36, 'Chorizo Ibérico Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoIbP.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(37, 'Chorizo Ibérico no Picante', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoIbnoP.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(38, 'Lomo Embuchado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomo.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(39, 'Lomo Embuchado Ibérico', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomoIb.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(40, 'Lomo de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/lomoPavo.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(41, 'Fuet', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/fuet.jpeg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(42, 'Fuet de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/fuetPavo.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(43, 'Longaniza Ibérica', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longaniza.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(44, 'Longaniza negra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longanizaNegra.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(45, 'Longaniza de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/longanizaPavo.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(46, 'Chorizo de Pavo', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/chorizoPavo.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(47, 'Mortadela de Olivas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaOlivas.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(48, 'Mortadela Grande', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaGra.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(49, 'Mortadela Pequeña', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/mortadelaPeq.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(50, 'Sobrasada', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/sobrasada.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1),
(51, 'Salami', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/salami.jpg', NULL, 'jamon del gueno', 89, 100, 'Embutido', 1 ),
(52, 'Salmon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosSalmon.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(53, 'Nata para cocinar', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosNata.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(54, 'Mantequilla', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosMantequilla.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(55, 'Datiles', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosDatiles.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(56, 'Patatas de Olot', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPatatesO.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(57, 'Pollo rustido', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPollo.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(58, 'Albondigas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosAlbondigas.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(59, 'Empanada de Atún', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosEmpanadaA.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(60, 'Ensaladilla rusa', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosEnsaladillaR.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(61, 'Pastel de marisco', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelMar.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(62, 'Pastel de Salmon', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelSal.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(63, 'Lasaña', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosLasaña.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(64, 'Crepes salados', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCrep.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(65, 'Rollitos salados', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosRollito.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(66, 'Libritos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosLibrito.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(67, 'Canelones', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosCanelones.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(68, 'Pastel de Atún', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/otrosPastelAt.jpg', NULL, 'jamon del gueno', 89, 100, 'Otros', 4),
(69, 'Queso Cheddar naranja', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCheddarN.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(70, 'Queso Cheddar blanco', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCheddarB.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(71, 'Queso Cambembert', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCamembert.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(72, 'Queso Garcia Vaquero semi curado', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGVsemi.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(73, 'Queso Garcia Vaquero de cabra (dieta)', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGVcabra.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(74, 'Queso Garcia Vaquero 12 meses', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGV12.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(75, 'Queso Gran Cru', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGranCru.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(76, 'Queso Havarti', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoHavarti.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(77, 'Queso Gouda', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoGouda.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(78, 'Queso Burgos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBurgos.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(79, 'Queso Rulo de Mozzarela', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMozzarellaRulo.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(80, 'Queso Bola de Mozzarella', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMozzarella.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(81, 'Queso Rulo de cabra', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoRulo.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(82, 'Queso Mato', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoMato.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(83, 'Queso Azul', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoAzul.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(84, 'Queso Parmesano', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoParmesanno.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(85, 'Queso Tetilla', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoTetilla.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(86, 'Queso Sabanitas', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoSabanitas.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(87, 'Queso de cabra Aullentalobos', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoAullentaLobos.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(88, 'Queso Emmental', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoEmmental.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(89, 'Queso Cremmette', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoCremmette.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(90, 'Queso Idiazabal', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoIdiazabal.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(91, 'Queso Fol Epi', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFolEpi.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(92, 'Queso Brie', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBrie.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(93, 'Queso Flor de Esgueva', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFlorEsgueva.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(94, 'Queso Pok', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoPok.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(95, 'Queso Roquefort', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoRoquefort.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(96, 'Queso Burrata', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoBurrata.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3),
(97, 'Queso Feta', 'https://raw.githubusercontent.com/fidehtehtih/proyectoFinalClienteBackend/master/imagesComida/quesoFeta.jpg', NULL, 'jamon del gueno', 89, 100, 'Queso', 3);

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
(1,'jhon' , '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 31, 777, NULL, 'local'),
(2, 'shane ', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, NULL, 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social');
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
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
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
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

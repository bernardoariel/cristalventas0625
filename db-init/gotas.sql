-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: gotas_db
-- Tiempo de generación: 22-11-2025 a las 21:44:53
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `tabla` text NOT NULL,
  `tipo` text NOT NULL,
  `datos_viejos` text,
  `datos_nuevos` text,
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` text NOT NULL,
  `datos` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `backup`
--

INSERT INTO `backup` (`id`, `tabla`, `tipo`, `datos_viejos`, `datos_nuevos`, `fechacreacion`, `usuario`, `datos`) VALUES
(1, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI1\",\"nombre\":\"CAFE\",\"descripcion\":\".\",\"stock\":1,\"precio_compra\":0,\"precio_venta\":50,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-07 13:12:08\"}', '{\"id_categoria\":\"1\",\"id\":\"1\",\"codigo\":\"ALI1\",\"nombre\":\"CAFE\",\"descripcion\":\".\",\"stock\":\"1\",\"precio_compra\":0,\"precio_venta\":\"50\"}', '2025-06-15 23:22:16', 'Ariel Bernardo', NULL),
(2, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BID\\u00f3N AGUA MINORISTA\",\"descripcion\":\"BID\\u00f3N DE AGUA POR UNIDAD\",\"stock\":100,\"precio_compra\":0,\"precio_venta\":2200,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-08 20:56:40\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BID\\u00f3N AGUA MINORISTA\",\"descripcion\":\"BID\\u00f3N DE AGUA POR UNIDAD\",\"stock\":\"100\",\"precio_compra\":0,\"precio_venta\":\"1200\"}', '2025-06-15 23:33:36', 'Administrador', NULL),
(3, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BID\\u00f3N AGUA MINORISTA\",\"descripcion\":\"BID\\u00f3N DE AGUA POR UNIDAD\",\"stock\":100,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-15 23:33:37\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BID\\u00f3N AGUA MINORISTA\",\"descripcion\":\"BID\\u00f3N DE AGUA POR UNIDAD\",\"stock\":\"100\",\"precio_compra\":0,\"precio_venta\":\"2200\"}', '2025-06-15 23:34:18', 'Administrador', NULL),
(4, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 4 UNIDADES\",\"stock\":100,\"precio_compra\":0,\"precio_venta\":1500,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-08 20:58:00\"}', '{\"id_categoria\":\"1\",\"id\":\"3\",\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 4 UNIDADES\",\"stock\":\"100\",\"precio_compra\":0,\"precio_venta\":\"1200\"}', '2025-06-15 23:34:47', 'Administrador', NULL),
(5, 'productos', 'ELIMINAR', '{\"id_categoria\":1,\"codigo\":\"ALI1\",\"nombre\":\"CAFE\",\"descripcion\":\".\",\"stock\":1,\"precio_compra\":0,\"precio_venta\":50,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-07 13:12:08\"}', '{\"id\":\"1\"}', '2025-06-30 17:23:52', 'Ariel Bernardo', NULL),
(6, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 22:20:13', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:19:14\",\n                  \"fechacreacion\":\"\"}]'),
(7, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 22:20:27', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:20:15\",\n                  \"fechacreacion\":\"\"}]'),
(8, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 22:23:24', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:20:27\",\n                  \"fechacreacion\":\"\"}]'),
(9, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 22:24:05', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:23:24\",\n                  \"fechacreacion\":\"\"}]'),
(10, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 22:25:32', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:24:06\",\n                  \"fechacreacion\":\"\"}]'),
(11, 'clientes', 'UPDATE', NULL, NULL, '2025-07-24 23:55:19', 'Ariel Bernardo', '[{\"id\":\"24\",\n				  \"nombre\":\"NOELíA GONZALEZ\",\n				  \"direccion\":\".\",\n				  \"telefono\":\"(370) 045-4050\",\n				  \"dni\":\"30533170\",\n				  \"cuit\":\"20-30533170-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 19:32:02\",\n                  \"fechacreacion\":\"\"}]'),
(12, 'clientes', 'ELIMINAR', NULL, NULL, '2025-07-24 23:55:27', 'Ariel Bernardo', '[{\"id\":\"24\",\n				  \"nombre\":\"NOELíA GONZALEZ\",\n				  \"direccion\":\".\",\n				  \"telefono\":\"(370) 045-4050\",\n				  \"dni\":\"30533170\",\n				  \"cuit\":\"20-30533170-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 19:32:02\",\n                  \"fechacreacion\":\"\"}]'),
(13, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:00:12', 'Ariel Bernardo', '[{\"id\":\"22\",\n				  \"nombre\":\"VERONICA SOTO\",\n				  \"direccion\":\"BROWN Y PELLEGRINI\",\n				  \"telefono\":\"(362) 410-6018\",\n				  \"dni\":\"29844666\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"0\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE F\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 12:58:51\",\n                  \"fechacreacion\":\"\"}]'),
(14, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:00:16', 'Ariel Bernardo', '[{\"id\":\"22\",\n				  \"nombre\":\"VERONICA SOTO\",\n				  \"direccion\":\"BROWN Y PELLEGRINI\",\n				  \"telefono\":\"(362) 410-6018\",\n				  \"dni\":\"29844666\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"0\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE F\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 12:58:51\",\n                  \"fechacreacion\":\"\"}]'),
(15, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:00:33', 'Ariel Bernardo', '[{\"id\":\"22\",\n				  \"nombre\":\"VERONICA SOTO\",\n				  \"direccion\":\"BROWN Y PELLEGRINI\",\n				  \"telefono\":\"(362) 410-6018\",\n				  \"dni\":\"29844666\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"0\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE F\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 12:58:51\",\n                  \"fechacreacion\":\"\"}]'),
(16, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:00:36', 'Ariel Bernardo', '[{\"id\":\"22\",\n				  \"nombre\":\"VERONICA SOTO\",\n				  \"direccion\":\"BROWN Y PELLEGRINI\",\n				  \"telefono\":\"(362) 410-6018\",\n				  \"dni\":\"29844666\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"0\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE F\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 12:58:51\",\n                  \"fechacreacion\":\"\"}]'),
(17, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:01:17', 'Ariel Bernardo', '[{\"id\":\"2\",\n				  \"nombre\":\"ARIEL BERNARDO\",\n				  \"direccion\":\"MIGUEL INSFRAN Y RESIDENTES PARAGUAYOS\",\n				  \"telefono\":\"(370) 429-9434\",\n				  \"dni\":\"24159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"ARIEL@ARIEL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-06-15 22:53:46\",\n                  \"fechacreacion\":\"\"}]'),
(18, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:01:37', 'Ariel Bernardo', '[{\"id\":\"2\",\n				  \"nombre\":\"ARIEL BERNARDO\",\n				  \"direccion\":\"MIGUEL INSFRAN Y RESIDENTES PARAGUAYOS\",\n				  \"telefono\":\"(370) 429-9434\",\n				  \"dni\":\"24159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"ARIEL@ARIEL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-06-15 22:53:46\",\n                  \"fechacreacion\":\"\"}]'),
(19, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:02:19', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:25:32\",\n                  \"fechacreacion\":\"\"}]'),
(20, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:07:24', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:25:32\",\n                  \"fechacreacion\":\"\"}]'),
(21, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:13:32', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:25:32\",\n                  \"fechacreacion\":\"\"}]'),
(22, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:14:21', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:25:32\",\n                  \"fechacreacion\":\"\"}]'),
(23, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:14:29', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 22:25:32\",\n                  \"fechacreacion\":\"\"}]'),
(24, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:16:18', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()-\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:14:29\",\n                  \"fechacreacion\":\"\"}]'),
(25, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:17:02', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()-\",\n				  \"direccion\":\"AV. SAN MARTíN 123\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:14:29\",\n                  \"fechacreacion\":\"\"}]'),
(26, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:34:31', 'Ariel Bernardo', '[{\"id\":\"27\",\n				  \"nombre\":\"LEGALLKDF--*()\",\n				  \"direccion\":\"ARIF 45546()\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"1065046406\",\n				  \"cuit\":\"04-5646504_-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"PEPE@GMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:34:00\",\n                  \"fechacreacion\":\"\"}]'),
(27, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:34:48', 'Ariel Bernardo', '[{\"id\":\"27\",\n				  \"nombre\":\"LEGALLKDF--*()\",\n				  \"direccion\":\"ARIF 45546()\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"1065046406\",\n				  \"cuit\":\"04-5646504_-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"PEPE@GMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:34:00\",\n                  \"fechacreacion\":\"\"}]'),
(28, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:35:18', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()-\",\n				  \"direccion\":\".*&()-DDD\",\n				  \"telefono\":\"(370) ___-____\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:17:02\",\n                  \"fechacreacion\":\"\"}]'),
(29, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:35:34', 'Ariel Bernardo', '[{\"id\":\"27\",\n				  \"nombre\":\"LEGALLKDF--*()\",\n				  \"direccion\":\"ARIF 45546()\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"1065046406\",\n				  \"cuit\":\"04-5646504_-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"PEPE@GMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:34:00\",\n                  \"fechacreacion\":\"\"}]'),
(30, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:35:35', 'Ariel Bernardo', '[{\"id\":\"27\",\n				  \"nombre\":\"LEGALLKDF--*()\",\n				  \"direccion\":\"ARIF 45546()\",\n				  \"telefono\":\"(406) 546-4646\",\n				  \"dni\":\"1065046406\",\n				  \"cuit\":\"04-5646504_-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"PEPE@GMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:35:35\",\n                  \"fechacreacion\":\"\"}]'),
(31, 'clientes', 'ELIMINAR', NULL, NULL, '2025-07-25 00:36:09', 'Ariel Bernardo', '[{\"id\":\"28\",\n				  \"nombre\":\"AAAA()\",\n				  \"direccion\":\"0465465\",\n				  \"telefono\":\"(370) 499-9123\",\n				  \"dni\":\"40504604\",\n				  \"cuit\":\"40-56046540-6\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:36:02\",\n                  \"fechacreacion\":\"\"}]'),
(32, 'clientes', 'ELIMINAR', NULL, NULL, '2025-07-25 00:36:22', 'Ariel Bernardo', '[{\"id\":\"27\",\n				  \"nombre\":\"LEGALLKDF--*()\",\n				  \"direccion\":\"ARIF 45546()\",\n				  \"telefono\":\"(406) 546-4646\",\n				  \"dni\":\"1065046406\",\n				  \"cuit\":\"04-5646504_-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"PEPE@GMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:35:35\",\n                  \"fechacreacion\":\"\"}]'),
(33, 'clientes', 'ELIMINAR', NULL, NULL, '2025-07-25 00:36:33', 'Ariel Bernardo', '[{\"id\":\"26\",\n				  \"nombre\":\"MARíA JOSé 2PM.*&()-\",\n				  \"direccion\":\".*&()-DDD\",\n				  \"telefono\":\"(046) 406-4064\",\n				  \"dni\":\"2024159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:35:18\",\n                  \"fechacreacion\":\"\"}]'),
(34, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:39:50', 'Ariel Bernardo', '[{\"id\":\"29\",\n				  \"nombre\":\"LEONO-4\",\n				  \"direccion\":\".\",\n				  \"telefono\":\"3704\",\n				  \"dni\":\"30065464\",\n				  \"cuit\":\"20-23023031-4\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:39:10\",\n                  \"fechacreacion\":\"\"}]'),
(35, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:52:26', 'Ariel Bernardo', '[{\"id\":\"16\",\n				  \"nombre\":\"ALGO BONITO\",\n				  \"direccion\":\"CIERVO PETISO\",\n				  \"telefono\":\"(372) 544-0022\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JENY\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:46:15\",\n                  \"fechacreacion\":\"\"}]'),
(36, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:52:30', 'Ariel Bernardo', '[{\"id\":\"2\",\n				  \"nombre\":\"ARIEL BERNARDO\",\n				  \"direccion\":\"MIGUEL INSFRAN Y RESIDENTES PARAGUAYOS\",\n				  \"telefono\":\"(370) 429-9434\",\n				  \"dni\":\"24159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"ARIEL@ARIEL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-06-15 22:53:46\",\n                  \"fechacreacion\":\"\"}]'),
(37, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:52:34', 'Ariel Bernardo', '[{\"id\":\"25\",\n				  \"nombre\":\"CAMILO TEVEZ (ABERNORT)\",\n				  \"direccion\":\"COLECTORA\",\n				  \"telefono\":\"(362) 453-4966\",\n				  \"dni\":\"29999888\",\n				  \"cuit\":\"20-20202020-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"DE WALTER\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-24 19:40:33\",\n                  \"fechacreacion\":\"\"}]'),
(38, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 00:52:37', 'Ariel Bernardo', '[{\"id\":\"6\",\n				  \"nombre\":\"KIOSCO BARRIO PRIMAVERA\",\n				  \"direccion\":\"BARRIO PRIMAVERA\",\n				  \"telefono\":\"(303) 030-3030\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"AGENDAR CELU\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:45:05\",\n                  \"fechacreacion\":\"\"}]'),
(39, 'clientes', 'ELIMINAR', NULL, NULL, '2025-07-25 00:53:54', 'Ariel Bernardo', '[{\"id\":\"30\",\n				  \"nombre\":\"AAAA()\",\n				  \"direccion\":\".\",\n				  \"telefono\":\"3704\",\n				  \"dni\":\"0\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:53:31\",\n                  \"fechacreacion\":\"\"}]'),
(40, 'ventas', 'ELIMINAR', '{\"id\":2,\"fecha\":\"2025-07-25\",\"codigo\":\"0001-00001147\",\"id_cliente\":15,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"-1000.00\\\",\\\"total\\\":\\\"2200.00\\\"},{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"2\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"-2000.00\\\",\\\"total\\\":\\\"4400.00\\\"},{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"2\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"-2000.00\\\",\\\"total\\\":\\\"4400.00\\\"}]\",\"impuesto\":0,\"total\":11000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"25-07-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"11000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-07-25\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"2\"}', '2025-07-25 12:10:29', 'Administrador', NULL),
(41, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 12:38:18', 'Administrador', '[{\"id\":\"4\",\n				  \"nombre\":\"SUPERMERCADO CHINO \",\n				  \"direccion\":\"DON BOSCO 50\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"2020220202\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"W@E\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"SE LLEVO EXHIBIDORA.\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:45:00\",\n                  \"fechacreacion\":\"\"}]'),
(42, 'clientes', 'UPDATE', NULL, NULL, '2025-07-25 12:46:03', 'Administrador', '[{\"id\":\"5\",\n				  \"nombre\":\"SUPERMERCADO CHINO 2\",\n				  \"direccion\":\"MARCONI Y CALLE 6\",\n				  \"telefono\":\"(202) 020-2020\",\n				  \"dni\":\"22222222\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"W@E\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:45:03\",\n                  \"fechacreacion\":\"\"}]'),
(43, 'clientes', 'ELIMINAR', NULL, NULL, '2025-08-02 13:41:39', 'Administrador', '[{\"id\":\"2\",\n				  \"nombre\":\"ARIEL BERNARDO\",\n				  \"direccion\":\"MIGUEL INSFRAN Y RESIDENTES PARAGUAYOS\",\n				  \"telefono\":\"(370) 429-9434\",\n				  \"dni\":\"24159131\",\n				  \"cuit\":\"20-24159131-0\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"ARIEL@ARIEL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-06-15 22:53:46\",\n                  \"fechacreacion\":\"\"}]'),
(44, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 4 UNIDADES\",\"stock\":64,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":36,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-07-25 12:55:55\"}', '{\"id_categoria\":\"1\",\"id\":\"3\",\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":\"200\",\"precio_compra\":0,\"precio_venta\":\"1000\"}', '2025-08-06 13:15:45', 'Administrador', NULL),
(45, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BID\\u00f3N AGUA MINORISTA\",\"descripcion\":\"BID\\u00f3N DE AGUA POR UNIDAD\",\"stock\":0,\"precio_compra\":0,\"precio_venta\":2200,\"ventas\":100,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-07-24 22:10:19\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"0\",\"precio_compra\":0,\"precio_venta\":\"2500\"}', '2025-08-06 13:16:21', 'Administrador', NULL),
(46, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":1,\"precio_compra\":0,\"precio_venta\":4500,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-06-15 23:28:23\"}', '{\"id_categoria\":\"1\",\"id\":\"4\",\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":\"1\",\"precio_compra\":0,\"precio_venta\":\"6500\"}', '2025-08-06 13:17:35', 'Administrador', NULL),
(47, 'clientes', 'ELIMINAR', NULL, NULL, '2025-08-12 16:14:56', 'Administrador', '[{\"id\":\"40\",\n				  \"nombre\":\"ALICIA SABUGO\",\n				  \"direccion\":\"MARGARITA BELEN \",\n				  \"telefono\":\"(362) 438-5958\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE ALICIA SABUGO\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-12 11:30:32\",\n                  \"fechacreacion\":\"\"}]'),
(48, 'ventas', 'ELIMINAR', '{\"id\":16,\"fecha\":\"2025-08-12\",\"codigo\":\"0001-00001161\",\"id_cliente\":37,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"10\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"12000.00\\\"}]\",\"impuesto\":0,\"total\":12000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"12-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"12000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-12\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"16\"}', '2025-08-12 19:46:27', 'Administrador', NULL),
(49, 'ventas', 'ELIMINAR', '{\"id\":23,\"fecha\":\"2025-08-12\",\"codigo\":\"0001-00001167\",\"id_cliente\":34,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"2500.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"2500.00\\\"}]\",\"impuesto\":0,\"total\":2500,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"12-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"2500\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-12\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"23\"}', '2025-08-12 22:15:37', 'Administrador', NULL),
(50, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":-22,\"precio_compra\":0,\"precio_venta\":2500,\"ventas\":122,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-12 22:19:16\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"100\",\"precio_compra\":0,\"precio_venta\":\"2500\"}', '2025-08-12 22:28:42', 'Administrador', NULL),
(51, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":-2,\"precio_compra\":0,\"precio_venta\":6500,\"ventas\":3,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-12 16:13:05\"}', '{\"id_categoria\":\"1\",\"id\":\"4\",\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":\"200\",\"precio_compra\":0,\"precio_venta\":\"6500\"}', '2025-08-12 22:28:56', 'Administrador', NULL),
(52, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":-187,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":188,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-12 19:46:27\"}', '{\"id_categoria\":\"1\",\"id\":\"7\",\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":\"5500\",\"precio_compra\":0,\"precio_venta\":\"1200\"}', '2025-08-12 22:29:12', 'Administrador', NULL),
(53, 'clientes', 'UPDATE', NULL, NULL, '2025-08-13 13:43:29', 'Administrador', '[{\"id\":\"38\",\n				  \"nombre\":\"LUCAS \",\n				  \"direccion\":\"CARPINCHO MACHO\",\n				  \"telefono\":\"(362) 567-5917\",\n				  \"dni\":\"33526456\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-11 23:09:32\",\n	              \"ultimolibrodevuelto\":\"AMIGO DE CRISTAL\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-12 02:09:32\",\n                  \"fechacreacion\":\"\"}]'),
(54, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":294,\"precio_compra\":0,\"precio_venta\":10000,\"ventas\":6,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-12 16:13:05\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"122\",\"precio_compra\":0,\"precio_venta\":\"10000\"}', '2025-08-13 22:41:06', 'Administrador', NULL),
(55, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":200,\"precio_compra\":0,\"precio_venta\":6500,\"ventas\":3,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-12 22:28:56\"}', '{\"id_categoria\":\"1\",\"id\":\"4\",\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":\"174\",\"precio_compra\":0,\"precio_venta\":\"6500\"}', '2025-08-13 22:41:20', 'Administrador', NULL),
(56, 'clientes', 'UPDATE', NULL, NULL, '2025-08-13 22:59:13', 'Administrador', '[{\"id\":\"48\",\n				  \"nombre\":\"KIOSKO MONTIREL\",\n				  \"direccion\":\"BARRIO JORGE NEWBERY\",\n				  \"telefono\":\"(362) 420-6105\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-13 18:58:43\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-13 21:58:43\",\n                  \"fechacreacion\":\"\"}]'),
(57, 'ventas', 'ELIMINAR', '{\"id\":35,\"fecha\":\"2025-08-14\",\"codigo\":\"0001-00001179\",\"id_cliente\":46,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"16\\\",\\\"precio\\\":\\\"1000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"16000.00\\\"}]\",\"impuesto\":0,\"total\":16000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"14-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"16000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-14\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"35\"}', '2025-08-14 16:28:42', 'Administrador', NULL),
(58, 'ventas', 'ELIMINAR', '{\"id\":36,\"fecha\":\"2025-08-14\",\"codigo\":\"0001-00001180\",\"id_cliente\":46,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"6\\\",\\\"precio\\\":\\\"1000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"6000.00\\\"}]\",\"impuesto\":0,\"total\":6000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"14-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-14\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"36\"}', '2025-08-14 22:03:45', 'Administrador', NULL),
(59, 'clientes', 'UPDATE', NULL, NULL, '2025-08-14 22:09:42', 'Administrador', '[{\"id\":\"50\",\n				  \"nombre\":\"GRAGSTOR MDQ\",\n				  \"direccion\":\"MITRE 150\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-14 13:47:44\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE WALTER\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-14 16:47:44\",\n                  \"fechacreacion\":\"\"}]'),
(60, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":122,\"precio_compra\":0,\"precio_venta\":10000,\"ventas\":6,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-13 22:41:06\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"145\",\"precio_compra\":0,\"precio_venta\":\"10000\"}', '2025-08-14 23:11:05', 'Administrador', NULL),
(61, 'ventas', 'ELIMINAR', '{\"id\":45,\"fecha\":\"2025-08-15\",\"codigo\":\"0001-00001189\",\"id_cliente\":55,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"8\\\",\\\"descripcion\\\":\\\"DISPENSER MENSUAL\\\",\\\"codigo\\\":\\\"dism\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"27000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"27000.00\\\"}]\",\"impuesto\":0,\"total\":27000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"15-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"27000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-15\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"45\"}', '2025-08-15 21:03:18', 'Administrador', NULL),
(62, 'ventas', 'ELIMINAR', '{\"id\":46,\"fecha\":\"2025-08-15\",\"codigo\":\"0001-00001190\",\"id_cliente\":56,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"8\\\",\\\"descripcion\\\":\\\"DISPENSER MENSUAL\\\",\\\"codigo\\\":\\\"dism\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"27000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"27000.00\\\"}]\",\"impuesto\":0,\"total\":27000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"15-08-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"27000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-08-15\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"46\"}', '2025-08-15 21:03:25', 'Administrador', NULL),
(63, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":5486,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":202,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-14 22:30:51\"}', '{\"id_categoria\":\"1\",\"id\":\"7\",\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":\"123\",\"precio_compra\":0,\"precio_venta\":\"1200\"}', '2025-08-15 23:25:58', 'Administrador', NULL),
(64, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":145,\"precio_compra\":0,\"precio_venta\":10000,\"ventas\":6,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-14 23:11:05\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"139\",\"precio_compra\":0,\"precio_venta\":\"10000\"}', '2025-08-15 23:27:03', 'Administrador', NULL),
(65, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":88,\"precio_compra\":0,\"precio_venta\":2500,\"ventas\":134,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-14 18:38:40\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"39\",\"precio_compra\":0,\"precio_venta\":\"2500\"}', '2025-08-15 23:27:24', 'Administrador', NULL),
(66, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":26997,\"precio_compra\":0,\"precio_venta\":27000,\"ventas\":3,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-15 21:04:42\"}', '{\"id_categoria\":\"1\",\"id\":\"8\",\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":\"7\",\"precio_compra\":0,\"precio_venta\":\"27000\"}', '2025-08-16 19:46:43', 'Administrador', NULL),
(67, 'productos', 'UPDATE', '{\"id_categoria\":3,\"codigo\":\"INSU\",\"nombre\":\"BIDONES DE 20 LTS VAC\\u00edOS\",\"descripcion\":\"BIDONES VAC\\u00edOS\",\"stock\":24,\"precio_compra\":0,\"precio_venta\":0,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-16 19:45:19\"}', '{\"id_categoria\":\"3\",\"id\":\"9\",\"codigo\":\"INSU\",\"nombre\":\"BIDONES DE 20 LTS VAC\\u00edOS\",\"descripcion\":\"BIDONES VAC\\u00edOS QUE DEJARON\",\"stock\":\"24\",\"precio_compra\":0,\"precio_venta\":\"0\"}', '2025-08-16 19:47:21', 'Administrador', NULL),
(68, 'productos', 'UPDATE', '{\"id_categoria\":3,\"codigo\":\"INSU\",\"nombre\":\"BIDONES DE 20 LTS VAC\\u00edOS\",\"descripcion\":\"BIDONES VAC\\u00edOS QUE DEJARON\",\"stock\":24,\"precio_compra\":0,\"precio_venta\":0,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-16 19:47:21\"}', '{\"id_categoria\":\"3\",\"id\":\"9\",\"codigo\":\"INSU\",\"nombre\":\"BIDONES DE 20 LTS VAC\\u00edOS\",\"descripcion\":\"BIDONES VAC\\u00edOS QUE DEJARON\",\"stock\":\"23\",\"precio_compra\":0,\"precio_venta\":\"0\"}', '2025-08-16 19:47:37', 'Administrador', NULL),
(69, 'clientes', 'ELIMINAR', NULL, NULL, '2025-08-18 18:46:12', 'Administrador', '[{\"id\":\"52\",\n				  \"nombre\":\"OFICINA OBRAS PUBLICAS \",\n				  \"direccion\":\"CENTRO RESISTENCIA\",\n				  \"telefono\":\"(___) ___-____\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-08-14 19:13:37\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE WALTER\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-14 22:13:37\",\n                  \"fechacreacion\":\"\"}]'),
(70, 'clientes', 'UPDATE', NULL, NULL, '2025-08-18 22:53:31', 'Administrador', '[{\"id\":\"62\",\n				  \"nombre\":\"MAYORISTA FONTANA\",\n				  \"direccion\":\"COLECTORA 25 DE MAYO \",\n				  \"telefono\":\"(222) 222-2222\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"22-22222222-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-18 19:47:11\",\n	              \"ultimolibrodevuelto\":\" CLIENTE FONTANA\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-18 22:47:11\",\n                  \"fechacreacion\":\"\"}]'),
(71, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":-100,\"precio_compra\":0,\"precio_venta\":1500,\"ventas\":350,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-18 22:50:50\"}', '{\"id_categoria\":\"1\",\"id\":\"6\",\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":\"500\",\"precio_compra\":0,\"precio_venta\":\"1500\"}', '2025-08-18 22:58:11', 'Administrador', NULL),
(72, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":6,\"precio_compra\":0,\"precio_venta\":27000,\"ventas\":4,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-18 18:44:01\"}', '{\"id_categoria\":\"1\",\"id\":\"8\",\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":\"12\",\"precio_compra\":0,\"precio_venta\":\"27000\"}', '2025-08-18 22:58:42', 'Administrador', NULL),
(73, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":139,\"precio_compra\":0,\"precio_venta\":10000,\"ventas\":6,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-15 23:27:03\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"129\",\"precio_compra\":0,\"precio_venta\":\"10000\"}', '2025-08-18 22:59:25', 'Administrador', NULL),
(74, 'productos', 'ELIMINAR', '{\"id_categoria\":3,\"codigo\":\"INSU\",\"nombre\":\"BIDONES DE 20 LTS VAC\\u00edOS\",\"descripcion\":\"BIDONES VAC\\u00edOS QUE DEJARON\",\"stock\":23,\"precio_compra\":0,\"precio_venta\":0,\"ventas\":0,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-16 19:47:37\"}', '{\"id\":\"9\"}', '2025-08-18 22:59:35', 'Administrador', NULL),
(75, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":18,\"precio_compra\":0,\"precio_venta\":2500,\"ventas\":155,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-20 16:33:49\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"99\",\"precio_compra\":0,\"precio_venta\":\"2500\"}', '2025-08-20 22:59:45', 'Administrador', NULL),
(76, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":12,\"precio_compra\":0,\"precio_venta\":27000,\"ventas\":4,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-18 22:58:42\"}', '{\"id_categoria\":\"1\",\"id\":\"8\",\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":\"6\",\"precio_compra\":0,\"precio_venta\":\"27000\"}', '2025-08-20 23:00:28', 'Administrador', NULL),
(77, 'clientes', 'UPDATE', NULL, NULL, '2025-08-21 19:21:35', 'Administrador', '[{\"id\":\"16\",\n				  \"nombre\":\"ALGO BONITO\",\n				  \"direccion\":\"CIERVO PETISO\",\n				  \"telefono\":\"(372) 544-0022\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20-20202020-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JENY\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:46:15\",\n                  \"fechacreacion\":\"\"}]'),
(78, 'clientes', 'UPDATE', NULL, NULL, '2025-08-21 19:51:18', 'Administrador', '[{\"id\":\"54\",\n				  \"nombre\":\"CELESTE MAIDANA \",\n				  \"direccion\":\"COLONIAS UNIDAS\",\n				  \"telefono\":\"(000) 000-0000\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"22-22222222-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-15 17:56:13\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-15 20:56:13\",\n                  \"fechacreacion\":\"\"}]'),
(79, 'clientes', 'UPDATE', NULL, NULL, '2025-08-23 11:37:03', 'Administrador', '[{\"id\":\"43\",\n				  \"nombre\":\"FRANCIS\",\n				  \"direccion\":\"B° ESPAñA CALLE LEOPOLDO MARTIN  1201\",\n				  \"telefono\":\"(000) 000-0000\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-08-22 15:11:24\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-22 18:11:24\",\n                  \"fechacreacion\":\"\"}]'),
(80, 'clientes', 'UPDATE', NULL, NULL, '2025-08-25 18:59:40', 'Administrador', '[{\"id\":\"76\",\n				  \"nombre\":\"SERRA MARIA GUIDO\",\n				  \"direccion\":\"GUIDO SPANO 533 AV.FLORIDA\",\n				  \"telefono\":\"(362) 493-7410\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-23 15:46:07\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE MARTIN \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-23 18:46:07\",\n                  \"fechacreacion\":\"\"}]');
INSERT INTO `backup` (`id`, `tabla`, `tipo`, `datos_viejos`, `datos_nuevos`, `fechacreacion`, `usuario`, `datos`) VALUES
(81, 'clientes', 'UPDATE', NULL, NULL, '2025-08-25 21:02:26', 'Administrador', '[{\"id\":\"29\",\n				  \"nombre\":\"LEONO-4\",\n				  \"direccion\":\".\",\n				  \"telefono\":\"(370) 4__-____\",\n				  \"dni\":\"30065464\",\n				  \"cuit\":\"20-23023031-4\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-07-25 00:39:50\",\n                  \"fechacreacion\":\"\"}]'),
(82, 'clientes', 'ELIMINAR', NULL, NULL, '2025-08-26 19:27:50', 'Administrador', '[{\"id\":\"82\",\n				  \"nombre\":\"AYELEN NAUMOVICH\",\n				  \"direccion\":\"BARRIO SUPCEM 10 VDS LA TOMA CASA 16\",\n				  \"telefono\":\"(336) 247-0859\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENE DE MARTIN\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-23 18:48:09\",\n                  \"fechacreacion\":\"\"}]'),
(83, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":41,\"precio_compra\":0,\"precio_venta\":2500,\"ventas\":213,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-28 23:34:27\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"500\",\"precio_compra\":0,\"precio_venta\":\"2500\"}', '2025-08-28 23:35:45', 'Administrador', NULL),
(84, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":500,\"precio_compra\":0,\"precio_venta\":2500,\"ventas\":213,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-28 23:35:45\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"500\",\"precio_compra\":0,\"precio_venta\":\"3000\"}', '2025-08-30 15:20:24', 'Administrador', NULL),
(85, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":44,\"precio_compra\":0,\"precio_venta\":1000,\"ventas\":192,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-29 16:18:40\"}', '{\"id_categoria\":\"1\",\"id\":\"3\",\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":\"44\",\"precio_compra\":0,\"precio_venta\":\"1300\"}', '2025-08-30 15:20:34', 'Administrador', NULL),
(86, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":421,\"precio_compra\":0,\"precio_venta\":1500,\"ventas\":429,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-08-25 15:30:31\"}', '{\"id_categoria\":\"1\",\"id\":\"6\",\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":\"421\",\"precio_compra\":0,\"precio_venta\":\"1600\"}', '2025-08-30 15:20:50', 'Administrador', NULL),
(87, 'ventas', 'ELIMINAR', '{\"id\":111,\"fecha\":\"2025-09-01\",\"codigo\":\"0001-00001255\",\"id_cliente\":73,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"1200.00\\\",\\\"total\\\":\\\"1800.00\\\"}]\",\"impuesto\":0,\"total\":1800,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"01-09-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"1800\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-09-01\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"111\"}', '2025-09-02 00:18:08', 'Administrador', NULL),
(88, 'clientes', 'UPDATE', NULL, NULL, '2025-09-04 22:32:29', 'Administrador', '[{\"id\":\"77\",\n				  \"nombre\":\"AYELEN NAUMOVICH\",\n				  \"direccion\":\"BARRIO SUPCEM 10 VDS LA TOMA CASA 16\",\n				  \"telefono\":\"(336) 247-0859\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-23 15:48:37\",\n	              \"ultimolibrodevuelto\":\"CLIENE DE MARTIN\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-23 18:48:37\",\n                  \"fechacreacion\":\"\"}]'),
(89, 'ventas', 'ELIMINAR', '{\"id\":142,\"fecha\":\"2025-09-08\",\"codigo\":\"0001-00001286\",\"id_cliente\":45,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"2\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"1000.00\\\",\\\"total\\\":\\\"5000.00\\\"}]\",\"impuesto\":0,\"total\":5000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"08-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"5000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-08\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"142\"}', '2025-09-08 23:02:40', 'Administrador', NULL),
(90, 'ventas', 'ELIMINAR', '{\"id\":150,\"fecha\":\"2025-09-09\",\"codigo\":\"0001-00001294\",\"id_cliente\":117,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"3\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"9000.00\\\"}]\",\"impuesto\":0,\"total\":9000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"09-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"9000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-09\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"150\"}', '2025-09-09 16:41:36', 'Administrador', NULL),
(91, 'clientes', 'ELIMINAR', NULL, NULL, '2025-09-12 19:40:03', 'Administrador', '[{\"id\":\"120\",\n				  \"nombre\":\"RUIZ DIAZ  GRACIELA ESTER \",\n				  \"direccion\":\"ZONA DEL INTERIOR\",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-12 19:39:05\",\n                  \"fechacreacion\":\"\"}]'),
(92, 'clientes', 'UPDATE', NULL, NULL, '2025-09-12 19:40:21', 'Administrador', '[{\"id\":\"88\",\n				  \"nombre\":\"GRACIELA RUIZ DIAZ\",\n				  \"direccion\":\"SAN MARTIN CHACO \",\n				  \"telefono\":\"3704\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-26 18:54:57\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-26 21:54:57\",\n                  \"fechacreacion\":\"\"}]'),
(93, 'ventas', 'ELIMINAR', '{\"id\":191,\"fecha\":\"2025-09-17\",\"codigo\":\"0001-00001334\",\"id_cliente\":65,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"11\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"3300.00\\\",\\\"total\\\":\\\"11000.00\\\"}]\",\"impuesto\":0,\"total\":11000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"17-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"11000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-17\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"191\"}', '2025-09-18 00:11:24', 'Administrador', NULL),
(94, 'clientes', 'UPDATE', NULL, NULL, '2025-09-18 19:06:10', 'Administrador', '[{\"id\":\"97\",\n				  \"nombre\":\"MONTERO CAEROLINA\",\n				  \"direccion\":\"JOSE MARIA PAZ 2919\",\n				  \"telefono\":\"(362) 462-8123\",\n				  \"dni\":\"365069201\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-30 15:20:09\",\n                  \"fechacreacion\":\"\"}]'),
(95, 'clientes', 'UPDATE', NULL, NULL, '2025-09-18 19:10:58', 'Administrador', '[{\"id\":\"129\",\n				  \"nombre\":\"ESTEBAN TORRALETTI\",\n				  \"direccion\":\"RAUL B DIAZ 846 RESISTENCIA \",\n				  \"telefono\":\"(362) 478-0595\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-09-18 16:02:18\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL MARTIN\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-18 19:02:18\",\n                  \"fechacreacion\":\"\"}]'),
(96, 'clientes', 'UPDATE', NULL, NULL, '2025-09-23 11:28:26', 'Administrador', '[{\"id\":\"104\",\n				  \"nombre\":\"RODRIGO SAVEDRA MINI MARKET JOSE\",\n				  \"direccion\":\"VILLA LOS LIRIOS JOSE ALSINA\",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-09-19 13:55:44\",\n	              \"ultimolibrodevuelto\":\"CLIENTE JANET\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-19 16:55:44\",\n                  \"fechacreacion\":\"\"}]'),
(97, 'clientes', 'UPDATE', NULL, NULL, '2025-09-23 19:56:06', 'Administrador', '[{\"id\":\"108\",\n				  \"nombre\":\"BARBARA LOURDES EVELIN \",\n				  \"direccion\":\"AV SAN SAN MARTIN Y FORMOZA \",\n				  \"telefono\":\"(362) 454-2066\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@E\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-09-02 16:18:29\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE MARTIN MENSUAL \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-02 19:18:29\",\n                  \"fechacreacion\":\"\"}]'),
(98, 'ventas', 'ELIMINAR', '{\"id\":224,\"fecha\":\"2025-09-24\",\"codigo\":\"0001-00001366\",\"id_cliente\":4,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"6\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"1200.00\\\",\\\"total\\\":\\\"6600.00\\\"}]\",\"impuesto\":0,\"total\":6600,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"24-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6600\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-24\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"224\"}', '2025-09-24 15:12:01', 'Administrador', NULL),
(99, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":-66,\"precio_compra\":0,\"precio_venta\":3000,\"ventas\":779,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-09-22 23:27:35\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"110\",\"precio_compra\":0,\"precio_venta\":\"3000\"}', '2025-09-24 15:14:58', 'Administrador', NULL),
(100, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":-9,\"precio_compra\":0,\"precio_venta\":27000,\"ventas\":19,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-09-18 22:13:15\"}', '{\"id_categoria\":\"1\",\"id\":\"8\",\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":\"0\",\"precio_compra\":0,\"precio_venta\":\"27000\"}', '2025-09-24 15:15:12', 'Administrador', NULL),
(101, 'ventas', 'ELIMINAR', '{\"id\":238,\"fecha\":\"2025-09-26\",\"codigo\":\"0001-00001380\",\"id_cliente\":133,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"1200.00\\\"}]\",\"impuesto\":0,\"total\":1200,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"26-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"1200\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-26\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"238\"}', '2025-09-26 16:24:28', 'Administrador', NULL),
(102, 'ventas', 'ELIMINAR', '{\"id\":233,\"fecha\":\"2025-09-25\",\"codigo\":\"0001-00001375\",\"id_cliente\":13,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"200\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"260000.00\\\"},{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"100\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"120000.00\\\"}]\",\"impuesto\":0,\"total\":380000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"25-09-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"380000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-09-25\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"233\"}', '2025-09-26 16:27:15', 'Administrador', NULL),
(103, 'clientes', 'UPDATE', NULL, NULL, '2025-09-27 17:46:46', 'Administrador', '[{\"id\":\"135\",\n				  \"nombre\":\"NEGOCIO AV CHACO \",\n				  \"direccion\":\"AV CHACO \",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE NUEVO \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-27 16:13:54\",\n                  \"fechacreacion\":\"\"}]'),
(104, 'ventas', 'ELIMINAR', '{\"id\":246,\"fecha\":\"2025-09-27\",\"codigo\":\"0001-00001388\",\"id_cliente\":135,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"1200.00\\\"}]\",\"impuesto\":0,\"total\":1200,\"adeuda\":1200,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"27-09-2025\\\",\\\"tipo\\\":\\\"CTA.CORRIENTE\\\",\\\"importe\\\":\\\"1200\\\",\\\"referencia\\\":\\\"CTA.CORRIENTE\\\"}]\",\"fechapago\":\"2025-09-27\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"246\"}', '2025-09-27 17:47:52', 'Administrador', NULL),
(105, 'clientes', 'UPDATE', NULL, NULL, '2025-09-27 18:51:51', 'Administrador', '[{\"id\":\"96\",\n				  \"nombre\":\"MONTERO CAEROLINA\",\n				  \"direccion\":\"JOSE MARIA PAZ 2919\",\n				  \"telefono\":\"(362) 462-8123\",\n				  \"dni\":\"365069201\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"3\",\n				  \"ultima_compra\":\"2025-09-18 19:13:44\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-18 22:13:44\",\n                  \"fechacreacion\":\"\"}]'),
(106, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":140,\"precio_compra\":0,\"precio_venta\":6500,\"ventas\":37,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-03 00:14:25\"}', '{\"id_categoria\":\"1\",\"id\":\"4\",\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":\"140\",\"precio_compra\":0,\"precio_venta\":\"7500\"}', '2025-10-04 01:40:16', 'Cristal Glavas', NULL),
(107, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":106,\"precio_compra\":0,\"precio_venta\":10000,\"ventas\":29,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-03 00:13:15\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"106\",\"precio_compra\":0,\"precio_venta\":\"12000\"}', '2025-10-04 01:40:25', 'Cristal Glavas', NULL),
(108, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":-298,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":623,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-04 01:39:40\"}', '{\"id_categoria\":\"1\",\"id\":\"7\",\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":\"4000\",\"precio_compra\":0,\"precio_venta\":\"1200\"}', '2025-10-04 01:40:45', 'Cristal Glavas', NULL),
(109, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":-1088,\"precio_compra\":0,\"precio_venta\":1300,\"ventas\":1324,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-04 01:39:40\"}', '{\"id_categoria\":\"1\",\"id\":\"3\",\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":\"50000\",\"precio_compra\":0,\"precio_venta\":\"1300\"}', '2025-10-04 01:40:55', 'Cristal Glavas', NULL),
(110, 'clientes', 'UPDATE', NULL, NULL, '2025-10-04 12:48:46', 'Administrador', '[{\"id\":\"138\",\n				  \"nombre\":\"CARLOS HARDY\",\n				  \"direccion\":\"CARLOS HARDY Y JOSE MARTI\",\n				  \"telefono\":\"(362) 477-6968\",\n				  \"dni\":\"29777666\",\n				  \"cuit\":\"20-20202020-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-10-04 09:42:36\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-04 12:42:36\",\n                  \"fechacreacion\":\"\"}]'),
(111, 'clientes', 'UPDATE', NULL, NULL, '2025-10-06 16:01:30', 'Cristal Glavas', '[{\"id\":\"126\",\n				  \"nombre\":\"MARISA ESTIGORRIA\",\n				  \"direccion\":\"AV PELLEGRINI 69\",\n				  \"telefono\":\"(362) 460-4249\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-09-17 21:19:23\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL JANET\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-18 00:19:23\",\n                  \"fechacreacion\":\"\"}]'),
(112, 'clientes', 'UPDATE', NULL, NULL, '2025-10-07 13:56:49', 'Administrador', '[{\"id\":\"108\",\n				  \"nombre\":\"BARBARA LOURDES EVELIN \",\n				  \"direccion\":\"AV SAN SAN MARTIN Y FORMOSA\",\n				  \"telefono\":\"(362) 454-2066\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@E\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-09-02 16:18:29\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE MARTIN MENSUAL \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-23 19:56:06\",\n                  \"fechacreacion\":\"\"}]'),
(113, 'clientes', 'ELIMINAR', NULL, NULL, '2025-10-07 13:59:15', 'Administrador', '[{\"id\":\"139\",\n				  \"nombre\":\"BARBARA LOURDES EVELIN\",\n				  \"direccion\":\"FONTANA, CALLE FORMOSA, ENTRE BELGRANO Y CACUI B INDEPENDENCIA\",\n				  \"telefono\":\"(362) 454-2066\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20-20202020-0\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL DISPENSER FRIO Y CALOR\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-07 13:53:44\",\n                  \"fechacreacion\":\"\"}]'),
(114, 'clientes', 'UPDATE', NULL, NULL, '2025-10-07 19:28:44', 'Administrador', '[{\"id\":\"47\",\n				  \"nombre\":\"EDITH DUARTE \",\n				  \"direccion\":\"ISABEL LA CATOLICA \",\n				  \"telefono\":\"(362) 425-6343\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-08-13 16:36:47\",\n	              \"ultimolibrodevuelto\":\"VERDULERIA BARRIO ESPAñA\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-08-13 19:36:47\",\n                  \"fechacreacion\":\"\"}]'),
(115, 'clientes', 'UPDATE', NULL, NULL, '2025-10-07 19:43:42', 'Administrador', '[{\"id\":\"11\",\n				  \"nombre\":\"KIOSCO GEMA\",\n				  \"direccion\":\"MARCONI 1702\",\n				  \"telefono\":\"(362) 485-7731\",\n				  \"dni\":\"0\",\n				  \"cuit\":\"00-00000000-0\",\n				  \"idivacliente\":\"3\",\n				  \"email\":\"W@E\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"8\",\n				  \"ultima_compra\":\"2025-09-27 13:09:47\",\n	              \"ultimolibrodevuelto\":\"TIENE EXIBIDORA\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-27 16:09:47\",\n                  \"fechacreacion\":\"\"}]'),
(116, 'clientes', 'UPDATE', NULL, NULL, '2025-10-10 12:49:43', 'Administrador', '[{\"id\":\"143\",\n				  \"nombre\":\"KIOSCO JOSé \",\n				  \"direccion\":\"YAGUARETE 2030\",\n				  \"telefono\":\"(362) 426-6168\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"CLIENTE@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"VENTA DE GOTAS DE CRISTAL \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-10 12:33:21\",\n                  \"fechacreacion\":\"\"}]'),
(117, 'clientes', 'UPDATE', NULL, NULL, '2025-10-15 12:02:45', 'Administrador', '[{\"id\":\"102\",\n				  \"nombre\":\"DIEGO MINIMARKET PREMIUM\",\n				  \"direccion\":\"JOSé HERNáNDEZ 226\",\n				  \"telefono\":\"(362) 402-3983\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"5\",\n				  \"ultima_compra\":\"2025-09-30 20:25:44\",\n	              \"ultimolibrodevuelto\":\"CLIENTE \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-30 23:25:44\",\n                  \"fechacreacion\":\"\"}]'),
(118, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":-10,\"precio_compra\":0,\"precio_venta\":27000,\"ventas\":29,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-25 22:15:07\"}', '{\"id_categoria\":\"1\",\"id\":\"8\",\"codigo\":\"dism\",\"nombre\":\"DISPENSER MENSUAL\",\"descripcion\":\"DISPENSER FRIO\\/CALOR CON 4 BIDONES DE 20LTS\",\"stock\":\"10\",\"precio_compra\":\"0\",\"precio_venta\":\"27000\"}', '2025-10-25 22:15:51', 'Administrador', NULL),
(119, 'ventas', 'ELIMINAR', '{\"id\":371,\"fecha\":\"2025-10-25\",\"codigo\":\"0001-00001513\",\"id_cliente\":188,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"8\\\",\\\"descripcion\\\":\\\"DISPENSER MENSUAL\\\",\\\"codigo\\\":\\\"dism\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"27000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"27000.00\\\"}]\",\"impuesto\":0,\"total\":27000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"25-10-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"27000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-10-25\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"371\"}', '2025-10-25 23:18:24', 'Administrador', NULL),
(120, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"001\",\"nombre\":\"CARBON 5KG\",\"descripcion\":\"BOLSAS DE CARB\\u00f3N DE CART\\u00f3N\",\"stock\":48463,\"precio_compra\":0,\"precio_venta\":1500,\"ventas\":1537,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-22 13:01:56\"}', '{\"id_categoria\":\"1\",\"id\":\"9\",\"codigo\":\"001\",\"nombre\":\"CARBON 5KG\",\"descripcion\":\"BOLSAS DE CARB\\u00f3N DE CART\\u00f3N\",\"stock\":\"48463\",\"precio_compra\":\"1100\",\"precio_venta\":\"1500\"}', '2025-10-26 23:45:00', 'Cristal Glavas', NULL),
(121, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":49039,\"precio_compra\":0,\"precio_venta\":1300,\"ventas\":2285,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-25 21:38:00\"}', '{\"id_categoria\":\"1\",\"id\":\"3\",\"codigo\":\"ALI3\",\"nombre\":\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\",\"descripcion\":\"BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES\",\"stock\":\"49039\",\"precio_compra\":\"900\",\"precio_venta\":\"1300\"}', '2025-10-26 23:45:17', 'Cristal Glavas', NULL),
(122, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":128,\"precio_compra\":0,\"precio_venta\":7500,\"ventas\":49,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-22 13:21:27\"}', '{\"id_categoria\":\"1\",\"id\":\"4\",\"codigo\":\"ALI4\",\"nombre\":\"DISPENSER DE MESA\",\"descripcion\":\"PLASTICO CON MARCA\",\"stock\":\"128\",\"precio_compra\":\"4200\",\"precio_venta\":\"7500\"}', '2025-10-26 23:45:26', 'Cristal Glavas', NULL),
(123, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":104,\"precio_compra\":0,\"precio_venta\":12000,\"ventas\":31,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-10 12:05:46\"}', '{\"id_categoria\":\"1\",\"id\":\"5\",\"codigo\":\"B\",\"nombre\":\"ENVASE DE 20LTS\",\"descripcion\":\"BIDON\",\"stock\":\"104\",\"precio_compra\":\"6500\",\"precio_venta\":\"12000\"}', '2025-10-26 23:45:33', 'Cristal Glavas', NULL),
(124, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":3606,\"precio_compra\":0,\"precio_venta\":1200,\"ventas\":1017,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-25 21:35:58\"}', '{\"id_categoria\":\"1\",\"id\":\"7\",\"codigo\":\"ALI7\",\"nombre\":\"BIDON DE 6 LTS\",\"descripcion\":\"NO RETORNABLE\",\"stock\":\"3606\",\"precio_compra\":\"1050\",\"precio_venta\":\"1200\"}', '2025-10-26 23:45:44', 'Cristal Glavas', NULL),
(125, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":29,\"precio_compra\":0,\"precio_venta\":3000,\"ventas\":860,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-24 15:32:38\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"29\",\"precio_compra\":\"1000\",\"precio_venta\":\"3000\"}', '2025-10-26 23:45:53', 'Cristal Glavas', NULL),
(126, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":392,\"precio_compra\":0,\"precio_venta\":1600,\"ventas\":458,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-04 01:43:38\"}', '{\"id_categoria\":\"1\",\"id\":\"6\",\"codigo\":\"RECARGA\",\"nombre\":\"RECARGA BIDON DE AGUA MAYOR\",\"descripcion\":\"MENOS DE 5 UNIDADES\",\"stock\":\"392\",\"precio_compra\":\"900\",\"precio_venta\":\"1600\"}', '2025-10-26 23:46:03', 'Cristal Glavas', NULL),
(127, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"001\",\"nombre\":\"CARBON 5KG\",\"descripcion\":\"BOLSAS DE CARB\\u00f3N DE CART\\u00f3N\",\"stock\":48463,\"precio_compra\":1100,\"precio_venta\":1500,\"ventas\":1537,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-26 23:45:00\"}', '{\"id_categoria\":\"1\",\"id\":\"9\",\"codigo\":\"001\",\"nombre\":\"CARBON 5KG\",\"descripcion\":\"BOLSAS DE CARB\\u00f3N DE CART\\u00f3N\",\"stock\":\"48463\",\"precio_compra\":\"1000\",\"precio_venta\":\"1500\"}', '2025-10-26 23:46:24', 'Cristal Glavas', NULL),
(128, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI10\",\"nombre\":\"AZUCAR\",\"descripcion\":\"AZUCAR\",\"stock\":499897,\"precio_compra\":0,\"precio_venta\":6200,\"ventas\":103,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-10-15 11:36:35\"}', '{\"id_categoria\":\"1\",\"id\":\"11\",\"codigo\":\"ALI10\",\"nombre\":\"AZUCAR\",\"descripcion\":\"AZUCAR\",\"stock\":\"499897\",\"precio_compra\":\"5460\",\"precio_venta\":\"6200\"}', '2025-10-26 23:46:35', 'Cristal Glavas', NULL),
(129, 'ventas', 'ELIMINAR', '{\"id\":385,\"fecha\":\"2025-10-29\",\"codigo\":\"0001-00001527\",\"id_cliente\":194,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"20\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"24000.00\\\"}]\",\"impuesto\":0,\"total\":24000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"29-10-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"24000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-10-29\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"385\"}', '2025-10-29 15:31:10', 'Administrador', NULL),
(130, 'ventas', 'ELIMINAR', '{\"id\":387,\"fecha\":\"2025-10-29\",\"codigo\":\"0001-00001529\",\"id_cliente\":65,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"10\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"13000.00\\\"}]\",\"impuesto\":0,\"total\":13000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"29-10-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"13000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-10-29\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"387\"}', '2025-10-29 15:38:57', 'Administrador', NULL),
(131, 'clientes', 'ELIMINAR', NULL, NULL, '2025-10-31 15:49:13', 'Cristal Glavas', '[{\"id\":\"97\",\n				  \"nombre\":\"MONTERO CAROLINA\",\n				  \"direccion\":\"JOSE MARIA PAZ 2919\",\n				  \"telefono\":\"(362) 462-8123\",\n				  \"dni\":\"365069201\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-18 19:06:10\",\n                  \"fechacreacion\":\"\"}]'),
(132, 'ventas', 'ELIMINAR', '{\"id\":407,\"fecha\":\"2025-11-01\",\"codigo\":\"0001-00001549\",\"id_cliente\":44,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"3000.00\\\"}]\",\"impuesto\":0,\"total\":3000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"01-11-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"3000\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-11-01\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"407\"}', '2025-11-01 14:22:43', 'Administrador', NULL),
(133, 'ventas', 'ELIMINAR', '{\"id\":411,\"fecha\":\"2025-11-03\",\"codigo\":\"0001-00001553\",\"id_cliente\":1,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"11\\\",\\\"descripcion\\\":\\\"AZUCAR\\\",\\\"codigo\\\":\\\"ALI10\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"6200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"6200.00\\\"}]\",\"impuesto\":0,\"total\":6200,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"03-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6200\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-03\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"411\"}', '2025-11-03 13:52:30', 'Administrador', NULL),
(134, 'ventas', 'ELIMINAR', '{\"id\":412,\"fecha\":\"2025-11-03\",\"codigo\":\"0001-00001554\",\"id_cliente\":130,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"3\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"9000.00\\\"}]\",\"impuesto\":0,\"total\":9000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"03-11-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"9000\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-11-03\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"412\"}', '2025-11-03 15:00:18', 'Administrador', NULL),
(135, 'clientes', 'UPDATE', NULL, NULL, '2025-11-03 20:31:04', 'Administrador', '[{\"id\":\"129\",\n				  \"nombre\":\"ESTEBAN TOFFALETTI\",\n				  \"direccion\":\"RAUL B DIAZ 846 RESISTENCIA \",\n				  \"telefono\":\"(362) 478-0595\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"4\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-10-06 12:29:55\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MENSUAL MARTIN\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-06 15:29:55\",\n                  \"fechacreacion\":\"\"}]'),
(136, 'clientes', 'UPDATE', NULL, NULL, '2025-11-03 22:36:06', 'Administrador', '[{\"id\":\"130\",\n				  \"nombre\":\"NOELIA 6TO PISO \",\n				  \"direccion\":\"AV.9 SE JULIO 321\",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-03 12:00:58\",\n	              \"ultimolibrodevuelto\":\"CLIENTE JANET\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-03 15:00:58\",\n                  \"fechacreacion\":\"\"}]'),
(137, 'ventas', 'ELIMINAR', '{\"id\":423,\"fecha\":\"2025-11-04\",\"codigo\":\"0001-00001565\",\"id_cliente\":184,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"2\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"6000.00\\\"}]\",\"impuesto\":0,\"total\":6000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"04-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-04\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"423\"}', '2025-11-04 19:50:20', 'Administrador', NULL),
(138, 'ventas', 'ELIMINAR', '{\"id\":424,\"fecha\":\"2025-11-04\",\"codigo\":\"0001-00001566\",\"id_cliente\":96,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"5\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"6500.00\\\"}]\",\"impuesto\":0,\"total\":6500,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"04-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6500\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-04\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"424\"}', '2025-11-04 21:32:58', 'Administrador', NULL),
(139, 'ventas', 'ELIMINAR', '{\"id\":430,\"fecha\":\"2025-11-05\",\"codigo\":\"0001-00001572\",\"id_cliente\":163,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"2\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"6000.00\\\"}]\",\"impuesto\":0,\"total\":6000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"05-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"6000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-05\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"430\"}', '2025-11-05 15:12:19', 'Administrador', NULL),
(140, 'ventas', 'ELIMINAR', '{\"id\":436,\"fecha\":\"2025-11-05\",\"codigo\":\"0001-00001578\",\"id_cliente\":164,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"16\\\",\\\"descripcion\\\":\\\"CARBON 5KG MIN\\\",\\\"codigo\\\":\\\"INSU41\\\",\\\"cantidad\\\":\\\"20\\\",\\\"precio\\\":\\\"1700.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"34000.00\\\"},{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"3\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"3900.00\\\"}]\",\"impuesto\":0,\"total\":37900,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"05-11-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"37900\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-11-05\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"436\"}', '2025-11-05 20:20:43', 'Administrador', NULL),
(141, 'ventas', 'ELIMINAR', '{\"id\":439,\"fecha\":\"2025-11-05\",\"codigo\":\"0001-00001581\",\"id_cliente\":17,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"2\\\",\\\"descripcion\\\":\\\"RECARGA BIDON AGUA DOMICILIO\\\",\\\"codigo\\\":\\\"ALI2\\\",\\\"cantidad\\\":\\\"4\\\",\\\"precio\\\":\\\"3000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"12000.00\\\"}]\",\"impuesto\":0,\"total\":12000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"05-11-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"12000\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-11-05\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"439\"}', '2025-11-05 21:33:16', 'Administrador', NULL),
(142, 'ventas', 'ELIMINAR', '{\"id\":454,\"fecha\":\"2025-11-07\",\"codigo\":\"0001-00001596\",\"id_cliente\":220,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"10\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"13000.00\\\"},{\\\"id\\\":\\\"7\\\",\\\"descripcion\\\":\\\"BIDON DE 6 LTS\\\",\\\"codigo\\\":\\\"ALI7\\\",\\\"cantidad\\\":\\\"4\\\",\\\"precio\\\":\\\"1200.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"4800.00\\\"}]\",\"impuesto\":0,\"total\":17800,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"07-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"17800\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-07\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"454\"}', '2025-11-07 20:45:44', 'Administrador', NULL),
(143, 'ventas', 'ELIMINAR', '{\"id\":466,\"fecha\":\"2025-11-08\",\"codigo\":\"0001-00001607\",\"id_cliente\":223,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"3\\\",\\\"descripcion\\\":\\\"RECARGA BID\\u00f3N DE AGUA MAYORISTA\\\",\\\"codigo\\\":\\\"ALI3\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"1300.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"1300.00\\\"}]\",\"impuesto\":0,\"total\":1300,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"08-11-2025\\\",\\\"tipo\\\":\\\"TRANSFERENCIA\\\",\\\"importe\\\":\\\"1300\\\",\\\"referencia\\\":\\\"TRANSFERENCIA\\\"}]\",\"fechapago\":\"2025-11-08\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"466\"}', '2025-11-08 17:01:08', 'Administrador', NULL),
(144, 'productos', 'UPDATE', '{\"id_categoria\":1,\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":-25,\"precio_compra\":1000,\"precio_venta\":3000,\"ventas\":914,\"obs\":null,\"iva\":0,\"activo\":1,\"obsdel\":null,\"fecha\":\"2025-11-08 15:44:53\"}', '{\"id_categoria\":\"1\",\"id\":\"2\",\"codigo\":\"ALI2\",\"nombre\":\"RECARGA BIDON AGUA DOMICILIO\",\"descripcion\":\"BID\\u00f3N DE AGUA DOMICILIO\",\"stock\":\"6000\",\"precio_compra\":\"1000\",\"precio_venta\":\"3000\"}', '2025-11-09 19:34:15', 'Cristal Glavas', NULL),
(145, 'clientes', 'UPDATE', NULL, NULL, '2025-11-11 20:48:53', 'Administrador', '[{\"id\":\"140\",\n				  \"nombre\":\"KAREN MARCONI QUINIELA\",\n				  \"direccion\":\"MARCONI\",\n				  \"telefono\":\"(362) 525-9188\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"3\",\n				  \"ultima_compra\":\"2025-10-31 09:07:13\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-31 12:07:13\",\n                  \"fechacreacion\":\"\"}]'),
(146, 'clientes', 'UPDATE', NULL, NULL, '2025-11-12 12:12:22', 'Administrador', '[{\"id\":\"147\",\n				  \"nombre\":\"CHINO SUPER SOL \",\n				  \"direccion\":\"JULIO ROCA Y CALLE 1\",\n				  \"telefono\":\"3704\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"3\",\n				  \"ultima_compra\":\"2025-11-11 11:24:34\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-11 14:24:34\",\n                  \"fechacreacion\":\"\"}]'),
(147, 'clientes', 'UPDATE', NULL, NULL, '2025-11-12 19:21:15', 'Administrador', '[{\"id\":\"159\",\n				  \"nombre\":\"GREEN MARKET FONTANA \",\n				  \"direccion\":\"FONTANA. CHACO\",\n				  \"telefono\":\"(362) 435-7379\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-01 09:12:03\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-01 12:12:03\",\n                  \"fechacreacion\":\"\"}]'),
(148, 'clientes', 'UPDATE', NULL, NULL, '2025-11-13 12:54:02', 'Administrador', '[{\"id\":\"123\",\n				  \"nombre\":\"SEBASTIAN BINAGUI OBRAS PUBLICAS \",\n				  \"direccion\":\"MONSEñOR  DE CARLO OBRAS PUBLICAS\",\n				  \"telefono\":\"(362) 422-9461\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-10-02 12:26:10\",\n	              \"ultimolibrodevuelto\":\"CLIENTE MARTIN \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-02 15:26:10\",\n                  \"fechacreacion\":\"\"}]'),
(149, 'clientes', 'UPDATE', NULL, NULL, '2025-11-13 12:59:44', 'Administrador', '[{\"id\":\"192\",\n				  \"nombre\":\"MARIA ELENA MONSEÑOR \",\n				  \"direccion\":\"MARCELO T ALVEAR 240\",\n				  \"telefono\":\"(362) 425-0456\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-10-28 12:50:15\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-28 15:50:15\",\n                  \"fechacreacion\":\"\"}]'),
(150, 'ventas', 'ELIMINAR', '{\"id\":508,\"fecha\":\"2025-11-13\",\"codigo\":\"0001-00001649\",\"id_cliente\":243,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"13\\\",\\\"descripcion\\\":\\\"COMBO 10Y10\\\",\\\"codigo\\\":\\\"ALI122\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"25000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"25000.00\\\"}]\",\"impuesto\":0,\"total\":25000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"13-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"25000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-13\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"508\"}', '2025-11-13 14:55:09', 'Administrador', NULL),
(151, 'clientes', 'UPDATE', NULL, NULL, '2025-11-14 12:52:44', 'Administrador', '[{\"id\":\"130\",\n				  \"nombre\":\"NOELIA 6TO PISO \",\n				  \"direccion\":\"AV. 9 SE JULIO 321\",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@A\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-03 12:00:58\",\n	              \"ultimolibrodevuelto\":\"CLIENTE JANET\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-03 22:36:06\",\n                  \"fechacreacion\":\"\"}]'),
(152, 'clientes', 'UPDATE', NULL, NULL, '2025-11-14 22:11:46', 'Administrador', '[{\"id\":\"62\",\n				  \"nombre\":\"MAYORISTA FONTANA  VICTOR GAS\",\n				  \"direccion\":\"COLECTORA 25 DE MAYO \",\n				  \"telefono\":\"(362) 465-0411\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"22-22222222-2\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"4\",\n				  \"ultima_compra\":\"2025-10-29 12:24:44\",\n	              \"ultimolibrodevuelto\":\" CLIENTE FONTANA\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-29 15:24:44\",\n                  \"fechacreacion\":\"\"}]'),
(153, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 14:00:22', 'Administrador', '[{\"id\":\"65\",\n				  \"nombre\":\"KIOSKO BETO \",\n				  \"direccion\":\"MISIONERO KLEIN \",\n				  \"telefono\":\"(333) 333-3333\",\n				  \"dni\":\"43616705\",\n				  \"cuit\":\"33-33333333-3\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-11-11 17:29:08\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JANET \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-11 20:29:08\",\n                  \"fechacreacion\":\"\"}]'),
(154, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 14:06:20', 'Administrador', '[{\"id\":\"72\",\n				  \"nombre\":\"PRISILA BARRANQUERAS\",\n				  \"direccion\":\"BARRANQUERAS\",\n				  \"telefono\":\"(379) 508-5497\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"33-33333333-3\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-10-07 12:25:06\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JANET \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-07 15:25:06\",\n                  \"fechacreacion\":\"\"}]');
INSERT INTO `backup` (`id`, `tabla`, `tipo`, `datos_viejos`, `datos_nuevos`, `fechacreacion`, `usuario`, `datos`) VALUES
(155, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 14:06:24', 'Administrador', '[{\"id\":\"72\",\n				  \"nombre\":\"PRISILA BARRANQUERAS\",\n				  \"direccion\":\"BARRANQUERAS FRENTE A MI QUINCHO SOñADO\",\n				  \"telefono\":\"(379) 508-5497\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"33-33333333-3\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-10-07 12:25:06\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JANET \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-17 14:06:24\",\n                  \"fechacreacion\":\"\"}]'),
(156, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 14:06:24', 'Administrador', '[{\"id\":\"72\",\n				  \"nombre\":\"PRISILA BARRANQUERAS\",\n				  \"direccion\":\"BARRANQUERAS FRENTE A MI QUINCHO SOñADO\",\n				  \"telefono\":\"(379) 508-5497\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"33-33333333-3\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-10-07 12:25:06\",\n	              \"ultimolibrodevuelto\":\"CLIENTE DE JANET \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-17 14:06:24\",\n                  \"fechacreacion\":\"\"}]'),
(157, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 20:38:51', 'Administrador', '[{\"id\":\"135\",\n				  \"nombre\":\"CRISAL SUPERMERCADO \",\n				  \"direccion\":\"AV CHACO \",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"11-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"4\",\n				  \"ultima_compra\":\"2025-10-18 14:03:18\",\n	              \"ultimolibrodevuelto\":\"CLIENTE NUEVO \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-18 17:03:18\",\n                  \"fechacreacion\":\"\"}]'),
(158, 'clientes', 'UPDATE', NULL, NULL, '2025-11-17 22:38:47', 'Administrador', '[{\"id\":\"155\",\n				  \"nombre\":\"POLICONSULTORIO\",\n				  \"direccion\":\"MARCELO T DE ALVEAR 719\",\n				  \"telefono\":\"3704\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-10-17 09:44:45\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-10-17 12:44:45\",\n                  \"fechacreacion\":\"\"}]'),
(159, 'clientes', 'UPDATE', NULL, NULL, '2025-11-18 13:06:17', 'Administrador', '[{\"id\":\"192\",\n				  \"nombre\":\"MARIA ELENA VALLEJOS \",\n				  \"direccion\":\"EDIFICIO MONSEÑOR DE CARLO MARCELO T ALVEAR 240\",\n				  \"telefono\":\"(362) 425-0456\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"20-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-13 10:00:21\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-13 13:00:21\",\n                  \"fechacreacion\":\"\"}]'),
(160, 'clientes', 'UPDATE', NULL, NULL, '2025-11-18 15:00:49', 'Administrador', '[{\"id\":\"242\",\n				  \"nombre\":\"PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)\",\n				  \"direccion\":\"M. LESTANI Y SIERRA DE CORDOBA\",\n				  \"telefono\":\"(362) 406-2537\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-11-12 17:50:33\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-12 20:50:33\",\n                  \"fechacreacion\":\"\"}]'),
(161, 'clientes', 'UPDATE', NULL, NULL, '2025-11-18 22:57:04', 'Administrador', '[{\"id\":\"252\",\n				  \"nombre\":\"SANDRA CARDOZO\",\n				  \"direccion\":\"B SAN CAYETANO MZAC TIRA32 CASA651 \",\n				  \"telefono\":\"(362) 549-7007\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"0\",\n				  \"ultima_compra\":\"\",\n	              \"ultimolibrodevuelto\":\"CLIENTE\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-18 22:53:35\",\n                  \"fechacreacion\":\"\"}]'),
(162, 'clientes', 'UPDATE', NULL, NULL, '2025-11-18 22:59:46', 'Administrador', '[{\"id\":\"242\",\n				  \"nombre\":\"PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)\",\n				  \"direccion\":\"PJE ALVEAR Y PJE CEIBO \",\n				  \"telefono\":\"(362) 406-2537\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-18 12:23:27\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-18 15:23:27\",\n                  \"fechacreacion\":\"\"}]'),
(163, 'clientes', 'UPDATE', NULL, NULL, '2025-11-18 23:00:13', 'Administrador', '[{\"id\":\"242\",\n				  \"nombre\":\"PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)\",\n				  \"direccion\":\"PJE ALVEAR Y PJE CHACO\",\n				  \"telefono\":\"(362) 406-2537\",\n				  \"dni\":\"2020202020\",\n				  \"cuit\":\"20-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"EMAIL@EMAIL.COM\",\n				  \"idtipocliente\":\"1\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-18 12:23:27\",\n	              \"ultimolibrodevuelto\":\".\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-18 22:59:46\",\n                  \"fechacreacion\":\"\"}]'),
(164, 'clientes', 'UPDATE', NULL, NULL, '2025-11-19 12:49:06', 'Administrador', '[{\"id\":\"166\",\n				  \"nombre\":\"ERIKA LOVATO\",\n				  \"direccion\":\"BARRIO JORGE NEWBERY\",\n				  \"telefono\":\"(362) 476-6872\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"__-________-_\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"2\",\n				  \"ultima_compra\":\"2025-11-13 11:52:44\",\n	              \"ultimolibrodevuelto\":\"CLIENTE \",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-11-13 14:52:44\",\n                  \"fechacreacion\":\"\"}]'),
(165, 'ventas', 'ELIMINAR', '{\"id\":568,\"fecha\":\"2025-11-20\",\"codigo\":\"0001-00001708\",\"id_cliente\":254,\"id_vendedor\":65,\"productos\":\"[{\\\"id\\\":\\\"13\\\",\\\"descripcion\\\":\\\"COMBO 10Y10\\\",\\\"codigo\\\":\\\"ALI122\\\",\\\"cantidad\\\":\\\"1\\\",\\\"precio\\\":\\\"25000.00\\\",\\\"descuento\\\":\\\"0.00\\\",\\\"total\\\":\\\"25000.00\\\"}]\",\"impuesto\":0,\"total\":25000,\"adeuda\":0,\"metodo_pago\":\"[{\\\"id\\\":\\\"1\\\",\\\"fecha\\\":\\\"20-11-2025\\\",\\\"tipo\\\":\\\"EFECTIVO\\\",\\\"importe\\\":\\\"25000\\\",\\\"referencia\\\":\\\"EFECTIVO\\\"}]\",\"fechapago\":\"2025-11-20\",\"referenciapago\":\"\",\"observaciones\":\"\"}', '{\"id\":\"568\"}', '2025-11-20 14:06:24', 'Administrador', NULL),
(166, 'clientes', 'UPDATE', NULL, NULL, '2025-11-22 14:44:14', 'Administrador', '[{\"id\":\"134\",\n				  \"nombre\":\"GUSTAVO QUINTANA \",\n				  \"direccion\":\"BARRANQUERAS\",\n				  \"telefono\":\"(111) 111-1111\",\n				  \"dni\":\"1111111111\",\n				  \"cuit\":\"_1-11111111-1\",\n				  \"idivacliente\":\"2\",\n				  \"email\":\"W@W\",\n				  \"idtipocliente\":\"2\",\n				  \"compras\":\"1\",\n				  \"ultima_compra\":\"2025-09-27 13:02:59\",\n	              \"ultimolibrodevuelto\":\"CLIENTE WALTER\",\n				  \"obs\":\"1\",\n				  \"activo\":\"\",\n				  \"obsdel\":\"2025-09-27 16:02:59\",\n                  \"fechacreacion\":\"\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `efectivo` text NOT NULL,
  `tarjeta` text NOT NULL,
  `cheque` text NOT NULL,
  `transferencia` text NOT NULL,
  `cuenta_corriente` text NOT NULL,
  `vale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `fecha`, `efectivo`, `tarjeta`, `cheque`, `transferencia`, `cuenta_corriente`, `vale`) VALUES
(1, '2025-06-07', '0', '0', '0', '0', '0', '0'),
(2, '2025-06-08', '0', '0', '0', '0', '0', '0'),
(3, '2025-06-09', '0', '0', '0', '0', '0', '0'),
(4, '2025-06-15', '0', '0', '0', '0', '0', '0'),
(5, '2025-06-16', '0', '0', '0', '0', '0', '0'),
(6, '2025-06-17', '0', '0', '0', '0', '0', '0'),
(7, '2025-06-30', '0', '0', '0', '0', '0', '0'),
(8, '2025-07-03', '0', '0', '0', '0', '0', '0'),
(9, '2025-07-04', '0', '0', '0', '0', '0', '0'),
(10, '2025-09-04', '2500', '0', '0', '0', '0', '0'),
(11, '2025-09-06', '616000', '0', '0', '0', '0', '0'),
(12, '2025-09-01', '0', '0', '0', '0', '0', '0'),
(13, '2025-09-02', '0', '0', '0', '0', '0', '0'),
(14, '2025-09-03', '0', '0', '0', '0', '0', '0'),
(15, '2025-09-05', '0', '0', '0', '0', '0', '0'),
(16, '2025-09-07', '0', '0', '0', '0', '0', '0'),
(17, '2025-09-08', '12000', '0', '0', '5000', '0', '0'),
(18, '2025-09-09', '49200', '0', '0', '33200', '0', '0'),
(19, '2025-09-10', '181000', '0', '0', '0', '0', '0'),
(20, '2025-09-11', '0', '0', '0', '0', '0', '0'),
(21, '2025-09-12', '168300', '0', '0', '15200', '0', '0'),
(22, '2025-09-13', '14000', '0', '0', '0', '0', '0'),
(23, '2025-09-14', '0', '0', '0', '0', '0', '0'),
(24, '2025-09-15', '33700', '0', '0', '15000', '0', '0'),
(25, '2025-09-16', '40800', '0', '0', '2500', '0', '0'),
(26, '2025-09-17', '54000', '0', '0', '188600', '0', '0'),
(27, '2025-09-18', '50600', '0', '0', '60000', '0', '0'),
(28, '2025-09-19', '295000', '0', '0', '0', '0', '0'),
(29, '2025-09-20', '0', '0', '0', '0', '0', '0'),
(30, '2025-09-21', '0', '0', '0', '0', '0', '0'),
(31, '2025-09-22', '24500', '0', '0', '40500', '0', '0'),
(32, '2025-09-23', '17500', '0', '0', '5000', '0', '0'),
(33, '2025-09-24', '25200', '0', '0', '3000', '0', '0'),
(34, '2025-09-25', '19000', '0', '0', '12100', '0', '0'),
(35, '2025-09-26', '328400', '0', '0', '36300', '0', '0'),
(36, '2025-09-27', '21000', '0', '0', '45000', '69000', '0'),
(37, '2025-09-28', '0', '0', '0', '0', '0', '0'),
(38, '2025-09-29', '0', '0', '0', '0', '0', '0'),
(39, '2025-09-30', '84300', '0', '0', '9000', '9100', '0'),
(40, '2025-08-01', '0', '0', '0', '0', '0', '0'),
(41, '2025-08-02', '0', '0', '0', '0', '0', '0'),
(42, '2025-08-03', '0', '0', '0', '0', '0', '0'),
(43, '2025-08-04', '0', '0', '0', '0', '0', '0'),
(44, '2025-08-05', '0', '0', '0', '0', '0', '0'),
(45, '2025-08-06', '0', '0', '0', '0', '0', '0'),
(46, '2025-08-07', '0', '0', '0', '0', '0', '0'),
(47, '2025-08-08', '0', '0', '0', '0', '0', '0'),
(48, '2025-08-09', '0', '0', '0', '0', '0', '0'),
(49, '2025-08-10', '0', '0', '0', '0', '0', '0'),
(50, '2025-08-11', '0', '0', '0', '0', '0', '0'),
(51, '2025-08-12', '0', '0', '0', '0', '0', '0'),
(52, '2025-08-13', '0', '0', '0', '0', '0', '0'),
(53, '2025-08-14', '0', '0', '0', '0', '0', '0'),
(54, '2025-08-15', '0', '0', '0', '0', '0', '0'),
(55, '2025-08-16', '0', '0', '0', '0', '0', '0'),
(56, '2025-08-17', '0', '0', '0', '0', '0', '0'),
(57, '2025-08-18', '0', '0', '0', '0', '0', '0'),
(58, '2025-08-19', '0', '0', '0', '0', '0', '0'),
(59, '2025-08-20', '0', '0', '0', '0', '0', '0'),
(60, '2025-08-21', '0', '0', '0', '0', '0', '0'),
(61, '2025-08-22', '0', '0', '0', '0', '0', '0'),
(62, '2025-08-23', '0', '0', '0', '0', '0', '0'),
(63, '2025-08-24', '0', '0', '0', '0', '0', '0'),
(64, '2025-08-25', '0', '0', '0', '0', '0', '0'),
(65, '2025-08-26', '0', '0', '0', '0', '0', '0'),
(66, '2025-08-27', '0', '0', '0', '0', '0', '0'),
(67, '2025-08-28', '0', '0', '0', '0', '0', '0'),
(68, '2025-08-29', '0', '0', '0', '0', '0', '0'),
(69, '2025-08-30', '0', '0', '0', '0', '0', '0'),
(70, '2025-08-31', '0', '0', '0', '0', '0', '0'),
(71, '2025-10-01', '69000', '0', '0', '78000', '0', '0'),
(72, '2025-10-02', '56500', '0', '0', '8000', '20000', '0'),
(73, '2025-10-03', '228500', '0', '0', '50800', '0', '0'),
(74, '2025-10-04', '0', '0', '0', '30000', '0', '0'),
(75, '2025-10-05', '0', '0', '0', '0', '0', '0'),
(76, '2025-10-06', '16900', '0', '0', '36000', '0', '0'),
(77, '2025-10-07', '29400', '0', '0', '27000', '0', '0'),
(78, '2025-10-08', '85200', '0', '0', '36100', '0', '0'),
(79, '2025-10-09', '0', '0', '0', '0', '0', '0'),
(80, '2025-10-10', '54000', '0', '0', '73800', '0', '0'),
(81, '2025-10-11', '130300', '0', '0', '238000', '0', '0'),
(82, '2025-10-12', '0', '0', '0', '0', '0', '0'),
(83, '2025-10-13', '0', '0', '0', '0', '0', '0'),
(84, '2025-10-14', '112000', '0', '0', '3000', '0', '0'),
(85, '2025-10-15', '709600', '0', '0', '26700', '0', '0'),
(86, '2025-10-16', '0', '0', '0', '0', '0', '0'),
(87, '2025-10-17', '1178700', '0', '0', '13000', '0', '0'),
(88, '2025-10-18', '76800', '0', '0', '0', '0', '0'),
(89, '2025-10-19', '0', '0', '0', '0', '0', '0'),
(90, '2025-10-20', '120900', '0', '0', '30600', '0', '0'),
(91, '2025-10-21', '751800', '0', '0', '15100', '0', '0'),
(92, '2025-10-22', '409000', '0', '0', '36000', '0', '0'),
(93, '2025-10-23', '22000', '0', '0', '32000', '0', '0'),
(94, '2025-10-24', '151400', '0', '0', '5200', '0', '0'),
(95, '2025-10-25', '67300', '0', '0', '174000', '0', '0'),
(96, '2025-10-26', '0', '0', '0', '0', '0', '0'),
(97, '2025-10-27', '22000', '0', '0', '0', '0', '0'),
(98, '2025-10-28', '99600', '0', '0', '32000', '0', '0'),
(99, '2025-10-29', '78200', '0', '0', '0', '0', '0'),
(100, '2025-10-30', '36400', '0', '0', '42200', '0', '0'),
(101, '2025-10-31', '48900', '0', '0', '25000', '0', '0'),
(102, '2025-11-01', '13000', '0', '0', '52200', '0', '0'),
(103, '2025-11-03', '42400', '0', '150000', '87800', '0', '0'),
(104, '2025-11-02', '0', '0', '0', '0', '0', '0'),
(105, '2025-11-04', '87000', '0', '0', '27000', '0', '0'),
(106, '2025-11-05', '185500', '0', '0', '55500', '0', '0'),
(107, '2025-11-06', '108100', '0', '0', '0', '0', '0'),
(108, '2025-11-07', '50500', '0', '0', '29800', '0', '0'),
(109, '2025-11-08', '100600', '0', '0', '18200', '200000', '0'),
(110, '2025-11-09', '0', '0', '0', '0', '0', '0'),
(111, '2025-11-10', '171100', '0', '0', '10000', '0', '0'),
(112, '2025-11-11', '410100', '0', '0', '47400', '0', '0'),
(113, '2025-11-12', '279900', '0', '0', '9000', '0', '0'),
(114, '2025-11-13', '126900', '0', '0', '5000', '0', '0'),
(115, '2025-11-14', '149000', '0', '0', '35000', '0', '0'),
(116, '2025-11-15', '163000', '0', '0', '0', '0', '0'),
(132, '2025-11-17', '48100', '0', '0', '21000', '0', '0'),
(133, '2025-11-18', '143500', '0', '0', '45900', '0', '0'),
(134, '2025-11-16', '0', '0', '0', '0', '0', '0'),
(135, '2025-11-19', '66000', '0', '0', '16900', '0', '0'),
(136, '2025-11-20', '154900', '0', '0', '12000', '0', '0'),
(137, '2025-11-22', '64800', '0', '0', '27000', '0', '0');

--
-- Disparadores `caja`
--
DELIMITER $$
CREATE TRIGGER `tr_caja_au_movimientos` AFTER UPDATE ON `caja` FOR EACH ROW BEGIN
  DECLARE delta DECIMAL(12,2);

  -- calcular diferencia en efectivo
  SET delta = CAST(NEW.efectivo AS DECIMAL(12,2)) - CAST(OLD.efectivo AS DECIMAL(12,2));

  -- si hay diferencia, registrar movimiento
  IF delta < 0 THEN
    INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
    VALUES (
      NOW(),
      'EGRESO',
      ABS(delta),
      CONCAT(
        'Retiro de caja - Venta N° ', NEW.id,
        ' - Fecha ', DATE_FORMAT(NEW.fecha, '%Y-%m-%d %H:%i:%s')
      )
    );
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_movimientos`
--

CREATE TABLE `caja_movimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` enum('INGRESO','EGRESO') NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `saldo_posterior` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caja_movimientos`
--

INSERT INTO `caja_movimientos` (`id`, `fecha`, `tipo`, `monto`, `concepto`, `saldo_posterior`) VALUES
(1, '2025-10-25 17:20:57', 'INGRESO', 7800.00, 'Ingreso x Venta nro: 366 - Comprobante: 0001-00001508 - EFECTIVO', NULL),
(2, '2025-10-25 17:56:21', 'INGRESO', 19500.00, 'Ingreso x Venta nro: 367 - Comprobante: 0001-00001509 - EFECTIVO', NULL),
(3, '2025-10-25 21:38:00', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 369 - Comprobante: 0001-00001511 - EFECTIVO', NULL),
(4, '2025-10-25 22:14:41', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 370 - Comprobante: 0001-00001512 - EFECTIVO', NULL),
(5, '2025-10-25 22:15:07', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 371 - Comprobante: 0001-00001513 - EFECTIVO', NULL),
(6, '2025-10-25 23:18:24', 'EGRESO', 27000.00, 'Retiro de caja - Venta N° 95 - Fecha 2025-10-25 00:00:00', NULL),
(7, '2025-10-25 21:11:00', 'INGRESO', 13250.00, 'dinero cambio', NULL),
(8, '2025-10-27 15:46:51', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 373 - Comprobante: 0001-00001515 - EFECTIVO', NULL),
(9, '2025-10-27 15:47:15', 'INGRESO', 9000.00, 'Ingreso x Venta nro: 374 - Comprobante: 0001-00001516 - EFECTIVO', NULL),
(10, '2025-10-28 12:48:48', 'EGRESO', 130000.00, 'Gasto efectivo: FUMIGACION. Control de plagas  (ID 70)', NULL),
(11, '2025-10-28 13:25:58', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 375 - Comprobante: 0001-00001517 - EFECTIVO', NULL),
(12, '2025-10-28 13:36:34', 'INGRESO', 10500.00, 'Ingreso x Venta nro: 376 - Comprobante: 0001-00001518 - EFECTIVO', NULL),
(13, '2025-10-28 13:38:16', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 377 - Comprobante: 0001-00001519 - EFECTIVO', NULL),
(14, '2025-10-28 13:43:44', 'INGRESO', 43100.00, 'Ingreso x Venta nro: 378 - Comprobante: 0001-00001520 - EFECTIVO', NULL),
(15, '2025-10-28 13:44:19', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 379 - Comprobante: 0001-00001521 - EFECTIVO', NULL),
(16, '2025-10-29 15:22:41', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 382 - Comprobante: 0001-00001524 - EFECTIVO', NULL),
(17, '2025-10-29 15:24:23', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 383 - Comprobante: 0001-00001525 - EFECTIVO', NULL),
(18, '2025-10-29 15:24:44', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 384 - Comprobante: 0001-00001526 - EFECTIVO', NULL),
(19, '2025-10-29 15:30:50', 'INGRESO', 24000.00, 'Ingreso x Venta nro: 385 - Comprobante: 0001-00001527 - EFECTIVO', NULL),
(20, '2025-10-29 15:31:10', 'EGRESO', 24000.00, 'Retiro de caja - Venta N° 99 - Fecha 2025-10-29 00:00:00', NULL),
(21, '2025-10-29 15:31:33', 'INGRESO', 26400.00, 'Ingreso x Venta nro: 386 - Comprobante: 0001-00001528 - EFECTIVO', NULL),
(22, '2025-10-29 15:32:26', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 387 - Comprobante: 0001-00001529 - EFECTIVO', NULL),
(23, '2025-10-29 15:38:57', 'EGRESO', 13000.00, 'Retiro de caja - Venta N° 99 - Fecha 2025-10-29 00:00:00', NULL),
(24, '2025-10-29 15:39:18', 'INGRESO', 14300.00, 'Ingreso x Venta nro: 388 - Comprobante: 0001-00001530 - EFECTIVO', NULL),
(25, '2025-10-29 15:39:52', 'INGRESO', 15000.00, 'Ingreso x Venta nro: 389 - Comprobante: 0001-00001531 - EFECTIVO', NULL),
(26, '2025-10-29 15:47:54', 'EGRESO', 10115.36, 'Gasto efectivo: PAGO SAMEEP (ID 71)', NULL),
(27, '2025-10-29 15:48:23', 'EGRESO', 10000.00, 'Gasto efectivo: MANCUERNAS (ID 72)', NULL),
(28, '2025-10-29 15:49:15', 'EGRESO', 30000.00, 'Gasto efectivo: DIESEL  (ID 73)', NULL),
(29, '2025-10-29 15:50:12', 'EGRESO', 72000.00, 'Gasto efectivo: ACEITE UREA  JUMPY (ID 74)', NULL),
(30, '2025-10-29 15:55:57', 'EGRESO', 61130.00, 'Gasto efectivo: ACEITE JUMPY  (ID 75)', NULL),
(31, '2025-10-30 14:41:02', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 390 - Comprobante: 0001-00001532 - EFECTIVO', NULL),
(32, '2025-10-30 14:42:44', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 391 - Comprobante: 0001-00001533 - EFECTIVO', NULL),
(33, '2025-10-30 14:45:12', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 392 - Comprobante: 0001-00001534 - EFECTIVO', NULL),
(34, '2025-10-30 19:50:43', 'EGRESO', 288105.00, 'Gasto efectivo: ARREGLOS DE INFRAESTRUCTURA  (ID 76)', NULL),
(35, '2025-10-31 12:03:48', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 396 - Comprobante: 0001-00001538 - EFECTIVO', NULL),
(36, '2025-10-31 12:07:13', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 397 - Comprobante: 0001-00001539 - EFECTIVO', NULL),
(37, '2025-10-31 12:10:01', 'INGRESO', 7200.00, 'Ingreso x Venta nro: 399 - Comprobante: 0001-00001541 - EFECTIVO', NULL),
(38, '2025-10-31 14:15:56', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 400 - Comprobante: 0001-00001542 - EFECTIVO', NULL),
(39, '2025-10-31 15:59:20', 'INGRESO', 5200.00, 'Ingreso x Venta nro: 401 - Comprobante: 0001-00001543 - EFECTIVO', NULL),
(40, '2025-11-01 12:12:46', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 406 - Comprobante: 0001-00001548 - EFECTIVO', NULL),
(41, '2025-11-01 15:26:08', 'EGRESO', 5000.00, 'Gasto efectivo: bolosas de residuo (ID 77)', NULL),
(42, '2025-11-03 11:26:47', 'EGRESO', 19999.00, 'Gasto efectivo: combustible  (ID 78)', NULL),
(43, '2025-11-03 11:59:59', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 409 - Comprobante: 0001-00001551 - EFECTIVO', NULL),
(44, '2025-11-03 12:45:41', 'INGRESO', 6200.00, 'Ingreso x Venta nro: 411 - Comprobante: 0001-00001553 - EFECTIVO', NULL),
(45, '2025-11-03 13:52:30', 'EGRESO', 6200.00, 'Retiro de caja - Venta N° 103 - Fecha 2025-11-03 00:00:00', NULL),
(46, '2025-11-03 15:40:03', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 415 - Comprobante: 0001-00001557 - EFECTIVO', NULL),
(47, '2025-11-03 15:41:17', 'INGRESO', 18200.00, 'Ingreso x Venta nro: 416 - Comprobante: 0001-00001558 - EFECTIVO', NULL),
(48, '2025-11-03 15:45:29', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 417 - Comprobante: 0001-00001559 - EFECTIVO', NULL),
(49, '2025-11-03 15:49:25', 'INGRESO', 5200.00, 'Ingreso x Venta nro: 418 - Comprobante: 0001-00001560 - EFECTIVO', NULL),
(50, '2025-11-04 11:59:46', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 421 - Comprobante: 0001-00001563 - EFECTIVO', NULL),
(51, '2025-11-04 12:34:29', 'EGRESO', 9999.93, 'Gasto efectivo: Carga de combustible (ID 79)', NULL),
(52, '2025-11-04 12:35:02', 'EGRESO', 14685.22, 'Gasto efectivo: Combustible de camioneta (ID 80)', NULL),
(53, '2025-11-04 14:00:11', 'INGRESO', 75000.00, 'Ingreso x Venta nro: 422 - Comprobante: 0001-00001564 - EFECTIVO', NULL),
(54, '2025-11-04 14:02:29', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 423 - Comprobante: 0001-00001565 - EFECTIVO', NULL),
(55, '2025-11-04 14:03:34', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 424 - Comprobante: 0001-00001566 - EFECTIVO', NULL),
(56, '2025-11-04 19:50:20', 'EGRESO', 6000.00, 'Retiro de caja - Venta N° 105 - Fecha 2025-11-04 00:00:00', NULL),
(57, '2025-11-04 21:32:58', 'EGRESO', 6500.00, 'Retiro de caja - Venta N° 105 - Fecha 2025-11-04 00:00:00', NULL),
(58, '2025-11-05 13:36:36', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 430 - Comprobante: 0001-00001572 - EFECTIVO', NULL),
(59, '2025-11-05 15:12:19', 'EGRESO', 6000.00, 'Retiro de caja - Venta N° 106 - Fecha 2025-11-05 00:00:00', NULL),
(60, '2025-11-05 19:54:47', 'INGRESO', 9000.00, 'Ingreso x Venta nro: 431 - Comprobante: 0001-00001573 - EFECTIVO', NULL),
(61, '2025-11-05 19:55:29', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 432 - Comprobante: 0001-00001574 - EFECTIVO', NULL),
(62, '2025-11-05 19:56:24', 'INGRESO', 15600.00, 'Ingreso x Venta nro: 433 - Comprobante: 0001-00001575 - EFECTIVO', NULL),
(63, '2025-11-05 20:05:29', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 434 - Comprobante: 0001-00001576 - EFECTIVO', NULL),
(64, '2025-11-05 20:06:36', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 435 - Comprobante: 0001-00001577 - EFECTIVO', NULL),
(65, '2025-11-05 20:21:31', 'INGRESO', 3900.00, 'Ingreso x Venta nro: 438 - Comprobante: 0001-00001580 - EFECTIVO', NULL),
(66, '2025-11-05 21:33:52', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 440 - Comprobante: 0001-00001582 - EFECTIVO', NULL),
(67, '2025-11-05 22:08:00', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 441 - Comprobante: 0001-00001583 - EFECTIVO', NULL),
(68, '2025-11-05 22:19:38', 'INGRESO', 105000.00, 'Ingreso x Venta nro: 442 - Comprobante: 0001-00001584 - EFECTIVO', NULL),
(69, '2025-11-06 11:31:22', 'EGRESO', 1250.00, 'Gasto efectivo: compra de detergente  (ID 81)', NULL),
(70, '2025-11-06 12:37:47', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 443 - Comprobante: 0001-00001585 - EFECTIVO', NULL),
(71, '2025-11-06 13:32:41', 'INGRESO', 32600.00, 'Ingreso x Venta nro: 444 - Comprobante: 0001-00001586 - EFECTIVO', NULL),
(72, '2025-11-06 13:39:04', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 445 - Comprobante: 0001-00001587 - EFECTIVO', NULL),
(73, '2025-11-06 15:15:27', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 446 - Comprobante: 0001-00001588 - EFECTIVO', NULL),
(74, '2025-11-06 15:18:59', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 447 - Comprobante: 0001-00001589 - EFECTIVO', NULL),
(75, '2025-11-06 15:33:36', 'EGRESO', 20000.00, 'Gasto efectivo: Retiro Efectivo  (ID 82)', NULL),
(76, '2025-11-06 15:38:32', 'EGRESO', 43000.00, 'Gasto efectivo: Compra corralon ferreteria Walter (ID 83)', NULL),
(77, '2025-11-06 21:26:21', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 448 - Comprobante: 0001-00001590 - EFECTIVO', NULL),
(78, '2025-11-06 22:34:10', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 449 - Comprobante: 0001-00001591 - EFECTIVO', NULL),
(79, '2025-11-06 22:49:29', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 450 - Comprobante: 0001-00001592 - EFECTIVO', NULL),
(80, '2025-11-07 12:45:32', 'EGRESO', 42000.00, 'Gasto efectivo: Compra Cepillo limpia bidones x 2 unidades (ID 84)', NULL),
(81, '2025-11-07 12:46:04', 'EGRESO', 2000.00, 'Gasto efectivo: carga de combustible moto (ID 85)', NULL),
(82, '2025-11-07 12:47:05', 'EGRESO', 3700.00, 'Gasto efectivo: Uber Lisandro (ID 86)', NULL),
(83, '2025-11-07 13:22:24', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 452 - Comprobante: 0001-00001594 - EFECTIVO', NULL),
(84, '2025-11-07 13:39:09', 'EGRESO', 68000.00, 'Gasto efectivo: Arreglo carrito reparto (ID 87)', NULL),
(85, '2025-11-07 14:19:35', 'EGRESO', 93998.96, 'Gasto efectivo: Compra Aceite y filtro de aceite Citroen Jumpy  (ID 88)', NULL),
(86, '2025-11-07 20:35:26', 'EGRESO', 2750.00, 'Gasto efectivo: Compra Caja de broches 24/6 (1000 u)  (ID 89)', NULL),
(87, '2025-11-07 20:37:52', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 453 - Comprobante: 0001-00001595 - EFECTIVO', NULL),
(88, '2025-11-07 20:45:07', 'INGRESO', 17800.00, 'Ingreso x Venta nro: 454 - Comprobante: 0001-00001596 - EFECTIVO', NULL),
(89, '2025-11-07 20:45:44', 'EGRESO', 17800.00, 'Retiro de caja - Venta N° 108 - Fecha 2025-11-07 00:00:00', NULL),
(90, '2025-11-07 22:31:17', 'EGRESO', 25155.90, 'Gasto efectivo: Filtro de Aceite Jumpy (ID 90)', NULL),
(91, '2025-11-07 22:34:10', 'INGRESO', 19500.00, 'Ingreso x Venta nro: 456 - Comprobante: 0001-00001598 - EFECTIVO', NULL),
(92, '2025-11-07 22:39:29', 'EGRESO', 1400.00, 'Gasto efectivo: Uber Lisandro Mecanico Moto (ID 91)', NULL),
(93, '2025-11-08 11:03:09', 'EGRESO', 60000.00, 'Gasto efectivo: Carga nafta  (ID 92)', NULL),
(94, '2025-11-08 14:15:45', 'EGRESO', 3000.00, 'Gasto efectivo: Compra grapas 14mm para engrapadora (ID 93)', NULL),
(95, '2025-11-08 14:19:40', 'EGRESO', 2700.00, 'Gasto efectivo: Uber Hector/Jenny  (ID 94)', NULL),
(96, '2025-11-08 14:21:06', 'EGRESO', 3000.00, 'Gasto efectivo: Uber Hector/Jenny  (ID 95)', NULL),
(97, '2025-11-08 14:43:22', 'EGRESO', 378901.00, 'Gasto efectivo: PAGO ALQUILER (ID 96)', NULL),
(98, '2025-11-08 16:14:55', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 457 - Comprobante: 0001-00001599 - EFECTIVO', NULL),
(99, '2025-11-08 16:16:00', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 458 - Comprobante: 0001-00001600 - EFECTIVO', NULL),
(100, '2025-11-08 16:20:11', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 459 - Comprobante: 0001-00001601 - EFECTIVO', NULL),
(101, '2025-11-08 16:20:11', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 459 - Comprobante: 0001-00001601 - EFECTIVO', NULL),
(102, '2025-11-08 16:26:37', 'INGRESO', 5000.00, 'Ingreso x Venta nro: 461 - Comprobante: 0001-00001603 - EFECTIVO', NULL),
(103, '2025-11-08 16:26:38', 'INGRESO', 5000.00, 'Ingreso x Venta nro: 462 - Comprobante: 0001-00001603 - EFECTIVO', NULL),
(104, '2025-11-08 16:28:28', 'INGRESO', 24000.00, 'Ingreso x Venta nro: 463 - Comprobante: 0001-00001604 - EFECTIVO', NULL),
(105, '2025-11-08 16:32:15', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 464 - Comprobante: 0001-00001605 - EFECTIVO', NULL),
(106, '2025-11-08 16:53:22', 'INGRESO', 10200.00, 'Ingreso x Venta nro: 465 - Comprobante: 0001-00001606 - EFECTIVO', NULL),
(107, '2025-11-10 14:59:37', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 468 - Comprobante: 0001-00001609 - EFECTIVO', NULL),
(108, '2025-11-10 15:12:09', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 469 - Comprobante: 0001-00001610 - EFECTIVO', NULL),
(109, '2025-11-10 15:16:33', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 470 - Comprobante: 0001-00001611 - EFECTIVO', NULL),
(110, '2025-11-10 15:20:18', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 471 - Comprobante: 0001-00001612 - EFECTIVO', NULL),
(111, '2025-11-10 20:06:46', 'INGRESO', 20000.00, 'Ingreso x Venta nro: 472 - Comprobante: 0001-00001613 - EFECTIVO', NULL),
(112, '2025-11-10 20:10:48', 'INGRESO', 84000.00, 'Ingreso x Venta nro: 473 - Comprobante: 0001-00001614 - EFECTIVO', NULL),
(113, '2025-11-10 20:13:32', 'INGRESO', 12500.00, 'Ingreso x Venta nro: 474 - Comprobante: 0001-00001615 - EFECTIVO', NULL),
(114, '2025-11-10 21:30:25', 'INGRESO', 3900.00, 'Ingreso x Venta nro: 475 - Comprobante: 0001-00001616 - EFECTIVO', NULL),
(115, '2025-11-10 21:50:36', 'INGRESO', 14300.00, 'Ingreso x Venta nro: 476 - Comprobante: 0001-00001617 - EFECTIVO', NULL),
(116, '2025-11-10 22:20:47', 'EGRESO', 60000.00, 'Gasto efectivo: Arreglo de cerradura con 3 llaves (ID 97)', NULL),
(117, '2025-11-11 12:05:14', 'EGRESO', 29999.98, 'Gasto efectivo: Carga Combustible  (ID 98)', NULL),
(118, '2025-11-11 13:04:01', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 477 - Comprobante: 0001-00001618 - EFECTIVO', NULL),
(119, '2025-11-11 13:40:57', 'INGRESO', 150000.00, 'Ingreso x Venta nro: 478 - Comprobante: 0001-00001619 - EFECTIVO', NULL),
(120, '2025-11-11 13:54:40', 'INGRESO', 30000.00, 'Ingreso x Venta nro: 480 - Comprobante: 0001-00001621 - EFECTIVO', NULL),
(121, '2025-11-11 13:55:36', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 481 - Comprobante: 0001-00001622 - EFECTIVO', NULL),
(122, '2025-11-11 14:17:31', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 482 - Comprobante: 0001-00001623 - EFECTIVO', NULL),
(123, '2025-11-11 14:24:34', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 483 - Comprobante: 0001-00001624 - EFECTIVO', NULL),
(124, '2025-11-11 14:26:16', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 484 - Comprobante: 0001-00001625 - EFECTIVO', NULL),
(125, '2025-11-11 19:20:21', 'EGRESO', 6500.00, 'Gasto efectivo: Carga Combustible moto 110 (ID 99)', NULL),
(126, '2025-11-11 19:24:35', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 486 - Comprobante: 0001-00001627 - EFECTIVO', NULL),
(127, '2025-11-11 20:29:08', 'INGRESO', 19500.00, 'Ingreso x Venta nro: 487 - Comprobante: 0001-00001628 - EFECTIVO', NULL),
(128, '2025-11-11 21:09:20', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 489 - Comprobante: 0001-00001630 - EFECTIVO', NULL),
(129, '2025-11-11 21:57:17', 'INGRESO', 150000.00, 'Ingreso x Venta nro: 490 - Comprobante: 0001-00001631 - EFECTIVO', NULL),
(130, '2025-11-11 22:58:09', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 492 - Comprobante: 0001-00001633 - EFECTIVO', NULL),
(131, '2025-11-12 11:16:44', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 493 - Comprobante: 0001-00001634 - EFECTIVO', NULL),
(132, '2025-11-12 14:11:13', 'INGRESO', 4800.00, 'Ingreso x Venta nro: 494 - Comprobante: 0001-00001635 - EFECTIVO', NULL),
(133, '2025-11-12 14:13:01', 'EGRESO', 142500.00, 'Gasto efectivo: 5 Chombas pique algodon  (ID 100)', NULL),
(134, '2025-11-12 19:46:15', 'INGRESO', 26000.00, 'Ingreso x Venta nro: 495 - Comprobante: 0001-00001636 - EFECTIVO', NULL),
(135, '2025-11-12 19:47:07', 'INGRESO', 24000.00, 'Ingreso x Venta nro: 496 - Comprobante: 0001-00001637 - EFECTIVO', NULL),
(136, '2025-11-12 19:49:29', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 497 - Comprobante: 0001-00001638 - EFECTIVO', NULL),
(137, '2025-11-12 19:51:09', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 498 - Comprobante: 0001-00001639 - EFECTIVO', NULL),
(138, '2025-11-12 19:54:55', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 499 - Comprobante: 0001-00001640 - EFECTIVO', NULL),
(139, '2025-11-12 19:54:55', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 499 - Comprobante: 0001-00001640 - EFECTIVO', NULL),
(140, '2025-11-12 19:58:07', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 500 - Comprobante: 0001-00001641 - EFECTIVO', NULL),
(141, '2025-11-12 20:00:25', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 501 - Comprobante: 0001-00001642 - EFECTIVO', NULL),
(142, '2025-11-12 20:00:25', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 501 - Comprobante: 0001-00001642 - EFECTIVO', NULL),
(143, '2025-11-12 20:01:04', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 502 - Comprobante: 0001-00001643 - EFECTIVO', NULL),
(144, '2025-11-12 20:21:31', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 503 - Comprobante: 0001-00001644 - EFECTIVO', NULL),
(145, '2025-11-12 20:50:33', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 504 - Comprobante: 0001-00001645 - EFECTIVO', NULL),
(146, '2025-11-13 11:30:33', 'EGRESO', 3000.00, 'Gasto efectivo: compra de detergente  (ID 101)', NULL),
(147, '2025-11-13 12:03:32', 'EGRESO', 300009.96, 'Gasto efectivo: Carga de combustible (ID 102)', NULL),
(148, '2025-11-13 12:37:14', 'EGRESO', 23498.98, 'Gasto efectivo: Compra insumos de limpieza (ID 103)', NULL),
(149, '2025-11-13 12:57:50', 'INGRESO', 17000.00, 'Ingreso x Venta nro: 506 - Comprobante: 0001-00001647 - EFECTIVO', NULL),
(150, '2025-11-13 14:28:44', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 508 - Comprobante: 0001-00001649 - EFECTIVO', NULL),
(151, '2025-11-13 14:28:44', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 509 - Comprobante: 0001-00001649 - EFECTIVO', NULL),
(152, '2025-11-13 14:52:44', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 510 - Comprobante: 0001-00001650 - EFECTIVO', NULL),
(153, '2025-11-13 14:55:09', 'EGRESO', 25000.00, 'Retiro de caja - Venta N° 114 - Fecha 2025-11-13 00:00:00', NULL),
(154, '2025-11-13 20:01:41', 'INGRESO', 10000.00, 'Ingreso x Venta nro: 511 - Comprobante: 0001-00001651 - EFECTIVO', NULL),
(155, '2025-11-13 20:05:14', 'INGRESO', 7500.00, 'Ingreso x Venta nro: 512 - Comprobante: 0001-00001652 - EFECTIVO', NULL),
(156, '2025-11-13 20:06:50', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 513 - Comprobante: 0001-00001653 - EFECTIVO', NULL),
(157, '2025-11-13 20:14:41', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 514 - Comprobante: 0001-00001654 - EFECTIVO', NULL),
(158, '2025-11-13 20:23:58', 'EGRESO', 90000.00, 'Gasto efectivo: FUMIGACION. Control de plagas  (ID 104)', NULL),
(159, '2025-11-13 20:24:36', 'EGRESO', 12000.00, 'Gasto efectivo: Cemento x 2 (ID 105)', NULL),
(160, '2025-11-13 20:25:29', 'EGRESO', 36500.00, 'Gasto efectivo: Camara de inspección (ID 106)', NULL),
(161, '2025-11-13 21:47:27', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 515 - Comprobante: 0001-00001655 - EFECTIVO', NULL),
(162, '2025-11-13 22:20:20', 'INGRESO', 16900.00, 'Ingreso x Venta nro: 516 - Comprobante: 0001-00001656 - EFECTIVO', NULL),
(163, '2025-11-13 23:01:11', 'INGRESO', 3900.00, 'Ingreso x Venta nro: 517 - Comprobante: 0001-00001657 - EFECTIVO', NULL),
(164, '2025-11-14 13:04:11', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 519 - Comprobante: 0001-00001659 - EFECTIVO', NULL),
(165, '2025-11-14 13:48:37', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 521 - Comprobante: 0001-00001661 - EFECTIVO', NULL),
(166, '2025-11-14 14:09:05', 'EGRESO', 10000.00, 'Gasto efectivo: g1 (ID 108)', NULL),
(167, '2025-11-14 11:09:25', 'INGRESO', 10000.00, 'Restitución por eliminación de gasto: g1 (ID 108)', NULL),
(168, '2025-11-14 14:10:04', 'EGRESO', 10000.00, 'Gasto efectivo: g4 (ID 109)', NULL),
(169, '2025-11-14 11:10:14', 'INGRESO', 10000.00, 'Restitución por eliminación de gasto: g4 (ID 109)', NULL),
(170, '2025-11-14 20:04:28', 'INGRESO', 36700.00, 'Ingreso x Venta nro: 522 - Comprobante: 0001-00001662 - EFECTIVO', NULL),
(171, '2025-11-14 20:05:29', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 523 - Comprobante: 0001-00001663 - EFECTIVO', NULL),
(172, '2025-11-14 20:07:59', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 524 - Comprobante: 0001-00001664 - EFECTIVO', NULL),
(173, '2025-11-14 20:15:01', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 525 - Comprobante: 0001-00001665 - EFECTIVO', NULL),
(174, '2025-11-14 21:51:33', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 526 - Comprobante: 0001-00001666 - EFECTIVO', NULL),
(175, '2025-11-14 21:55:37', 'INGRESO', 7800.00, 'Ingreso x Venta nro: 527 - Comprobante: 0001-00001667 - EFECTIVO', NULL),
(176, '2025-11-14 22:30:17', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 528 - Comprobante: 0001-00001668 - EFECTIVO', NULL),
(177, '2025-11-15 12:31:16', 'EGRESO', 10000.00, 'Gasto efectivo: Combustible de camioneta (ID 111)', NULL),
(178, '2025-11-15 12:31:54', 'EGRESO', 40000.00, 'Gasto efectivo: Materiales Sanitarios (ID 112)', NULL),
(179, '2025-11-15 14:06:16', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 529 - Comprobante: 0001-00001669 - EFECTIVO', NULL),
(180, '2025-11-15 14:12:39', 'INGRESO', 150000.00, 'Ingreso x Venta nro: 530 - Comprobante: 0001-00001670 - EFECTIVO', NULL),
(181, '2025-11-17 12:28:15', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 531 - Comprobante: 0001-00001671 - EFECTIVO', NULL),
(182, '2025-11-17 12:29:23', 'INGRESO', 2600.00, 'Ingreso x Venta nro: 532 - Comprobante: 0001-00001672 - EFECTIVO', NULL),
(183, '2025-11-17 12:30:26', 'INGRESO', 3900.00, 'Ingreso x Venta nro: 533 - Comprobante: 0001-00001673 - EFECTIVO', NULL),
(184, '2025-11-17 12:30:58', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 534 - Comprobante: 0001-00001674 - EFECTIVO', NULL),
(185, '2025-11-17 12:45:27', 'EGRESO', 30000.00, 'Gasto efectivo: Almuerzo de personal (ID 114)', NULL),
(186, '2025-11-17 12:56:37', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 535 - Comprobante: 0001-00001675 - EFECTIVO', NULL),
(187, '2025-11-17 13:11:09', 'EGRESO', 6500.00, 'Gasto efectivo: Carga combustible zanella zr (ID 115)', NULL),
(188, '2025-11-17 10:34:54', 'EGRESO', 66850.71, 'Ajuste para dejar la caja arqueada desde hoy', NULL),
(189, '2025-11-17 22:55:53', 'INGRESO', 15600.00, 'Ingreso x Venta nro: 538 - Comprobante: 0001-00001678 - EFECTIVO', NULL),
(190, '2025-11-18 11:34:44', 'INGRESO', 19500.00, 'Ingreso x Venta nro: 539 - Comprobante: 0001-00001679 - EFECTIVO', NULL),
(191, '2025-11-18 11:55:18', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 540 - Comprobante: 0001-00001680 - EFECTIVO', NULL),
(192, '2025-11-18 12:11:30', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 541 - Comprobante: 0001-00001681 - EFECTIVO', NULL),
(193, '2025-11-18 12:33:43', 'INGRESO', 9000.00, 'Ingreso x Venta nro: 542 - Comprobante: 0001-00001682 - EFECTIVO', NULL),
(194, '2025-11-18 14:15:38', 'INGRESO', 9000.00, 'Ingreso x Venta nro: 544 - Comprobante: 0001-00001684 - EFECTIVO', NULL),
(195, '2025-11-18 14:22:17', 'INGRESO', 27000.00, 'Ingreso x Venta nro: 546 - Comprobante: 0001-00001686 - EFECTIVO', NULL),
(196, '2025-11-18 15:04:25', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 547 - Comprobante: 0001-00001687 - EFECTIVO', NULL),
(197, '2025-11-18 15:05:01', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 548 - Comprobante: 0001-00001688 - EFECTIVO', NULL),
(198, '2025-11-18 15:23:27', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 549 - Comprobante: 0001-00001689 - EFECTIVO', NULL),
(199, '2025-11-18 19:24:26', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 551 - Comprobante: 0001-00001691 - EFECTIVO', NULL),
(200, '2025-11-18 19:35:08', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 552 - Comprobante: 0001-00001692 - EFECTIVO', NULL),
(201, '2025-11-18 21:29:09', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 554 - Comprobante: 0001-00001694 - EFECTIVO', NULL),
(202, '2025-11-18 22:11:26', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 555 - Comprobante: 0001-00001695 - EFECTIVO', NULL),
(203, '2025-11-18 22:38:41', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 556 - Comprobante: 0001-00001696 - EFECTIVO', NULL),
(204, '2025-11-18 22:49:40', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 557 - Comprobante: 0001-00001697 - EFECTIVO', NULL),
(205, '2025-11-18 23:15:36', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 558 - Comprobante: 0001-00001698 - EFECTIVO', NULL),
(206, '2025-11-19 12:47:06', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 559 - Comprobante: 0001-00001699 - EFECTIVO', NULL),
(207, '2025-11-19 12:56:42', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 560 - Comprobante: 0001-00001700 - EFECTIVO', NULL),
(208, '2025-11-19 13:32:17', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 562 - Comprobante: 0001-00001702 - EFECTIVO', NULL),
(209, '2025-11-19 14:13:08', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 563 - Comprobante: 0001-00001703 - EFECTIVO', NULL),
(210, '2025-11-19 14:42:43', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 564 - Comprobante: 0001-00001704 - EFECTIVO', NULL),
(211, '2025-11-19 20:19:45', 'EGRESO', 25000.00, 'Gasto efectivo: Compra precintos x 1000 unidades (ID 119)', NULL),
(212, '2025-11-19 20:21:03', 'EGRESO', 30010.08, 'Gasto efectivo: Combustible de camioneta (ID 120)', NULL),
(213, '2025-11-19 20:21:38', 'EGRESO', 10600.00, 'Gasto efectivo: insumo libreria  (ID 121)', NULL),
(214, '2025-11-19 21:42:38', 'EGRESO', 28633.05, 'Gasto efectivo: Manguera flotante  (ID 122)', NULL),
(215, '2025-11-19 21:43:36', 'EGRESO', 16500.00, 'Gasto efectivo: Saca hojas vulcano (ID 123)', NULL),
(216, '2025-11-19 21:47:18', 'EGRESO', 80000.00, 'Gasto efectivo: Combustible HECTOR (CU) (ID 124)', NULL),
(217, '2025-11-19 21:48:02', 'EGRESO', 20000.00, 'Gasto efectivo: gastos varios WALTER (ID 125)', NULL),
(218, '2025-11-19 18:48:46', 'EGRESO', 20000.00, 'Descuento por cambio a método efectivo: EXTRACCION DE CAJA GRANDE  (ID 117)', NULL),
(219, '2025-11-19 22:47:22', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 566 - Comprobante: 0001-00001706 - EFECTIVO', NULL),
(220, '2025-11-19 22:53:38', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 567 - Comprobante: 0001-00001707 - EFECTIVO', NULL),
(221, '2025-11-20 11:14:41', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 568 - Comprobante: 0001-00001708 - EFECTIVO', NULL),
(222, '2025-11-20 11:16:01', 'INGRESO', 11000.00, 'Ingreso x Venta nro: 569 - Comprobante: 0001-00001709 - EFECTIVO', NULL),
(223, '2025-11-20 14:06:24', 'EGRESO', 25000.00, 'Retiro de caja - Venta N° 136 - Fecha 2025-11-20 00:00:00', NULL),
(224, '2025-11-20 14:07:22', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 570 - Comprobante: 0001-00001710 - EFECTIVO', NULL),
(225, '2025-11-20 14:21:35', 'INGRESO', 17500.00, 'Ingreso x Venta nro: 571 - Comprobante: 0001-00001711 - EFECTIVO', NULL),
(226, '2025-11-20 14:45:27', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 572 - Comprobante: 0001-00001712 - EFECTIVO', NULL),
(227, '2025-11-20 14:46:13', 'EGRESO', 11000.00, 'Gasto efectivo: cuchara de albañil (ID 126)', NULL),
(228, '2025-11-20 14:46:32', 'EGRESO', 30000.00, 'Gasto efectivo: com (ID 127)', NULL),
(229, '2025-11-20 15:00:19', 'EGRESO', 2300.00, 'Gasto efectivo: Motouber envio etiquetas desde Grafica del nea (ID 128)', NULL),
(230, '2025-11-20 21:14:14', 'INGRESO', 10400.00, 'Ingreso x Venta nro: 573 - Comprobante: 0001-00001713 - EFECTIVO', NULL),
(231, '2025-11-20 21:48:11', 'INGRESO', 59000.00, 'Ingreso x Venta nro: 575 - Comprobante: 0001-00001715 - EFECTIVO', NULL),
(232, '2025-11-20 22:09:53', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 576 - Comprobante: 0001-00001716 - EFECTIVO', NULL),
(233, '2025-11-20 22:50:32', 'INGRESO', 6000.00, 'Ingreso x Venta nro: 577 - Comprobante: 0001-00001717 - EFECTIVO', NULL),
(234, '2025-11-21 12:00:41', 'INGRESO', 7800.00, 'Ingreso x Venta nro: 580 - Comprobante: 0001-00001720 - EFECTIVO', NULL),
(235, '2025-11-21 13:21:15', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 581 - Comprobante: 0001-00001721 - EFECTIVO', NULL),
(236, '2025-11-21 13:36:18', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 582 - Comprobante: 0001-00001722 - EFECTIVO', NULL),
(237, '2025-11-21 14:09:48', 'INGRESO', 37600.00, 'Ingreso x Venta nro: 583 - Comprobante: 0001-00001723 - EFECTIVO', NULL),
(238, '2025-11-21 14:54:14', 'INGRESO', 35700.00, 'Ingreso x Venta nro: 584 - Comprobante: 0001-00001724 - EFECTIVO', NULL),
(239, '2025-11-21 15:09:56', 'INGRESO', 308000.00, 'Ingreso x Venta nro: 586 - Comprobante: 0001-00001726 - EFECTIVO', NULL),
(240, '2025-11-21 15:11:00', 'EGRESO', 100000.00, 'Gasto efectivo: Combustible de camioneta (ID 129)', NULL),
(241, '2025-11-21 15:11:50', 'EGRESO', 8700.00, 'Gasto efectivo: planchuela metal (ID 130)', NULL),
(242, '2025-11-21 21:25:18', 'INGRESO', 6500.00, 'Ingreso x Venta nro: 587 - Comprobante: 0001-00001727 - EFECTIVO', NULL),
(243, '2025-11-21 21:26:53', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 588 - Comprobante: 0001-00001728 - EFECTIVO', NULL),
(244, '2025-11-21 21:48:58', 'INGRESO', 12000.00, 'Ingreso x Venta nro: 589 - Comprobante: 0001-00001729 - EFECTIVO', NULL),
(245, '2025-11-22 11:41:56', 'EGRESO', 8000.00, 'Gasto efectivo: carga credito telefono  (ID 131)', NULL),
(246, '2025-11-22 11:43:04', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 590 - Comprobante: 0001-00001730 - EFECTIVO', NULL),
(247, '2025-11-22 11:43:04', 'INGRESO', 0.00, 'Ingreso x Venta nro: 590 - Comprobante: 0001-00001730 - EFECTIVO', NULL),
(248, '2025-11-22 12:12:47', 'EGRESO', 10000.00, 'Gasto efectivo: combustible de moto (ID 132)', NULL),
(249, '2025-11-22 12:44:27', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 591 - Comprobante: 0001-00001731 - EFECTIVO', NULL),
(250, '2025-11-22 12:45:29', 'INGRESO', 3000.00, 'Ingreso x Venta nro: 592 - Comprobante: 0001-00001732 - EFECTIVO', NULL),
(251, '2025-11-22 14:40:42', 'INGRESO', 2600.00, 'Ingreso x Venta nro: 593 - Comprobante: 0001-00001733 - EFECTIVO', NULL),
(252, '2025-11-22 14:42:24', 'INGRESO', 13000.00, 'Ingreso x Venta nro: 594 - Comprobante: 0001-00001734 - EFECTIVO', NULL),
(253, '2025-11-22 14:44:46', 'INGRESO', 25000.00, 'Ingreso x Venta nro: 595 - Comprobante: 0001-00001735 - EFECTIVO', NULL),
(254, '2025-11-22 14:45:43', 'EGRESO', 3200.00, 'Gasto efectivo: Rodillo x 2 (ID 133)', NULL),
(255, '2025-11-22 15:37:23', 'INGRESO', 9100.00, 'Ingreso x Venta nro: 596 - Comprobante: 0001-00001736 - EFECTIVO', NULL),
(256, '2025-11-22 17:05:33', 'EGRESO', 50000.00, 'Gasto efectivo: Combustible JUMPY (ID 134)', NULL),
(257, '2025-11-22 17:06:31', 'EGRESO', 51000.00, 'Gasto efectivo: Materiales Pintura (ID 135)', NULL),
(258, '2025-11-22 14:18:37', 'EGRESO', 334756.00, 'Retiro a Caja Grande', NULL),
(259, '2025-11-22 17:45:48', 'EGRESO', 18000.00, 'Gasto efectivo: Viaticos x 2 (ID 136)', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `prefijo` text,
  `numero` int(11) NOT NULL,
  `movimiento` text NOT NULL,
  `obs` text NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `obsdel` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `prefijo`, `numero`, `movimiento`, `obs`, `activo`, `obsdel`, `fecha`) VALUES
(1, 'ALIMENTOS', 'ALI', 15, 'SI', '', 1, '', '2025-11-08 16:31:45'),
(2, 'COMBUSTIBLE', 'COM', 1, 'SI', '', 1, '', '2025-10-11 14:47:48'),
(3, 'INSUMOS', 'INSU', 4, 'SI', '', 1, '', '2025-11-05 20:19:06'),
(4, 'LIBRERíA/INSUMO OFICINA', 'LIOF', 4, 'SI', '', 1, '', '2025-08-13 22:47:00'),
(5, 'ARREGLO INFRAESTRUCTURA', 'ARRE', 5, 'SI', '', 1, '', '2025-08-13 22:47:42'),
(6, 'SERVICIOS', 'SER', 5, 'SI', '', 1, '', '2025-08-13 22:48:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `dni` int(11) NOT NULL,
  `cuit` varchar(30) NOT NULL,
  `idivacliente` int(11) NOT NULL,
  `email` text NOT NULL,
  `idtipocliente` int(11) DEFAULT '1',
  `compras` int(11) DEFAULT '0',
  `ultima_compra` datetime DEFAULT NULL,
  `obs` text,
  `activo` int(11) DEFAULT '1',
  `obsdel` text,
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `direccion`, `telefono`, `dni`, `cuit`, `idivacliente`, `email`, `idtipocliente`, `compras`, `ultima_compra`, `obs`, `activo`, `obsdel`, `fechacreacion`) VALUES
(1, 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', 0, '', 0, '', 1, 1153, '2025-11-12 16:51:09', '', 1, '', '2025-11-12 19:51:09'),
(3, 'MARCELA ', 'BARRANQUERAS', '(362) 421-7698', 22222111, '20-20202020-2', 3, 'MARCE@GM', 1, 2, '2025-08-23 15:42:43', 'COMPA DE TRABAJO DE WALTER', 1, NULL, '2025-08-23 18:42:43'),
(4, 'SUPER CHINO DON BOSCO ', 'DON BOSCO 50', '(000) 000-0000', 2020220202, '20-20202020-2', 3, 'W@E', 2, -1, '2025-10-17 08:43:32', 'SE LLEVO EXHIBIDORA.', 1, NULL, '2025-10-17 11:43:32'),
(5, 'SUPER CHINO MARCONI.', 'MARCONI Y CALLE 6', '(202) 020-2020', 22222222, '20-20202020-2', 3, 'W@E', 2, 4, '2025-09-27 19:55:13', 'PIDIO MAS PRECIO', 1, NULL, '2025-09-27 22:55:13'),
(6, 'KIOSCO BARRIO PRIMAVERA', 'BARRIO PRIMAVERA', '(303) 030-3030', 2020202020, '20-20202020-2', 3, 'W@W', 2, 0, NULL, 'AGENDAR CELU', 1, NULL, '2025-07-25 00:45:05'),
(7, 'CAROLINA MAIDANA', 'AYACUCHO Y GUIRALDES', '(362) 410-2341', 22222222, '20-20202020-2', 3, 'W@W', 1, 1, '2025-11-22 11:40:42', 'AMIGA DE WALTER', 1, NULL, '2025-11-22 14:40:42'),
(8, 'STELLA GOMEZ (KIOSCO B 2 DE SEPTIEMBRE)', 'GIACHINO Y MONTEVIDEO', '(202) 020-2020', 2000000000, '20-20202020-2', 3, 'W@E', 2, 0, NULL, 'CALLE DE TIERRA', 1, NULL, '2025-07-25 00:45:10'),
(9, 'MARIA ACOSTA', 'OBLIGADO 1050', '(362) 400-113_', 20222333, '20-20202020-0', 3, 'W@W', 1, 0, NULL, 'NICO', 1, NULL, '2025-07-25 00:45:14'),
(10, 'KIOSCO ELIZABET', 'USUAIA Y MC LEAN', '(362) 410-0533', 2222222, '20-20202020-2', 3, 'W@E', 2, 0, NULL, 'LLAMAR ANTES DE IR', 1, NULL, '2025-07-25 00:45:17'),
(11, 'KIOSCO GEMA', 'MARCONI 1702', '(362) 485-7731', 0, '00-00000000-0', 3, 'W@E', 2, 18, '2025-11-21 10:21:15', 'TIENE EXIBIDORA DE WALTER', 1, NULL, '2025-11-21 13:21:15'),
(12, 'CLIENTE SUELTO OBLIGADO.', 'OBLIGADO AL 2000', '(362) 406-7512', 0, '00-00000000-0', 3, 'W@W', 1, 0, NULL, 'LLAMAR', 1, NULL, '2025-07-25 00:45:23'),
(13, 'DISTRIBUIDORA COLONIAS UNIDAS', 'COLONIAS UNIDAS', '(362) 422-2222', 29777888, '20-20202020-2', 3, 'W@E', 2, -285, '2025-11-08 13:23:49', 'SE RETIRO DE LA PLANTA', 1, NULL, '2025-11-08 16:23:49'),
(14, 'MARCELA ACOSTA ', 'AYACUCHO5560', '(362) 477-7777', 22333555, '20-20202020-2', 3, 'W@W', 1, 0, NULL, 'NICO', 1, NULL, '2025-07-25 00:45:31'),
(15, 'FRANCO BISTOLETTI', 'JUAN MORO ', '(362) 477-6199', 22222222, '20-20202020-2', 2, 'W@W', 1, -2, '2025-10-14 08:27:51', 'AMIGO DE WALTER', 1, NULL, '2025-10-14 11:27:51'),
(16, 'ALGO BONITO', 'CIERVO PETISO', '(372) 544-0022', 2020202020, '20-20202020-2', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE JENY', 1, NULL, '2025-07-25 00:46:15'),
(17, 'MEGAMUNDO', 'JULIO A ROCA 460', '(372) 564-1494', 2002022000, '20-20202020-2', 2, 'W@W', 1, 2, '2025-11-19 11:42:43', 'CLIENTE DE JANET', 1, NULL, '2025-11-19 14:42:43'),
(18, 'DE TODO UN POCO', 'CIERVO PETISO', '(___) ___-____', 20202020, '20-20202020-0', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE JANET', 1, NULL, '2025-07-25 00:46:18'),
(19, 'MONICA ZURITA ', 'FORTERINGAM', '(362) 487-1071', 20333444, '20-20202020-2', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE FABIANA', 1, NULL, '2025-07-24 12:30:22'),
(20, 'VERDULERIA ', 'AV. MC LEAN', '(362) 478-7355', 29777888, '20-20202020-0', 2, 'W@W', 1, 10, '2025-09-30 20:25:25', 'CLIENTE DE FABIANA', 1, NULL, '2025-09-30 23:25:25'),
(21, 'IVANA RIZZI', 'CORRIENTES', '(362) 471-7558', 20333444, '20-20202020-2', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE FABIANA', 1, NULL, '2025-07-25 00:46:30'),
(22, 'VERONICA SOTO', 'BROWN Y PELLEGRINI', '(362) 410-6018', 29844666, '20-20202020-2', 2, 'W@A', 1, 0, NULL, 'CLIENTE DE F', 1, NULL, '2025-07-25 00:45:36'),
(23, 'MILEN AGUIRRE', 'B ESPAñA', '(362) 476-9884', 20200333, '20-20000000-7', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE FW', 1, NULL, '2025-07-24 13:00:49'),
(25, 'CAMILO TEVEZ (ABERNORT)', 'COLECTORA', '(362) 453-4966', 29999888, '20-20202020-0', 2, 'W@A', 1, 6, '2025-11-20 11:21:35', 'DE WALTER', 1, NULL, '2025-11-20 14:21:35'),
(29, 'LEONO-4', '.', '(370) 4__-____', 30065464, '20-23023031-4', 3, 'EMAIL@EMAIL.COM', 1, 0, NULL, '.', 1, NULL, '2025-07-25 00:39:50'),
(31, 'SUPER CHINO SAN MARTIN', 'SAN MARTIN Y AMEGUINO', '(000) 000-0000', 2020202020, '20-20202020-0', 2, 'W@E', 2, 1, '2025-07-25 09:55:55', '-', 1, NULL, '2025-07-25 12:55:55'),
(32, 'VERDULERIA PROVINCIAS  UNIDAS', 'B PROVINCIAS UNIDAS', '(362) 422-3366', 2020202020, '20-20202020-2', 2, 'W@W', 2, 0, NULL, 'WALTER', 1, NULL, '2025-08-01 22:33:26'),
(33, 'ROMINA JANET CODUTTI', 'JOSE MARIA PAZ 1050', '(372) 546-2281', 43616709, '20-20202020-2', 2, 'W@W', 1, 2, '2025-10-14 08:53:46', 'JANET', 1, NULL, '2025-10-14 11:53:46'),
(34, 'CARLA DELEN FERNANDEZ', 'PELLEGRINI 69 PRIMER PISO (COWORKING)', '(362) 520-2020', 42404729, '27-42404729-0', 2, 'W@W', 1, 1, '2025-08-12 19:15:09', 'CLIENTE DE JANET', 1, NULL, '2025-08-12 22:15:37'),
(35, 'JESSICA JOHANNA VILAQUI ', 'ING SCHUR. ENTRE SEITOR Y PASAJE TOLEDO.', '(362) 519-3893', 340335150, '27-34033515-0', 2, 'W@W', 1, 3, '2025-11-18 12:33:40', 'CLIENTE DE JANET', 1, NULL, '2025-11-18 15:33:40'),
(36, 'POLIGONO ', 'MARGARITA BELEN', '(362) 485-4800', 2020202020, '__-________-_', 2, 'W@W.COM', 1, 1, '2025-09-09 13:38:42', 'MARGARITA BELEN ', 1, NULL, '2025-09-09 16:38:42'),
(37, 'ALICIA SABUGO', 'MARGARITA BELEN ', '(360) 000-0000', 42986923, '27-42926356-4', 2, 'FELINACLOTHING6@GMAIL.COM', 2, -4, '2025-11-10 17:10:48', 'NEGOCIO DE MARGARITA BELEN REVENDEDORA', 1, NULL, '2025-11-10 20:10:48'),
(38, 'LUCAS VILLANUEVA', 'CARPINCHO MACHO', '(362) 567-5917', 33526456, '20-20202020-2', 2, 'W@W', 1, 1, '2025-08-11 23:09:32', 'AMIGO DE CRISTAL', 1, NULL, '2025-08-13 13:43:29'),
(39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', 'CARPINCHO MACHO', '(362) 412-0727', 2020202020, '20-20202020-2', 2, 'W@A', 2, 7, '2025-11-17 09:56:37', 'VETA DE MARTIN', 1, NULL, '2025-11-17 12:56:37'),
(41, 'HECTOR MORALES', 'MARGARITA', '(333) 333-3333', 2020202020, '20-220_____-_', 2, 'W@A', 2, 2, '2025-08-12 13:23:47', 'VENTA DE HECTOR', 1, NULL, '2025-08-12 16:23:47'),
(42, 'KIOSCO MARGARITA', 'MARGARITA BELEN', '(000) 000-0000', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-08-12 13:28:32', 'VENTA DE HECTOR', 1, NULL, '2025-08-12 16:28:32'),
(43, 'FRANCIS', 'B° ESPAñA CALLE LEOPOLDO MARTIN  1201', '(000) 000-0000', 2020202020, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 4, '2025-09-09 20:10:38', 'CLIENTE DE JANET', 1, NULL, '2025-09-09 23:10:38'),
(44, 'EMILY GUTIERREZ', 'JOSE MARIA PAZ 1119', '(000) 000-0000', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 7, '2025-11-01 11:23:08', '.', 1, NULL, '2025-11-01 14:23:08'),
(45, 'VIVIANA DE MIGUEL GLAVAS', 'TRANSITO COCOMAROLA 1695', '(362) 461-7724', 43616705, '29-62622622-2', 2, 'W@A', 1, 1, '2025-11-01 09:09:45', 'ESCRIBANA ', 1, NULL, '2025-11-01 12:09:45'),
(46, 'GLADYS MAZZO ', 'AV MARCONI ESQUINA CALLE 5', '(362) 420-9274', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, -16, '2025-09-19 20:28:03', '.', 1, NULL, '2025-09-19 23:28:03'),
(47, 'EDITH DUARTE ', 'ISABEL LA CATOLICA ', '(362) 425-6343', 43616705, '20-20202020-0', 2, 'W@W', 1, 1, '2025-08-13 16:36:47', 'VERDULERIA BARRIO ESPAñA DE WALTER', 1, NULL, '2025-10-07 19:28:44'),
(48, 'KIOSKO MARCELO', 'BARRIO JORGE NEWBERY', '(362) 420-6105', 2020202020, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 5, '2025-09-27 13:10:59', 'CLIENTE MARTIN', 1, NULL, '2025-09-27 16:10:59'),
(49, 'PAULINA BAñAGASTA', 'BARRIO JORGE NEWBERY', '(362) 499-9999', 2020202020, '__-________-_', 2, 'W@W', 2, 5, '2025-09-24 16:53:27', 'CLIENTE WALTER', 1, NULL, '2025-09-24 19:53:27'),
(50, 'DRUGSTORE MDQ', 'MITRE 150', '(333) 333-3333', 2020202020, '33-33333333-3', 2, 'W@W', 1, 2, '2025-08-14 19:10:27', 'CLIENTE DE WALTER', 1, NULL, '2025-08-14 22:10:27'),
(51, 'KIOSKO HERAS', 'HERAS 3200', '(___) ___-____', 43616705, '__-________-_', 2, 'W@W', 2, 2, '2025-09-06 08:50:44', 'CLIENTE DE WALTER', 1, NULL, '2025-09-06 11:50:44'),
(53, 'DO NEGAO', 'SOBRE COLECTORA RUTA 11', '(375) 456-9440', 2020202020, '__-________-_', 2, 'W@W', 2, 2, '2025-09-09 13:36:59', 'CLIENTE DE HECTOR', 1, NULL, '2025-09-09 16:36:59'),
(54, 'CELESTE MAIDANA ', 'COLONIAS UNIDAS', '(000) 000-0000', 43616705, '22-22222222-2', 2, 'W@W', 1, 1, '2025-08-15 17:56:13', 'CLIENTE MENSUAL ', 1, NULL, '2025-08-15 20:56:13'),
(55, 'GUSTAVO BUYATTI', 'COLONIAS UNIDAS', '(_11) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 1, 1, '2025-08-15 18:04:11', 'CLIENTE MENSUAL', 1, NULL, '2025-08-15 21:04:11'),
(56, 'VILMA BASINIANI', 'COLONIAS UNIDAS', '(111) 111-1111', 2020202020, '11-11111111-1', 2, 'W@W', 1, 1, '2025-08-15 18:04:42', 'CLIENTE MENSUAL ', 1, NULL, '2025-08-15 21:04:42'),
(57, 'KIOSKO 25 DE MAYO', '25 DE MAYO', '(370) 468-9479', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-08-16 16:28:00', 'CLIENTE DE GABI', 1, NULL, '2025-08-16 19:28:00'),
(58, 'MARIA LUZ GONZALES', 'RESISTECIA', '(___) ___-____', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-08-16 16:31:09', 'CLIENTE DE JANET', 1, NULL, '2025-08-16 19:31:09'),
(59, 'FABIAN ORESTO CANO', 'OFICINA DE OBRAS PUBLICAS', '(___) ___-____', 18021785, '__-________-_', 2, 'W@W', 1, 3, '2025-08-20 13:33:49', 'CLIENTE DE WALTER', 1, NULL, '2025-08-20 16:33:49'),
(60, 'PUBLICIDAD(SOLAR AMEGHINO)', 'AMEGHINO 976 6D', '(000) 000-0000', 2020202020, '__-________-_', 2, 'W@W', 1, 1, '2025-08-18 15:44:01', 'PUBLICIDAD', 1, NULL, '2025-08-18 18:44:01'),
(61, 'DARIO BARTOLI ', 'AVENIDA 9 DE JULIO 556', '(362) 489-2495', 2020202020, '__-________-_', 2, 'W@W', 1, 2, '2025-11-14 18:51:33', 'CLIENTE MARTIN ', 1, NULL, '2025-11-14 21:51:33'),
(62, 'MAYORISTA FONTANA  VICTOR GAS', 'AV  ALVEAR 3746 ', '(362) 465-0411', 43616705, '22-22222222-2', 2, 'W@W', 2, 6, '2025-11-20 11:45:27', ' CLIENTE FONTANA', 1, NULL, '2025-11-20 14:45:27'),
(63, 'VERONICA BERLINI', 'DESCONOCIDA', '(111) 111-1111', 2020202020, '__-________-_', 2, 'W@W', 2, 2, '2025-09-26 13:24:02', 'BUSCA DE LA PLANTA GOTA DE CRISTAL', 1, NULL, '2025-09-26 16:24:02'),
(64, 'ALEJANDRO OJEDA', 'JORGE NEWBERY', '(362) 478-5743', 43616707, '__-________-_', 2, 'W@A', 1, 6, '2025-11-12 17:01:04', 'CLIENTE DE MARTIN', 1, NULL, '2025-11-12 20:01:04'),
(65, 'KIOSKO BETO ', 'MISIONERO KLEIN ', '(362) 465-6519', 43616705, '33-33333333-3', 2, 'W@W', 2, 3, '2025-11-21 12:07:43', 'CLIENTE DE JANET ', 1, NULL, '2025-11-21 15:07:43'),
(66, 'JESICA VILAKI ', 'ING SHUR 1380', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 1, 4, '2025-10-27 12:47:15', 'CLIENTE JANET', 1, NULL, '2025-10-27 15:47:15'),
(67, 'CLIENTE PUERTO TIROL', 'PUERTO TIROL', '(000) 000-0000', 0, '00-00000000-0', 2, 'W@W', 1, 1, '2025-08-20 19:54:45', 'CLIENTE DE WALTER', 1, NULL, '2025-08-20 22:54:45'),
(68, 'AMELIA CONTRERAS', 'CASA DE GOBIERNO', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 1, 0, NULL, 'OBRAS PUBLICAS', 1, NULL, '2025-08-21 20:02:45'),
(69, 'MARGARITA LESCANO', 'FLORIANI 173 LESCANO FONTANA', '(362) 552-7928', 2020202020, '__-________-_', 2, 'W@W', 1, 4, '2025-11-03 08:59:59', 'CLIENTE DE MARTIN', 1, NULL, '2025-11-03 11:59:59'),
(70, 'VANESA SOLEDAD OJEDA ', 'AV.AUGUSTO REY 1181', '(362) 474-5117', 1111111111, '11-11111111-1', 2, 'W@W', 2, 1, '2025-08-21 20:56:24', 'CLIENTE DE MARTIN', 1, NULL, '2025-08-21 23:56:24'),
(71, 'VANESA SOLEDAD OJEDA ', 'AV.AUGUSTO REY 1181', '(362) 474-5117', 1111111111, '11-11111111-1', 2, 'W@W', 2, 0, NULL, 'CLIENTE DE MARTIN', 1, NULL, '2025-08-21 23:51:01'),
(72, 'PRISILA BARRANQUERAS', 'BARRANQUERAS FRENTE A MI QUINCHO SOñADO', '(379) 508-5497', 2020202020, '33-33333333-3', 2, 'W@W', 1, 3, '2025-11-18 19:38:41', 'CLIENTE DE JANET ', 1, NULL, '2025-11-18 22:38:41'),
(73, 'ARQUITECTA CLARA OBRAS PUBLICAS', 'OBRA PUBLICA', '(362) 453-6014', 43616705, '11-11111111-1', 2, 'W@E', 4, 12, '2025-11-13 17:01:41', 'OBRAS PUBLICAS', 1, NULL, '2025-11-13 20:01:41'),
(74, 'GRACIELA LAGO', 'AV 9 DE JULIO 3545', '(___) ___-____', 2020202020, '__-________-_', 2, 'W@A', 1, 1, '2025-08-22 21:25:39', 'CLIENTE DE CRISTAL', 1, NULL, '2025-08-23 00:25:39'),
(75, 'PABLO ANDRES RIVAS', 'BARRIO BARBETTI SIERRA DE CóRDOVA 1144', '(362) 417-5610', 2020202020, '__-________-_', 2, 'W@W', 2, 4, '2025-09-26 20:42:25', 'CLIENTE MARTIN', 1, NULL, '2025-09-26 23:42:25'),
(76, 'SERRA MARIA GUIDO', 'GUIDO SPANO 533 AV.FLORIDA', '(362) 493-7410', 2020202020, '11-11111111-1', 2, 'W@W', 1, 1, '2025-08-23 15:46:07', 'CLIENTE DE MARTIN ', 1, NULL, '2025-08-23 18:46:07'),
(77, 'AYELEN NAUMOVICH', 'BARRIO SUPCEM 10 VDS LA TOMA CASA 16', '(362) 470-8595', 43616705, '11-11111111-1', 2, 'W@W', 1, 1, '2025-08-23 15:48:37', 'CLIENE DE MARTIN', 1, NULL, '2025-09-04 22:32:29'),
(78, 'AYELEN NAUMOVICH', 'BARRIO SUPCEM 10 VDS LA TOMA CASA 16', '(336) 247-0859', 43616705, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENE DE MARTIN', 1, NULL, '2025-08-23 18:48:08'),
(79, 'AYELEN NAUMOVICH', 'BARRIO SUPCEM 10 VDS LA TOMA CASA 16', '(336) 247-0859', 43616705, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENE DE MARTIN', 1, NULL, '2025-08-23 18:48:09'),
(80, 'AYELEN NAUMOVICH', 'BARRIO SUPCEM 10 VDS LA TOMA CASA 16', '(336) 247-0859', 43616705, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENE DE MARTIN', 1, NULL, '2025-08-23 18:48:09'),
(81, 'AYELEN NAUMOVICH', 'BARRIO SUPCEM 10 VDS LA TOMA CASA 16', '(336) 247-0859', 43616705, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENE DE MARTIN', 1, NULL, '2025-08-23 18:48:09'),
(83, 'ROXI OJEDA OFICINAS OBRAS PUBLICAS', 'MONSEñOR DE   CARLO', '(362) 472-9244', 43616705, '__-________-_', 2, 'W@A', 1, 1, '2025-08-25 12:33:13', 'CLIENTE DE WALTER ', 1, NULL, '2025-08-25 15:33:13'),
(84, 'QINIELA MARCONI', 'AV. MARCONI 2356', '(362) 525-9188', 43616709, '__-________-_', 2, 'W@W', 1, 4, '2025-09-25 18:15:49', 'CLIENTE DE MARTIN', 1, NULL, '2025-09-25 21:15:49'),
(85, 'ACOSTA JOSE RAMON FRUTERIA ', 'AV25 DE MAYO 4470 FONTANA', '(362) 528-7701', 43616705, '__-________-_', 2, 'W@A', 2, 17, '2025-11-19 09:56:42', 'CLIENTE DE MARTIN ', 1, NULL, '2025-11-19 12:56:42'),
(86, 'KIOSKO LOVATO LOVATO ERICA', 'COMANDANTE FONTANA 2502', '(362) 476-6872', 1111111111, '22-22222222-2', 2, 'W@W', 2, 5, '2025-11-03 12:45:29', 'CLIENTE MARTIN', 1, NULL, '2025-11-03 15:45:29'),
(87, 'VERONICA ZAPATA ', 'B.VIRGEN DE LOURDES  CALLE PASAJE FONTANA 2555', '(362) 584-2441', 2020202020, '__-________-_', 2, 'W@W', 1, 2, '2025-09-03 14:42:19', 'CLIENTE DE JANET', 1, NULL, '2025-09-03 17:42:19'),
(88, 'GRACIELA RUIZ DIAZ', 'SAN MARTIN CHACO ', '(370) 4__-____', 43616705, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-08-26 18:54:57', 'CLIENTE MENSUAL ', 1, NULL, '2025-09-12 19:40:21'),
(89, 'KIOSKO JOSE', 'B. LAS MALVINAS CALLE YAGUARETé', '(362) 426-6168', 43616705, '__-________-_', 2, 'W@W', 2, 5, '2025-10-07 12:29:55', 'CLIENTE MARTIN ', 1, NULL, '2025-10-07 15:29:55'),
(90, 'FERNANDO KAENEL ', 'JULIO ROCA 260', '(000) 000-0000', 1111111111, '__-________-_', 2, 'W@E', 1, 3, '2025-09-25 18:14:59', 'CLIENTE DE JANET', 1, NULL, '2025-09-25 21:14:59'),
(91, 'ZABEDRA JOSE ', 'COMANDANTE FONTANA 2850 RESISTENCIA ', '(362) 418-8033', 2020202020, '__-________-_', 2, 'W@A', 2, 3, '2025-09-24 16:52:54', 'CLIENTE DE MARTIN', 1, NULL, '2025-09-24 19:52:54'),
(92, 'CORPORACIóN EVANGELICA MISIONERA HERMANOS DE CRISTO ', 'SIERRAS DE CORDOBA 970', '(362) 480-1126', 2020202020, '__-________-_', 2, 'W@E', 1, 2, '2025-09-26 11:50:08', 'CLIENTE DE JANET', 1, NULL, '2025-09-26 14:50:08'),
(93, 'FABRICIO MENDEZ ', 'GENERAL SAN MARTIN', '(333) 333-3333', 35177936, '22-22222222-2', 2, 'W@W', 4, 1, '2025-08-28 12:57:03', 'CLIENTE MENSUAL', 1, NULL, '2025-08-28 15:57:03'),
(94, 'NAHUEL .R MENDEZ', 'LAS GRACITAS', '(111) 111-1111', 42577907, '11-11111111-1', 2, 'W@A', 4, 1, '2025-08-28 12:59:10', 'CLIENTE MENSUAL', 1, NULL, '2025-08-28 15:59:10'),
(95, 'YANINA ELIZABETH VALDEZ', 'LA PACHITO', '(___) ___-____', 36972866, '__-________-_', 2, 'W@W', 4, 1, '2025-08-28 13:00:45', 'CLIENTE MENSUAL', 1, NULL, '2025-08-28 16:00:45'),
(96, 'MONTERO CAROLINA', 'JOSE MARIA PAZ 2919', '(362) 462-8123', 365069201, '11-11111111-1', 2, 'W@W', 4, 1, '2025-11-20 18:24:01', 'CLIENTE MENSUAL', 1, NULL, '2025-11-20 21:24:01'),
(98, 'MONTERO CAEROLINA', 'JOSE MARIA PAZ 2919', '(362) 462-8123', 365069201, '11-11111111-1', 2, 'W@W', 4, 2, '2025-10-23 09:32:56', 'CLIENTE MENSUAL', 1, NULL, '2025-10-23 12:32:56'),
(99, 'MONTERO CAEROLINA', 'JOSE MARIA PAZ 2919', '(362) 462-8123', 365069201, '11-11111111-1', 2, 'W@W', 4, 0, NULL, 'CLIENTE MENSUAL', 1, NULL, '2025-08-30 15:20:10'),
(100, 'MONTERO CAEROLINA', 'JOSE MARIA PAZ 2919', '(362) 462-8123', 365069201, '11-11111111-1', 2, 'W@W', 4, 0, NULL, 'CLIENTE MENSUAL', 1, NULL, '2025-08-30 15:20:10'),
(101, 'MONTERO CAEROLINA', 'JOSE MARIA PAZ 2919', '(362) 462-8123', 365069201, '11-11111111-1', 2, 'W@W', 4, 0, NULL, 'CLIENTE MENSUAL', 1, NULL, '2025-08-30 15:20:10'),
(102, 'DIEGO MINIMARKET PREMIUM', 'JOSé HERNáNDEZ 226', '(362) 402-3983', 2020202020, '11-11111111-1', 2, 'W@W', 2, 11, '2025-11-18 12:05:00', 'CLIENTE JANET', 1, NULL, '2025-11-18 15:05:00'),
(103, 'MAD PINK LOCAL DE ROPA ', 'ARTURO ILLIA 67', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 1, 1, '2025-08-30 12:32:41', 'CLIENTE DE JANET', 1, NULL, '2025-08-30 15:32:41'),
(104, 'RODRIGO SAVEDRA MINI MARKET JOSE', 'VILLA LOS LIRIOS JOSE ALSINA 343', '(111) 111-1111', 43616705, '11-11111111-1', 2, 'W@W', 2, 4, '2025-10-21 08:48:04', 'CLIENTE JANET', 1, NULL, '2025-10-21 11:48:04'),
(105, 'FAMILIA MARTINEZ', 'BARRIO SUPE AV EVARISO RAMIREZ 1295', '(362) 425-7786', 43616705, '__-________-_', 2, 'W@E', 1, 1, '2025-09-01 21:14:59', 'CLIENTE MARTIN ', 1, NULL, '2025-09-02 00:14:59'),
(106, 'LOCAL WOD SPORT ', 'FRONDIZI 320', '(111) 111-1111', 1111111, '11-11111111-1', 2, 'W@W', 1, 3, '2025-11-13 17:06:50', 'CLIENTE JANET', 1, NULL, '2025-11-13 20:06:50'),
(107, 'ARON JUAN GUERRA LOCAL LA NARANJA', 'CARLOS TEJEDOR BARRIO ESPAñA', '(362) 462-9820', 1111111111, '11-11111111-1', 2, 'W@W', 2, 9, '2025-11-21 08:09:17', 'CLSIENTE WALTER ', 1, NULL, '2025-11-21 11:09:17'),
(108, 'BARBARA LOURDES EVELIN ', 'FONTANA  CALLE FORMOSA ENTRE BELGRANO Y CACUI B INDEPENDENCIA', '(362) 454-2066', 43616705, '20-20202020-0', 2, 'W@E', 4, 2, '2025-10-07 11:11:54', 'CLIENTE DE MARTIN MENSUAL DISP. FRIO Y CALOR', 1, NULL, '2025-10-07 14:11:54'),
(109, 'LOURDES BILLORDO', '9 DE JULIO Y N.ROLDAN', '(362) 410-5150', 111111111, '11-11111111-1', 2, 'W@W', 1, 1, '2025-09-02 20:29:35', 'CLIENTE JANET', 1, NULL, '2025-09-02 23:29:35'),
(110, 'MIRIAN RAMOS OBRAS PUBLICAS', 'MONSEñOR DE   CARLO', '(362) 422-2112', 1111111111, '11-11111111-1', 2, 'W@W', 1, 7, '2025-10-08 12:32:35', 'CLIENTE WALTER', 1, NULL, '2025-10-08 15:32:35'),
(111, 'NORMA RIOS ', 'B.ANGEL DE LA GUARDA MANZANA 9 Y PARCELA 14', '(362) 424-6611', 1111111111, '11-11111111-1', 2, 'W@E', 2, 2, '2025-11-01 09:08:58', 'CLIENTE DE MARTIN ', 1, NULL, '2025-11-01 12:08:58'),
(112, 'TABARDA LAURA CAELESTE GUADALUPE', 'ARBO Y BLANCO 1566', '(362) 478-5024', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-09-03 20:44:05', '.', 1, NULL, '2025-09-03 23:44:05'),
(113, 'FLORENCIA CASASOLA', 'AV 9 DE JULIO 321 6TO B', '(387) 663-5636', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 5, '2025-11-18 11:17:31', '.', 1, NULL, '2025-11-18 14:17:31'),
(114, 'EDUARDO ROMERO ', 'JORGUE NEWBERY 35', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 1, 2, '2025-09-17 21:13:26', 'CLIENTE CELU ', 1, NULL, '2025-09-18 00:13:26'),
(115, 'TORRES MIRNA KISOKO ATREVIDA', 'AV CASTELLI 2400', '(297) 418-6248', 1111111111, '11-11111111-1', 2, 'W@W', 4, 4, '2025-11-20 08:16:01', 'CLIENTE MENSUAL JANET ', 1, NULL, '2025-11-20 11:16:01'),
(116, 'CASA DE GOBIERNO ', 'AV 25 DE MAYO CASA DE GOBIERNO ', '(111) 111-1111', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-09-09 13:36:31', '.', 1, NULL, '2025-09-09 16:36:31'),
(117, 'ERIKA AMIGA DE WALTER', 'SERCA DE LA MARCONI', '(362) 471-6068', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, -1, '2025-09-09 13:41:55', '.', 1, NULL, '2025-09-09 16:41:55'),
(118, 'MARCIA NEREA CABRELLA', 'INTERIROR', '(111) 111-1111', 33930860, '11-11111111-1', 2, 'W@W', 4, 1, '2025-09-12 16:32:31', 'CLIENTE MENSUAL ', 1, NULL, '2025-09-12 19:32:31'),
(119, 'CABRILLA MARLEN NERINA', 'ZONA DEL INTERIOR', '(222) 222-2222', 37168407, '22-22222222-2', 2, 'W@W', 4, 1, '2025-09-12 16:36:32', 'CLIENTE MENSUAL ', 1, NULL, '2025-09-12 19:36:32'),
(121, 'GRACIELA DESPENSA CARLITO ', 'RESISTENCIA RIOJA 843 AV AVALOS ', '(362) 403-6988', 1111111111, '11-11111111-1', 2, 'W@W', 1, 6, '2025-11-19 11:13:08', 'CLIENTE MARTIN ', 1, NULL, '2025-11-19 14:13:08'),
(122, 'MARISEL AYALA ', 'BARRIO 20 VIVIENDAS MANZANA 127 PC06 AV 25 DE MAYO FONTANA', '(362) 493-7214', 1111111111, '11-11111111-1', 2, 'W@W', 1, 2, '2025-09-30 20:26:20', 'CLIENTE MARTIN ', 1, NULL, '2025-09-30 23:26:20'),
(123, 'SEBASTIAN BINAGUI OBRAS PUBLICAS ', 'CASA DE GOBIERNO ', '(362) 422-9461', 1111111111, '11-11111111-1', 2, 'W@A', 1, 3, '2025-11-13 17:05:14', 'CLIENTE MARTIN ', 1, NULL, '2025-11-13 20:05:14'),
(124, 'JULIO JOSE ALBERTO CARRIZ', 'GUIDO SPANO 1655 BARRANQUERAS', '(362) 402-7033', 1111111111, '11-11111111-1', 2, 'W@A', 2, 1, '2025-09-16 21:13:40', 'CLIENTE MARTIN ', 1, NULL, '2025-09-17 00:13:40'),
(125, 'MINIMERCADO JOHANA ', 'AV SAN MARTIN ', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 2, 1, '2025-09-17 12:33:41', 'CLIENTE DE JANET', 1, NULL, '2025-09-17 15:33:41'),
(126, 'HERMANO DE CARLA  FERNANDEZ', 'AV PELLEGRINI 69', '(362) 460-4249', 1111111111, '11-11111111-1', 2, 'W@W', 4, 2, '2025-09-17 21:19:23', 'CLIENTE MENSUAL JANET FICHITA BIT', 1, NULL, '2025-10-06 16:01:30'),
(127, 'OFICINA DE OBRAS PUBLICAS (JUNTA DE EVALUACION) VIVIANA MIEREZ', 'MONSEñOR  DE CARLO OBRAS PUBLICAS', '(362) 451-5613', 1111111111, '11-11111111-1', 2, 'W@W', 1, 2, '2025-10-23 09:38:20', 'CLIENTE MARTIN ', 1, NULL, '2025-10-23 12:38:20'),
(128, 'GIMENEZ ANA', 'MARCELO T ALVEAR 272', '(362) 407-5102', 1111111111, '11-11111111-1', 2, 'W@W', 4, 3, '2025-10-28 12:48:04', 'CLIENTE MENSUAL ', 1, NULL, '2025-10-28 15:48:04'),
(129, 'ESTEBAN TOFFALETTI', 'RAUL B DIAZ 846 RESISTENCIA ', '(362) 478-0595', 1111111111, '11-11111111-1', 2, 'W@W', 4, 3, '2025-11-03 19:00:09', 'CLIENTE MENSUAL MARTIN (VERONICA LEGUIZA)', 1, NULL, '2025-11-03 22:00:09'),
(130, 'NOELIA 6TO PISO ', 'AV. 9 SE JULIO 321', '(362) 565-5988', 1111111111, '11-11111111-1', 2, 'W@A', 1, 3, '2025-11-14 10:46:24', 'CLIENTE JANET', 1, NULL, '2025-11-14 13:46:24'),
(131, 'GOMEZ LEA ', 'PASAJE RIOJA 2002', '(362) 464-5498', 1111111111, '11-11111111-1', 2, 'W@W', 1, 1, '2025-09-24 12:16:05', 'CLIENTE', 1, NULL, '2025-09-24 15:16:05'),
(132, 'JOSE SAVEEDRA ', 'PASAJE FONTANA ', '(362) 418-8033', 1111111111, '11-11111111-1', 2, 'W@W', 2, 8, '2025-11-18 16:24:26', 'CLIENTE DE MARTIN ', 1, NULL, '2025-11-18 19:24:26'),
(133, 'CLIENTE RAMDON DE LA CALLE ', '111111111111111', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@A', 1, 1, '2025-09-26 13:25:06', 'VENTA DE MARTIN', 1, NULL, '2025-09-26 16:25:06'),
(134, 'GUSTAVO HECTOR SUPER EL PAPERITO', 'GUIRALDES E PIROVANO Y AYACUCHO', '(362) 440-6621', 1111111111, '11-11111111-_', 2, 'W@W', 2, 2, '2025-11-22 11:44:46', 'CLIENTE WALTER', 1, NULL, '2025-11-22 14:44:46'),
(135, 'CRISAL SUPERMERCADO ', 'AV. CHACO 2260', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 2, 5, '2025-11-20 18:48:11', 'CLIENTE NUEVO ', 1, NULL, '2025-11-20 21:48:11'),
(136, 'SUPERMERCADO ALEX', 'AV CHACO  2180', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@A', 2, 1, '2025-09-30 13:10:25', 'CLIENTE', 1, NULL, '2025-09-30 16:10:25'),
(137, 'CASTRO CARLOS NEGOCIO ', 'C.USHUAIA Y GENERAL URIBURU ', '(111) 111-1111', 1111111111, '11-11111111-1', 2, 'W@W', 2, 1, '2025-10-01 12:29:26', 'CLIENTE', 1, NULL, '2025-10-01 15:29:26'),
(138, 'MARIO - CARLOS HARDY ', 'CARLOS HARDY Y JOSE MARTI', '(362) 477-6968', 29777666, '20-20202020-0', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-04 09:42:36', '.', 1, NULL, '2025-10-04 12:48:46'),
(140, 'KAREN MARCONI QUINIELA', ' AV. MARCONI 2356', '(362) 525-9188', 1111111111, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 5, '2025-11-19 19:47:22', '.', 1, NULL, '2025-11-19 22:47:22'),
(141, 'CHI SAN MARTIN ', 'SAN MARTIN1660', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-19 19:53:38', '.', 1, NULL, '2025-11-19 22:53:38'),
(142, 'BELEN ', 'AV. MARCONI 1700', '(362) 485-7731', 1111111111, '__-________-_', 2, 'W@W', 2, 2, '2025-10-20 13:47:37', 'CLIENTE DE JANET', 1, NULL, '2025-10-20 16:47:37'),
(143, 'KIOSCO JOSE', 'YAGUARETE 2030', '(362) 426-6168', 1111111111, '__-________-_', 2, 'CLIENTE@W', 2, 4, '2025-11-15 11:06:16', 'VENTA DE GOTAS DE CRISTAL ', 1, NULL, '2025-11-15 14:06:16'),
(144, 'KIOSCO FONTANA AL FONDO', 'FONTANA AL FONDO', '(362) 418-7792', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-10-10 09:42:29', 'VENTA DE DARIO', 1, NULL, '2025-10-10 12:42:29'),
(145, 'CHINO DIAGONAL BARRANQUERAS ', 'BARRANQUERAS 450', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 2, 3, '2025-11-21 18:48:58', 'CLIENTE DE CRISTAL', 1, NULL, '2025-11-21 21:48:58'),
(146, 'CHINO DIAGONAL BARRANQUERAS ', 'BARRANQUERAS 450', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 2, 0, NULL, 'CLIENTE DE CRISTAL', 1, NULL, '2025-10-10 12:47:41'),
(147, 'CHINO SUPER SOL ', 'JULIO ROCA 850', '(362) 418-6669', 1111111111, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 4, '2025-11-12 11:11:13', '.', 1, NULL, '2025-11-12 14:11:13'),
(148, 'KIOSCO AV BOGOTA', 'AV BOGOTA ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-11 11:50:38', '.', 1, NULL, '2025-10-11 14:50:38'),
(149, 'PARRILLA ', 'EDISON 3100', '(362) 535-6481', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-11 11:57:48', '.', 1, NULL, '2025-10-11 14:57:48'),
(150, 'MIGUEL VERDULERIA GRANDE ', 'JULIO ROCA Y CALLE 4 ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-11 12:01:35', '.', 1, NULL, '2025-10-11 15:01:35'),
(151, 'NEGOCIO MAC LEAN 2000', 'MAC LEAN 2000', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-11 12:37:57', '.', 1, NULL, '2025-10-11 15:37:57'),
(152, 'VERDUKERIA BERTACA CALLE 8', 'BERTACA Y CALLE 8', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-14 08:38:59', '.', 1, NULL, '2025-10-14 11:38:59'),
(153, 'GASTON PICEDA ', 'FRAY CAPELLI 216', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 3, '2025-11-17 19:55:53', '.', 1, NULL, '2025-11-17 22:55:53'),
(154, 'NARANJA VERDULERIA ', 'B. UNIDAS ', '(222) 222-2222', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 6, '2025-11-13 20:01:11', '.', 1, NULL, '2025-11-13 23:01:11'),
(155, 'ODONTOLOGO POLICONSULTORIO ', 'MARCELO T DE ALVEAR 719', '(362) 451-9943', 1111111111, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-17 09:44:45', '.', 1, NULL, '2025-11-17 22:38:47'),
(156, 'CHINO ', 'BARRIO SAN CAYETANO', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 0, NULL, '.', 1, NULL, '2025-10-15 11:30:30'),
(157, 'CHINO', 'BARRIO SAN CAYETANO', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-15 08:36:35', '.', 1, NULL, '2025-10-15 11:36:35'),
(158, 'MANUEL SOTELO', 'JOSE ALSINA 343', '(362) 412-9321', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-15 08:51:02', '.', 1, NULL, '2025-10-15 11:51:02'),
(159, 'GREEN MARKET FONTANA ', 'URUGUAY Y JUJUY (FONTANA)', '(362) 435-7379', 1111111111, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 4, '2025-11-21 11:09:48', '.', 1, NULL, '2025-11-21 14:09:48'),
(160, ' KIOSCO AV SOBERANIA Y CALLE 16', 'AV SOBERANIA Y CALLE 16', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-17 08:38:47', '.', 1, NULL, '2025-10-17 11:38:47'),
(161, 'YANINE KOLCHESKY', 'PUEYRREDON 253', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 4, '2025-11-08 13:26:38', '.', 1, NULL, '2025-11-08 16:26:38'),
(162, 'KIOSCO JONAS', 'BOSCH 1145', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-17 08:52:29', '.', 1, NULL, '2025-10-17 11:52:29'),
(163, 'CORRENTINO VALLEJOS', 'CORRIENTES CAPITAL', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-05 10:36:36', '.', 1, NULL, '2025-11-05 15:12:19'),
(164, 'PABLO MAC LEAN VERDULERIA ', 'MAC LEAN ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, -16, '2025-11-17 09:30:26', '.', 1, NULL, '2025-11-17 12:30:26'),
(165, 'CHI ITALIA', 'AV ITALIA CASI RISIONE', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-18 09:31:44', '.', 1, NULL, '2025-10-18 12:31:44'),
(166, 'ERIKA LOVATO', 'LIBERTADOR Y PASO DE LA PATRIA B° NUEVA RESISTENCIA ', '(362) 476-6872', 1111111111, '__-________-_', 2, 'W@W', 2, 3, '2025-11-19 10:32:17', 'CLIENTE ', 1, NULL, '2025-11-19 13:32:17'),
(167, 'OJEDA ANTONIETA ', 'BARRIO JORGE NEWBERY', '(362) 519-5088', 1111111111, '__-________-_', 2, 'W@A', 2, 5, '2025-11-21 09:00:41', 'CLIENTE', 1, NULL, '2025-11-21 12:00:41'),
(168, 'LEA ', 'VILLA CHICA , PASAJE RIOJA 2002', '(362) 464-5498', 2020202020, '__-________-_', 2, 'W@E', 1, 1, '2025-10-20 10:02:01', 'CLIENTE ', 1, NULL, '2025-10-20 13:02:01'),
(169, 'NELI SOLAR', 'AMEGUINO', '(___) ___-____', 2020202020, '__-________-_', 2, 'W@A', 1, 1, '2025-10-20 10:06:14', 'CLIENTE DE GOTAS DE CRISTAL', 1, NULL, '2025-10-20 13:06:14'),
(170, 'LOS NIETOS KIOSCO', 'LAS HERAS 1733', '(372) 545-7341', 1111111111, '__-________-_', 2, 'W@W', 2, 3, '2025-11-21 18:25:18', 'CLIENTE DE GOTAS DE CRISTAL', 1, NULL, '2025-11-21 21:25:18'),
(171, 'EVA VILLA ITATI', 'VILLA ITATI', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-10-24 08:24:55', '.', 1, NULL, '2025-10-24 11:24:55'),
(172, 'VICTORIA VALLI ', 'AV SABIN 493', '(362) 472-6190', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-18 11:22:17', '.', 1, NULL, '2025-11-18 14:22:17'),
(173, 'RITO ANTONIO', 'RESISTENCIA ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 09:51:49', '.', 1, NULL, '2025-10-22 12:51:49'),
(174, 'MARKTING MAXI ', 'AMEGUINO 973', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 10:13:49', '.', 1, NULL, '2025-10-22 13:13:49'),
(175, 'MENDES VERDULERIA SM', 'SAN MARTIN CHACO', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 10:21:27', '.', 1, NULL, '2025-10-22 13:21:27'),
(176, 'CAFI SM', 'SAN MARTIN ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 10:23:46', '.', 1, NULL, '2025-10-22 13:23:46'),
(177, 'JUAN SM', 'SAN MARTIN, LAS HERAS ', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 10:24:58', '.', 1, NULL, '2025-10-22 13:24:58'),
(178, 'LOA TRES HERMANOS ', 'BARRIO JORGE NEWBERY', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-22 11:52:22', '.', 1, NULL, '2025-10-22 14:52:22'),
(179, 'BAYRON ', 'PELLEGRINI 26', '(362) 413-2149', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 3, '2025-11-18 11:15:38', '.', 1, NULL, '2025-11-18 14:15:38'),
(180, 'JUAN LAS HERAS ', 'LAS HERAS 3200', '(362) 408-1392', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-03 12:40:02', '.', 1, NULL, '2025-11-03 15:40:02'),
(181, 'MAURICIO INSAURRALDE', 'BARRANQUERAS ', '(362) 516-0244', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-24 07:52:25', '.', 1, NULL, '2025-10-24 10:52:25'),
(182, 'KIOSCO NIDIA ', 'FRENTE AL HOSPITAL', '(362) 473-0777', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 0, NULL, '.', 1, NULL, '2025-10-24 10:54:39'),
(183, 'WALTER GRANDOTTI ', 'AV CASTELLI Y URQUIZA', '(929) 741-8624', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-24 08:46:40', '.', 1, NULL, '2025-10-24 11:46:40'),
(184, 'MARCELO CABRAL MRK ESTUDIO', 'SEITOR 128', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 4, '2025-11-18 16:35:08', '.', 1, NULL, '2025-11-18 19:35:08'),
(185, 'JESSICA MARTINA', 'ALVEAR 1087', '(362) 514-4533', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-11 17:30:59', '.', 1, NULL, '2025-11-11 20:30:59'),
(186, 'VERDULERIA Y FRUTERIA ESQUINA 5 (MARCONI)', 'MARCONI Y CALLE 5 (EN EL SEMAFOTO)', '(362) 420-9274', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 3, '2025-11-17 09:30:58', '.', 1, NULL, '2025-11-17 12:30:58'),
(187, 'OLGA FRANCO', ' CERVANTES 308', '(362) 456-5892', 43616709, '__-________-_', 2, 'W@W', 1, 3, '2025-11-17 19:55:03', 'MENSUAL ', 1, NULL, '2025-11-17 22:55:03'),
(188, 'CHEFU TATTOO', 'FRONDIZI 1452', '(362) 472-6934', 43616705, '__-________-_', 2, 'W@E', 1, 1, '2025-10-25 20:19:14', 'MENSUAL', 1, NULL, '2025-10-25 23:19:14'),
(189, 'GUSTAVO ', 'FRANCISCO PETCAK 1922', '(362) 532-3400', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-28 10:36:34', '.', 1, NULL, '2025-10-28 13:36:34'),
(190, 'CARLOS SHENONE', 'BARRIO ESPAñA ', '(362) 471-9308', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-22 13:16:06', '.', 1, NULL, '2025-11-22 16:16:06'),
(191, 'MARIO AGLIORI ', 'JOSE MARTI 1488', '(362) 477-6968', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-14 18:55:37', '.', 1, NULL, '2025-11-14 21:55:37'),
(192, 'MARIA ELENA VALLEJOS ', 'MARCELO T ALVEAR 240 P1 OF DEL MEDIO FRENTE ESCALERA', '(362) 425-0456', 1111111111, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 3, '2025-11-18 11:14:50', 'PUERTA', 1, NULL, '2025-11-18 14:14:50'),
(193, 'ALFONSO WALTER', 'C. MENDOZA FONTANA', '(362) 560-5997', 2020202020, '__-________-_', 2, 'W@E', 1, 5, '2025-11-22 09:45:29', 'CALLE DE TIERRA', 1, NULL, '2025-11-22 12:45:29'),
(194, 'SUPER DON COCO ', 'SOLDADO AGUILERA 3500 BARRIO GUIRALDES', '(516) 846-4864', 2020202020, '__-________-_', 2, 'W@W', 2, -17, '2025-11-12 16:47:07', 'BARRIO GUIRALDES', 1, NULL, '2025-11-12 19:47:07'),
(195, 'VERDULERIA ROSS', 'ROSS 270', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-30 11:42:44', '.', 1, NULL, '2025-10-30 14:42:44'),
(196, 'KIOSCO  EL PELADO', 'PASAJE LONARDI 3020', '(362) 486-6837', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-18 19:11:25', '.', 1, NULL, '2025-11-18 22:11:25'),
(197, 'LILIANA SANCHEZ ', 'ARAZA 26', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-31 09:07:40', '.', 1, NULL, '2025-10-31 12:07:40'),
(198, 'HEDY INGENIERA QUIMICA', 'NO FIGURA', '(362) 560-2111', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-30 16:53:13', '.', 1, NULL, '2025-10-30 19:53:13'),
(199, 'MARLY TABOADA', 'LA MADRID BARRANQUERAS', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-10-31 09:03:48', '.', 1, NULL, '2025-10-31 12:03:48'),
(200, 'DESPENSA LEO', 'SD', '(362) 424-6565', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-21 11:54:14', '.', 1, NULL, '2025-11-21 14:54:14'),
(201, 'FABIANA SOSA ', 'SD', '3704', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 0, NULL, '.', 1, NULL, '2025-11-03 12:42:42'),
(202, 'CARNICERIA LA MATILDE', 'MISIONERO KLEIN 1650 (ESQ FALUCHO)', '3704', 0, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-03 18:55:35', '.', 1, NULL, '2025-11-03 21:55:35'),
(203, 'CARNICERIA LOCOS POR LA CARNE', 'MARCELO T DE ALVEAR 1399', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 1, 0, NULL, '.', 1, NULL, '2025-11-03 22:35:29'),
(204, 'VICENTE ', 'FRAY LUIS BELTRAN Y LEON ZORRILLA ', '(362) 424-6565', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-04 08:59:46', '.', 1, NULL, '2025-11-04 11:59:46'),
(205, 'NADIA EVELYN VALLEJOS ', 'MAR DEL PLATA & LACONICH, H3506 RESISTENCIA, CHACO', '(362) 461-5238', 1111111111, '__-________-_', 2, 'W@W', 1, 3, '2025-11-18 09:33:43', 'EVENTUAL ', 1, NULL, '2025-11-18 12:33:43'),
(206, 'AILEN ', 'AV. EDISON & AV. CHACO, RESISTENCIA, CHACO', '(362) 523-5601', 1111111111, '__-________-_', 2, 'W@W', 2, 0, NULL, 'CLIENTE DE JANET', 1, NULL, '2025-11-04 19:27:27'),
(207, 'LORENA LARRAñAGA ', 'GABRIEL CARRASCO 1755', '(362) 524-670_', 1111111111, '__-________-_', 2, 'W@W', 1, 2, '2025-11-08 13:16:00', 'CLIENTE', 1, NULL, '2025-11-08 16:16:00'),
(208, 'EMILIO CATALI ', 'PASAJE FORTíN AGUILAR 3699', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENTE DE WALTER', 1, NULL, '2025-11-04 20:07:43'),
(209, 'MARTA MEDINA ', 'ADELINA DEL CARRIL ', '(362) 409-2929', 1111111111, '__-________-_', 2, 'W@W', 1, 2, '2025-11-14 17:07:59', 'CLIENTE DE WALTER', 1, NULL, '2025-11-14 20:07:59'),
(210, 'CAFE GATO NEGRO', 'PELLEGRINI 135', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 1, 2, '2025-11-18 18:29:09', 'CLIENTE', 1, NULL, '2025-11-18 21:29:09'),
(211, 'FELIX VALLEJOS ', 'ROLDAN 2744 B° NUEVA RESISTENCIA ', '(362) 485-1567', 1111111111, '__-________-_', 2, 'W@W', 1, 3, '2025-11-22 08:43:04', 'NUEVO', 1, NULL, '2025-11-22 11:43:04'),
(212, 'IVET JHOANA KIOSCO AMEGUINO', 'AMEGUINO 698', '(362) 405-8538', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-05 17:05:29', 'CLIENTE', 1, NULL, '2025-11-05 20:05:29'),
(213, 'CARNICERIA EL CHULETAZO', 'CANGALLO Y JULIO A ROCA', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-05 19:19:38', 'CLIENTE WALTER', 1, NULL, '2025-11-05 22:19:38'),
(214, 'FERNANDEZ B° JORGE NEWBERY', 'JORGE NEWBERY', '(362) 487-3152', 1111111111, '__-________-_', 2, 'W@W', 1, 1, '2025-11-06 12:15:27', 'CLIENTE', 1, NULL, '2025-11-06 15:15:27'),
(215, 'KIOSCO PAULINA ', 'CARLOS GARDEL 1625', '(362) 422-9297', 2020202020, '__-________-_', 2, 'W@W', 2, 2, '2025-11-22 12:37:23', 'CLIENTE', 1, NULL, '2025-11-22 15:37:23'),
(216, 'NEUTRO BROWN 1510 DISPENSER', 'BROWN 1510', '(362) 481-3919', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-06 19:49:29', '.', 1, NULL, '2025-11-06 22:49:29'),
(217, 'ADITA POGGI FALCON ', 'B ESPAÑA C FRAY MACHENA', '(362) 437-1498', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-07 10:22:24', '.', 1, NULL, '2025-11-07 13:22:24'),
(218, 'CHECHU CORREA', 'AV SAN MARTIN 15 ', '(362) 474-5555', 1111111111, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENTE WALTER ', 1, NULL, '2025-11-07 20:32:19'),
(219, 'RAMON KIOSCO EL PORTE', 'AV EDISON Y CALLE 28 ', '(362) 521-3961', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-07 17:37:52', '.', 1, NULL, '2025-11-07 20:37:52'),
(220, 'EDITH MINIMARKET ', 'OBLIGADO 925 ', '(362) 523-3315', 1111111111, '__-________-_', 2, 'W@W', 2, -12, '2025-11-07 17:46:11', 'CLIENTE', 1, NULL, '2025-11-07 20:46:11'),
(221, 'RIVERO FRANCISCO', 'AUSTRALIA 653', '(362) 474-5668', 2020202020, '__-________-_', 2, 'W@W', 1, 5, '2025-11-20 19:50:32', 'CLIENTE', 1, NULL, '2025-11-20 22:50:32'),
(222, 'LILIANA - REVENDEDORA', 'AV. NICOLáS ROJAS ACOSTA 702', '(362) 480-6768', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-08 13:28:28', 'CLIENTE', 1, NULL, '2025-11-08 16:28:28'),
(223, 'LAURA ESCOBAR ', 'URUGUAY Y CHACO (FONTANA) ', '(362) 410-5693', 1111111111, '__-________-_', 2, 'W@W', 2, 2, '2025-11-11 19:24:17', 'PATRICIA REVENDEDORA FONTANA', 1, NULL, '2025-11-11 22:24:17'),
(224, 'DELFA REVENDEDORA FONTANA ', '73 VIVIENDAS MIGUEL CANE ENTRE PJE CUCUI Y BS AS', '(362) 408-6163', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-10 12:12:09', 'CLIENTE JORGE ', 1, NULL, '2025-11-10 15:12:09'),
(225, 'LUCI BARBER REVENDEDOR FONTANA ', 'CALLE TIERRA DEL FUEGO FONTANA', '(362) 406-1796', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-10 12:16:33', 'CLIENTE', 1, NULL, '2025-11-10 15:16:33'),
(226, 'ARACELI REVENDEDORA FONTANA', 'MARCONI ENTRE PJE PUJOL Y BS AS', '(362) 522-8503', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-10 12:20:18', '.', 1, NULL, '2025-11-10 15:20:18'),
(227, 'DIRECCIóN DE TRABAJO 1ER PISO', 'OBLIGADO 130 1ER PISO', '(362) 469-3873', 2020202020, '__-________-_', 2, 'W@W', 1, 1, '2025-11-10 17:06:46', 'CLIENTE COLO', 1, NULL, '2025-11-10 20:06:46'),
(228, 'ARQ AMELIA OBRAS PUBLICAS 1ER PISO', 'MARCELO T. DE ALVEAR 250 1ER PISO', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 1, 1, '2025-11-10 17:13:32', 'CLIENTE ', 1, NULL, '2025-11-10 20:13:32'),
(229, 'VERDULERIA HUGO', 'AV LAPRIDA 850 ', '(362) 403-7014', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-11 10:40:57', '.', 1, NULL, '2025-11-11 13:40:57'),
(230, 'NOELIA MARTINEZ OBRAS PUBLICAS ', 'MARCELO T DE ALVEAR 250 ', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 1, 1, '2025-11-11 10:42:58', 'CLIENTE', 1, NULL, '2025-11-11 13:42:58'),
(231, 'NATALIA MENDEZ ', 'M LESTANI Y VILLA CARLOS PAZ', '(362) 527-5523', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-11 10:54:40', '.', 1, NULL, '2025-11-11 13:54:40'),
(232, 'FLORENCIA CRESPO ', 'JOSE HERNANDEZ 73', '(362) 450-4897', 1111111111, '__-________-_', 2, 'W@W', 1, 1, '2025-11-11 16:06:28', 'CLIENTE WALTER', 1, NULL, '2025-11-11 19:06:28'),
(233, 'LAURA DE ACEBAL ', 'PJE CEIBO ESQ PJE ALVEAR FONTANA', '(362) 406-2537', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-22 09:44:27', '.', 1, NULL, '2025-11-22 12:44:27'),
(234, 'ADRIAN', 'MASILLA 450 ESQUINA AV MORENO', '(373) 155-0370', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-11 18:57:17', '.', 1, NULL, '2025-11-11 21:57:17'),
(235, 'NICOLAS FERNANDEZ', ' 506 VIVIENDA MZ 12 PC 11', '(362) 411-3597', 1111111111, '__-________-_', 2, 'W@W', 2, 2, '2025-11-19 09:57:35', 'CLIENTE JORGE ', 1, NULL, '2025-11-19 12:57:35'),
(236, 'ERICA RODRIGUEZ', 'SD', '(549) 364-4228', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-20 18:14:14', '.', 1, NULL, '2025-11-20 21:14:14'),
(237, 'CARO TOMEI ', 'PASAJE FORTíN AGUILAR 3699  ', '(362) 412-4950', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-12 16:49:29', '.', 1, NULL, '2025-11-12 19:49:29'),
(238, 'BENJAMIN DIAZ', 'CARMEN VIUDA DE ROS 270', '(362) 483-4737', 1111111111, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-12 16:54:55', '.', 1, NULL, '2025-11-12 19:54:55'),
(239, 'GABRIEL PEREZ', 'NICOLAS ROJA ACOSTA 702', '(362) 452-5698', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-12 16:58:07', '.', 1, NULL, '2025-11-12 19:58:07'),
(240, 'AYRTON OJEDA ', '263 VIVIENDA  MZ87 PC1', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-12 17:00:25', '.', 1, NULL, '2025-11-12 20:00:25'),
(241, 'MARIA JUAREZ', 'C. ZORRILLA LEóN 1048', '(362) 422-6752', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-14 17:04:28', '.', 1, NULL, '2025-11-14 20:04:28'),
(242, 'PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)', 'PJE ALVEAR Y PJE CEIBO ', '(362) 406-2537', 2020202020, '20-________-_', 2, 'EMAIL@EMAIL.COM', 1, 2, '2025-11-18 12:23:27', '.', 1, NULL, '2025-11-18 23:00:13'),
(243, 'VERDULERIA LOS HERMANOS ', 'AV. 25 DE MAYO 3800', '(362) 571-5251', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-13 11:28:44', 'CLIENTE JORGE ', 1, NULL, '2025-11-13 14:55:09'),
(244, 'GARCIA MAIDA MARLEN', 'AV BELGRANO 2926', '(362) 460-6773', 1111111111, '__-________-_', 2, 'W@W', 2, 2, '2025-11-18 18:13:46', 'CLIENTE ', 1, NULL, '2025-11-18 21:13:46'),
(245, 'CLAUDIA ', 'MZA 20 PC 9 BARRIO JUAN BAUTISTA ALBERDI', '(362) 472-9345', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-14 10:02:59', 'CLIENTE KOLO', 1, NULL, '2025-11-14 13:02:59'),
(246, 'RAQUEL VILLALBA', 'PJE BELGRANO 3980 B° 6 DE SEPTIEMBRE (ENTRE CALL 16 Y SIERVO LOS PANTANOS Y BELGRANO Y DONOVAN)', '(362) 411-1645', 2020202020, '__-________-_', 2, 'W@W', 1, 1, '2025-11-14 10:04:11', 'DISPENSER 14 DE NOVIEMBRE 2025', 1, NULL, '2025-11-14 13:04:11'),
(247, 'RICARDO PRIETO', 'AV PIACENTINI 1434', '(379) 485-1185', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 0, NULL, '.', 1, NULL, '2025-11-14 20:06:49'),
(248, 'ADITA ', 'JULIO TORT ENTRE HAITI Y REP DOMINICANA', '(362) 463-8188', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-15 11:12:39', 'CLIENTE CRISTAL', 1, NULL, '2025-11-15 14:12:39'),
(249, 'DAIANA GISEL LOPEZ ', 'AV ALBERDI Y AV SOBERANIA B° MALVINAS', '(362) 406-4303', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-17 11:13:31', 'CLIENTE', 1, NULL, '2025-11-17 14:13:31'),
(250, 'SEBASTIAN CARLEVARIS', 'CHILE 105 BARRANQUERAS ', '(362) 402-9241', 1111111111, '__-________-_', 2, 'W@W', 1, 1, '2025-11-18 19:49:40', 'CLIENTE JORGE ', 1, NULL, '2025-11-18 22:49:40'),
(251, 'JULIO CESAR AGRONOMO', 'ALEM 278 DTO 3', '(362) 480-1787', 43616705, '__-________-_', 2, 'W@W', 1, 1, '2025-11-18 20:15:35', 'CLIENTE JORGE ', 1, NULL, '2025-11-18 23:15:35'),
(252, 'SANDRA CARDOZO', 'GIACHINO 2268-2224 B SAN CAYETANO MZA TIRA 32 CASA 651 ', '(362) 549-7007', 2020202020, '__-________-_', 2, 'W@W', 1, 1, '2025-11-19 09:47:06', 'CLIENTE', 1, NULL, '2025-11-19 12:47:06'),
(253, 'DEBORA MARIEL', 'OBLIGADO 1300 ', '3704', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-19 11:58:00', '.', 1, NULL, '2025-11-19 14:58:00'),
(254, 'PUERTO GRACIELA ', 'MAC LEAN 2550', '(___) ___-____', 1111111111, '__-________-_', 2, 'W@W', 2, 1, '2025-11-21 10:36:18', 'CLIENTE KOLO', 1, NULL, '2025-11-21 13:36:18'),
(255, 'SILVIO PERINI', 'AV. BELGRANO 151  -EDIFICIO BREÑAS OF.2', '(362) 400-3385', 2020202020, '__-________-_', 2, 'W@W', 1, 0, NULL, 'CLIENTE  JORGE', 1, NULL, '2025-11-20 22:03:02'),
(256, 'ALBERTO ANTONIO KIOSCO EL BARTO ', 'AV 9 DE JULIO 1050 ', '(362) 473-0777', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-20 19:09:53', 'CLIENTE KOLO', 1, NULL, '2025-11-20 22:09:53'),
(257, 'JESSICA EDIT ZARZA ', 'FRAY BERTACA E NIñOS BORONAT Y CUBELLS', '(362) 400-3862', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-21 08:11:29', '.', 1, NULL, '2025-11-21 11:11:29'),
(258, 'ESTELA ALMIRON', 'AV SAN MARIN ESQUINA SAN JUAN (PASAJE SAN LUIS) BARRANQUERAS', '(362) 427-2263', 2020202020, '__-________-_', 2, 'W@W', 2, 1, '2025-11-21 12:09:56', 'CRISTAL', 1, NULL, '2025-11-21 15:09:56'),
(259, 'ANTONELA ', 'BOSCH E RODRIGUEZ PEñA Y PJE RODRIGUEZ PEñA ', '(362) 420-1890', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-21 18:26:53', '.', 1, NULL, '2025-11-21 21:26:53'),
(260, 'TREBOL MINIMARKET BARRANQUERAS', 'GUIRALDES E AYACUCHO Y PIROVANO BARRANQUERAS', '(362) 516-0244', 2020202020, '20', 2, 'EMAIL@EMAIL.COM', 1, 1, '2025-11-22 11:42:24', '.', 1, NULL, '2025-11-22 14:42:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicioniva`
--

CREATE TABLE `condicioniva` (
  `idcondicioniva` int(11) NOT NULL,
  `nombre` varchar(4) NOT NULL,
  `obs` text NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `obsdel` text NOT NULL,
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `condicioniva`
--

INSERT INTO `condicioniva` (`idcondicioniva`, `nombre`, `obs`, `activo`, `obsdel`, `fechacreacion`) VALUES
(1, 'RI', 'RESPONSABLE INSCRIPTO', 1, '', '2025-06-03 02:12:15'),
(2, 'CF', 'CONSUMIDOR FINAL', 1, '', '2025-06-03 02:12:15'),
(3, 'M', 'MONOTRIBUTISTA', 1, '', '2025-06-03 02:12:15'),
(4, 'EX', 'IVA EXENTO', 1, '', '2025-06-03 02:12:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datostitular`
--

CREATE TABLE `datostitular` (
  `iddatostitular` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `nick` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `web` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datostitular`
--

INSERT INTO `datostitular` (`iddatostitular`, `nombre`, `nick`, `direccion`, `telefono`, `web`) VALUES
(1, 'Bgtoner', 'BGTONER', 'Parque Urbano 1 mz 82 c2', '3704299434', 'www.bgtoner.com.ar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion_productos`
--

CREATE TABLE `descripcion_productos` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `activo` int(11) DEFAULT '1',
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `empresa` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL,
  `cuit` text NOT NULL,
  `web` text NOT NULL,
  `detalle1` text NOT NULL,
  `detalle2` text NOT NULL,
  `fotorecibo` text NOT NULL,
  `backend` text NOT NULL,
  `iconochicoblanco` text NOT NULL,
  `iconochiconegro` text NOT NULL,
  `logoblancobloque` text NOT NULL,
  `logonegrobloque` text NOT NULL,
  `logoblancolineal` text NOT NULL,
  `logonegrolineal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `empresa`, `direccion`, `telefono`, `email`, `cuit`, `web`, `detalle1`, `detalle2`, `fotorecibo`, `backend`, `iconochicoblanco`, `iconochiconegro`, `logoblancobloque`, `logonegrobloque`, `logoblancolineal`, `logonegrolineal`) VALUES
(1, 'SWEET', 'RIVADAVIA 567 - FORMOSA', '(370)4421764', '', '', '', 'A1', 'DEJO CONSTANCIA DE QUE EL /LOS EQUIPOS SON DE MI PROPIEDAD, AUTORIZANDO A USTEDES EL PODER REALIZAR LAS PRUEBAS NECESARIAS PARA SU REPARACION.', 'vistas/img/empresa/logoimpreso.jpg', 'vistas/img/plantilla/back.png', 'vistas/img/plantilla/icono-blanco.png', 'vistas/img/plantilla/icono-negro.png', 'vistas/img/plantilla/logo-blanco-bloque.png', 'vistas/img/plantilla/logo-negro-bloque.png', 'vistas/img/plantilla/logo-blanco-lineal.png', 'vistas/img/plantilla/logo-negro-lineal.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `medio_pago` enum('EFECTIVO','TARJETA','TRANSFERENCIA','CHEQUE','CTA_CTE','VALE') NOT NULL DEFAULT 'EFECTIVO',
  `fecha_transaccion` date NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `obs` text NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `obsdel` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `nombre`, `importe`, `medio_pago`, `fecha_transaccion`, `id_categoria`, `id_usuario`, `obs`, `activo`, `obsdel`, `fecha`) VALUES
(2, 'mecanico ZR', 25000.00, 'EFECTIVO', '2025-07-04', 1, 65, 'Cable de embrague, cambio de carburador. puesta en marcha ', 1, '', '2025-07-21 12:27:35'),
(3, 'distrigas Tapas ', 7800.00, 'EFECTIVO', '2025-07-04', 1, 65, 'ver trans. o factura fecha', 1, '', '2025-07-22 20:28:24'),
(4, 'aceite de moto y camioneta', 28000.00, 'EFECTIVO', '2025-07-02', 1, 65, '', 1, '', '2025-07-22 20:29:31'),
(5, 'Reparaciones moto 110 ', 60000.00, 'EFECTIVO', '2025-07-22', 1, 65, 'mano de obra, focos, patas de apoyo. ', 1, '', '2025-07-22 20:31:52'),
(6, 'Combustible de camioneta', 80000.00, 'EFECTIVO', '2025-07-08', 1, 65, 'Dos cargas de 40mil. se recorrio los barrios alejados. ', 1, '', '2025-07-22 20:33:29'),
(7, 'combustible de moto', 35000.00, 'EFECTIVO', '2025-07-14', 1, 65, 'combustible de las 2 motos', 1, '', '2025-07-22 20:34:33'),
(8, 'productos de limpieza ', 45000.00, 'EFECTIVO', '2025-07-02', 1, 65, '', 1, '', '2025-07-22 20:35:30'),
(9, 'cubierta de camioneta ', 57000.00, 'EFECTIVO', '2025-07-22', 1, 65, 'mano de obra, cubierta, cambio de pico. ', 1, '', '2025-07-22 20:36:35'),
(10, 'distrigas insumos manijas ', 6600.00, 'EFECTIVO', '2025-07-22', 1, 65, 'insumos para la planta ver factura. fecha', 1, '', '2025-07-22 20:37:50'),
(11, 'uber de elementos', 6000.00, 'EFECTIVO', '2025-07-05', 1, 65, 'un pedido que se pago en la planta', 1, '', '2025-07-22 20:38:59'),
(12, 'Cambui de Ruleman Moto ZR cross', 12000.00, 'EFECTIVO', '2025-07-16', 1, 65, 'Ruleman trasero, falta arreglar el delantero', 1, '', '2025-07-22 20:40:33'),
(13, 'Gas oil de camioneta', 15000.00, 'EFECTIVO', '2025-07-21', 1, 65, 'se cargo ni bien salio del taller para traerla', 1, '', '2025-07-22 20:43:06'),
(14, 'Cintas para oficina', 3500.00, 'EFECTIVO', '2025-08-13', 3, 65, '', 1, '', '2025-08-13 22:46:17'),
(15, 'Insumos de para cargar agua', 14210.39, 'EFECTIVO', '2025-08-18', 3, 65, 'Guantes de nitrilo\r\nJeringa \r\nAseplus Alcohol \r\n', 1, '', '2025-08-18 19:00:42'),
(16, 'combustible de moto', 5000.00, 'EFECTIVO', '2025-08-19', 2, 65, 'Carga de nafta super para moto de reparto ', 1, '', '2025-08-19 22:15:57'),
(17, 'Filtro Cartucho para planta de agua', 18000.00, 'EFECTIVO', '2025-08-20', 3, 65, 'Cartuchos para filtro de 1micron y 5micrones', 1, '', '2025-08-20 22:55:57'),
(18, 'Carga de combustible para camión', 50000.00, 'EFECTIVO', '2025-08-20', 2, 65, 'Combustible diésel para Camión', 1, '', '2025-08-20 22:57:26'),
(19, 'Carga de combustible ', 3000.00, 'EFECTIVO', '2025-08-21', 2, 65, 'Carga de combustible a moto de reparto ', 1, '', '2025-08-22 00:00:29'),
(20, 'Combustible de camioneta', 30000.00, 'EFECTIVO', '2025-08-22', 2, 65, 'carga de combustible de camioneta ', 1, '', '2025-08-22 18:06:59'),
(21, 'Carga de combustible', 15000.00, 'EFECTIVO', '2025-08-22', 2, 65, 'Carga de combustible a camioneta de reparto ', 1, '', '2025-08-23 00:27:20'),
(22, 'Carga de combustible', 8000.00, 'EFECTIVO', '2025-08-23', 2, 65, 'Carga de combustible a camioneta de reparto ', 1, '', '2025-08-23 18:49:21'),
(23, 'Carga de combustible', 5000.00, 'EFECTIVO', '2025-08-25', 2, 65, 'Carga de combustible a moto de reparto', 1, '', '2025-08-25 15:34:22'),
(24, 'Compra de reactivo de cloro ', 3000.00, 'EFECTIVO', '2025-08-27', 3, 65, 'Compra de reactivo de cloro', 1, '', '2025-08-27 15:04:16'),
(25, 'Carga de Combustible ', 12000.00, 'EFECTIVO', '2025-08-30', 2, 65, 'Carga de combustible a camioneta de repartos', 1, '', '2025-08-30 15:33:15'),
(26, 'Impresiones de comodato, folio y lapicera negra', 2050.00, 'EFECTIVO', '2025-08-30', 4, 65, 'Impresiones, folio y lapicera', 1, '', '2025-08-30 15:34:14'),
(27, 'Cable para bateria ', 7000.00, 'EFECTIVO', '2025-08-30', 5, 65, 'Cable para empalme cable d batería de camioneta de reparto ', 1, '', '2025-08-30 15:35:10'),
(28, 'Carga de combustible', 10000.00, 'EFECTIVO', '2025-09-02', 2, 65, 'carga de combustible a camioneta de repartos', 1, '', '2025-09-02 16:19:45'),
(29, 'Carga de combustible', 20000.00, 'EFECTIVO', '2025-09-03', 2, 65, 'carga de combustible a camioneta de repartos', 1, '', '2025-09-03 17:43:21'),
(30, 'viatico', 10000.00, 'EFECTIVO', '2025-09-03', 1, 65, 'viáticos', 1, '', '2025-09-03 23:50:13'),
(31, 'viatico', 10000.00, 'EFECTIVO', '2025-09-03', 1, 65, 'viáticos', 1, '', '2025-09-03 23:50:14'),
(32, 'compra de insumos para la planta ', 55500.00, 'EFECTIVO', '2025-09-04', 3, 65, 'insumos de uso para la planta de agua ', 1, '', '2025-09-04 16:20:42'),
(33, 'gasto de combustible', 27500.00, 'EFECTIVO', '2025-09-06', 2, 65, 'carga de combustible a camioneta de repartos', 1, '', '2025-09-06 11:51:21'),
(34, 'paga para empujes', 10000.00, 'EFECTIVO', '2025-09-06', 6, 65, 'se le pago a personas para empujar camioneta de reparto ', 1, '', '2025-09-06 11:51:55'),
(35, 'paga a mecánico de auxilio ', 50000.00, 'EFECTIVO', '2025-09-06', 6, 65, 'se le pago a un mecánico para auxiliar a camioneta de reparto ', 1, '', '2025-09-06 11:52:59'),
(36, 'revicion de camioneta de repaeto ', 25000.00, 'EFECTIVO', '2025-09-09', 5, 65, 'diagnostico de camioneta de reparto ', 1, '', '2025-09-09 23:12:14'),
(37, 'cambio de rueda de carrito de reparto ', 18500.00, 'EFECTIVO', '2025-09-09', 5, 65, 'cambio de cubierta, emparche de camara y cambio de rueda ', 1, '', '2025-09-09 23:13:28'),
(38, 'Carga de combustible', 5000.00, 'EFECTIVO', '2025-09-10', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-10 15:36:17'),
(39, 'pago a uber', 1650.00, 'EFECTIVO', '2025-09-10', 6, 65, 'pago a uber para volver a la planta ', 1, '', '2025-09-10 23:14:44'),
(40, 'Plomería', 65000.00, 'EFECTIVO', '2025-09-12', 5, 65, 'plomería mas repuestos para inodoro', 1, '', '2025-09-12 13:44:10'),
(41, 'carga de combustible moto', 3500.00, 'EFECTIVO', '2025-09-13', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-13 16:25:33'),
(42, 'cambio de cubierta', 5000.00, 'EFECTIVO', '2025-09-13', 6, 65, 'cambio de camara y cubierta a carrito de reparto ', 1, '', '2025-09-13 16:26:08'),
(43, 'Carga de combustible', 3000.00, 'EFECTIVO', '2025-09-16', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-16 15:13:35'),
(44, 'Carga de combustible', 4000.00, 'EFECTIVO', '2025-09-17', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-17 15:32:36'),
(45, 'Carga de combustible', 4000.00, 'EFECTIVO', '2025-09-17', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-18 00:20:47'),
(46, 'carga de combustible', 4000.00, 'EFECTIVO', '2025-09-24', 2, 65, 'carga de combustible para moto de reparto ', 1, '', '2025-09-24 15:16:35'),
(47, 'inflada de ruedas', 1000.00, 'EFECTIVO', '2025-09-24', 6, 65, 'inflada de ruedas de carrito de reparto y moto de reparto ', 1, '', '2025-09-24 15:17:03'),
(48, 'seños de calor para bidones', 25000.00, 'EFECTIVO', '2025-09-25', 3, 65, 'seños de calor para bidones de 20lts', 1, '', '2025-09-25 23:41:05'),
(49, 'Medidor de cloro y ph', 15000.00, 'EFECTIVO', '2025-09-25', 3, 65, 'medidor de cloro y ph', 1, '', '2025-09-25 23:41:36'),
(50, 'aceite para moto', 10000.00, 'EFECTIVO', '2025-09-25', 3, 65, 'aceito para motor para moto de reparto ', 1, '', '2025-09-25 23:42:04'),
(51, 'carga de cobustible', 5000.00, 'EFECTIVO', '2025-09-26', 2, 65, 'carga de combustible a moto de reparto ', 1, '', '2025-09-26 23:44:32'),
(52, 'Guantes de Latex', 13800.00, 'EFECTIVO', '2025-10-04', 3, 65, 'guantes de latex, en caja', 1, '', '2025-10-04 12:47:46'),
(53, 'Carga de combustible', 20.00, 'EFECTIVO', '2025-10-09', 2, 65, '', 1, '', '2025-10-09 11:06:37'),
(54, 'almuerzo', 20000.00, 'EFECTIVO', '2025-10-09', 1, 65, 'Almuerzo para tres personas ', 1, '', '2025-10-10 12:45:15'),
(55, 'DISTRIGAS', 22000.00, 'EFECTIVO', '2025-10-11', 3, 65, 'TAPAS DE BIDONES DE 20LTS \r\n', 1, '', '2025-10-11 15:39:08'),
(56, 'GASOIL ', 20000.00, 'EFECTIVO', '2025-10-11', 2, 65, 'GASOIL PARA LA RAGER ', 1, '', '2025-10-11 15:39:55'),
(57, 'Insumos de para cargar agua', 215000.00, 'EFECTIVO', '2025-10-11', 3, 2, '2500 tapas ', 1, '', '2025-10-11 17:50:38'),
(58, 'Insumos de para cargar agua', 3000000.00, 'EFECTIVO', '2025-10-11', 3, 2, '600 BIDONES', 1, '', '2025-10-11 17:52:56'),
(59, 'DISTRIGAS ', 51000.00, 'EFECTIVO', '2025-10-14', 3, 65, 'TAPAS \r\nSELLOS DE CALOR ', 1, '', '2025-10-14 13:47:15'),
(60, 'REPUESTOS SOLDADURAS', 25000.00, 'EFECTIVO', '2025-10-14', 5, 65, 'SOLDADURAS\r\n', 1, '', '2025-10-14 13:48:21'),
(61, 'GASTO DE WALTER', 17500.00, 'EFECTIVO', '2025-10-14', 3, 65, '', 1, '', '2025-10-14 13:49:31'),
(62, 'envio de etiquetas', 4400.00, 'EFECTIVO', '2025-10-14', 3, 65, 'moto uber, envio de etiquetas ', 1, '', '2025-10-15 11:43:59'),
(63, 'comida', 15600.00, 'EFECTIVO', '2025-10-14', 1, 65, '', 1, '', '2025-10-15 12:22:04'),
(64, 'Carga de combustible', 32000.00, 'EFECTIVO', '2025-10-16', 2, 65, 'COMBUSTIBLE', 1, '', '2025-10-17 12:55:02'),
(65, 'uber moto etiquetas', 4400.00, 'EFECTIVO', '2025-10-18', 6, 65, 'etiquetas', 1, '', '2025-10-18 11:50:07'),
(66, 'compra de detergente ', 1500.00, 'EFECTIVO', '2025-10-22', 3, 65, 'detergente ', 1, '', '2025-10-22 14:49:29'),
(67, 'electricista  ', 32000.00, 'EFECTIVO', '2025-10-23', 5, 65, 'arreglo de la maquina de carga ', 1, '', '2025-10-29 15:46:30'),
(68, 'almuerzo ', 11.00, 'EFECTIVO', '2025-10-23', 1, 65, '', 1, '', '2025-10-23 11:44:31'),
(69, 'dos biromes y un corrector', 4000.00, 'EFECTIVO', '2025-10-23', 4, 65, '', 1, '', '2025-10-23 11:45:21'),
(70, 'FUMIGACION. Control de plagas ', 130000.00, 'EFECTIVO', '2025-10-28', 6, 65, 'por un servicio de fumigación ', 1, '', '2025-10-28 12:48:48'),
(71, 'PAGO SAMEEP', 10115.36, 'EFECTIVO', '2025-10-29', 6, 65, 'SAMEEP LIBRE DE DEUDA', 1, '', '2025-10-29 15:47:54'),
(72, 'MANCUERNAS', 10000.00, 'EFECTIVO', '2025-10-29', 3, 65, '', 1, '', '2025-10-29 15:48:23'),
(73, 'DIESEL ', 30000.00, 'EFECTIVO', '2025-10-29', 2, 65, '', 1, '', '2025-10-29 15:49:15'),
(74, 'ACEITE UREA  JUMPY', 72000.00, 'EFECTIVO', '2025-10-29', 2, 65, 'PARA CATALIZADORES', 1, '', '2025-10-29 15:50:12'),
(75, 'ACEITE JUMPY ', 61130.00, 'EFECTIVO', '2025-10-29', 2, 65, 'ACEITE X 4LTS', 1, '', '2025-10-29 15:55:57'),
(76, 'ARREGLOS DE INFRAESTRUCTURA ', 288105.00, 'EFECTIVO', '2025-10-30', 5, 65, 'ARREGLOS PARA LA HUMEDAD DEL TECHO', 1, '', '2025-10-30 19:50:43'),
(77, 'bolosas de residuo', 5000.00, 'EFECTIVO', '2025-11-01', 3, 65, '2 rollos de 20 unidades y 1 pack de bolsa de 10 unidades  de 1m x 80cm', 1, '', '2025-11-01 15:26:08'),
(78, 'combustible ', 19999.00, 'EFECTIVO', '2025-11-03', 2, 65, 'combustible ', 1, '', '2025-11-03 11:26:47'),
(79, 'Carga de combustible', 9999.93, 'EFECTIVO', '2025-11-03', 2, 65, '', 1, '', '2025-11-04 12:34:29'),
(80, 'Combustible de camioneta', 14685.22, 'EFECTIVO', '2025-11-04', 2, 65, '', 1, '', '2025-11-04 12:35:02'),
(81, 'compra de detergente ', 1250.00, 'EFECTIVO', '2025-11-06', 3, 65, '', 1, '', '2025-11-06 11:31:22'),
(82, 'Retiro Efectivo ', 20000.00, 'EFECTIVO', '2025-11-06', 3, 65, 'Walter', 1, '', '2025-11-06 15:33:36'),
(83, 'Compra corralon ferreteria Walter', 43000.00, 'EFECTIVO', '2025-11-06', 3, 65, 'Fijador 4 L\r\n2 pinceles\r\n2 rodillos ', 1, '', '2025-11-06 15:38:32'),
(84, 'Compra Cepillo limpia bidones x 2 unidades', 42000.00, 'EFECTIVO', '2025-11-07', 3, 65, 'Compro Manuel en Distrigas', 1, '', '2025-11-07 12:45:32'),
(85, 'carga de combustible moto', 2000.00, 'EFECTIVO', '2025-11-07', 2, 65, 'Cargo Hector ', 1, '', '2025-11-07 12:46:04'),
(86, 'Uber Lisandro', 3700.00, 'EFECTIVO', '2025-11-06', 6, 65, 'Uber desde el taller en Barranqueras donde quedo la Jumpy hasta la planta', 1, '', '2025-11-07 12:47:05'),
(87, 'Arreglo carrito reparto', 68000.00, 'EFECTIVO', '2025-11-06', 5, 65, '', 1, '', '2025-11-07 13:39:09'),
(88, 'Compra Aceite y filtro de aceite Citroen Jumpy ', 93998.96, 'EFECTIVO', '2025-11-07', 5, 65, 'El mundo del repuesto\r\nFC A 74-1743\r\nWalter', 1, '', '2025-11-07 14:19:35'),
(89, 'Compra Caja de broches 24/6 (1000 u) ', 2750.00, 'EFECTIVO', '2025-11-07', 4, 65, 'broches para bolsa de carbon\r\nKiosco Azalea Jorge Newbery', 1, '', '2025-11-07 20:35:26'),
(90, 'Filtro de Aceite Jumpy', 25155.90, 'EFECTIVO', '2025-11-07', 5, 65, 'Walter', 1, '', '2025-11-07 22:31:17'),
(91, 'Uber Lisandro Mecanico Moto', 1400.00, 'EFECTIVO', '2025-11-05', 6, 65, '', 1, '', '2025-11-07 22:39:29'),
(92, 'Carga nafta ', 60000.00, 'EFECTIVO', '2025-11-07', 2, 65, '', 1, '', '2025-11-08 11:03:09'),
(93, 'Compra grapas 14mm para engrapadora', 3000.00, 'EFECTIVO', '2025-11-08', 4, 65, 'Ferreteria JIP FC C 2-2976\r\nHector/Jenny', 1, '', '2025-11-08 14:15:45'),
(94, 'Uber Hector/Jenny ', 2700.00, 'EFECTIVO', '2025-11-08', 6, 65, 'Ida \r\nreparto', 1, '', '2025-11-08 14:19:40'),
(95, 'Uber Hector/Jenny ', 3000.00, 'EFECTIVO', '2025-11-08', 6, 65, 'Vuelta\r\nEntrega folletos', 1, '', '2025-11-08 14:21:06'),
(96, 'PAGO ALQUILER', 378901.00, 'EFECTIVO', '2025-11-08', 6, 65, '', 1, '', '2025-11-08 14:43:22'),
(97, 'Arreglo de cerradura con 3 llaves', 60000.00, 'EFECTIVO', '2025-11-10', 5, 65, 'Cerrajeria Avenida ', 1, '', '2025-11-10 22:20:47'),
(98, 'Carga Combustible ', 29999.98, 'EFECTIVO', '2025-11-11', 2, 65, 'WALTER', 1, '', '2025-11-11 12:05:14'),
(99, 'Carga Combustible moto 110', 6500.00, 'EFECTIVO', '2025-11-11', 2, 65, '', 1, '', '2025-11-11 19:20:21'),
(100, '5 Chombas pique algodon ', 142500.00, 'EFECTIVO', '2025-11-12', 6, 65, 'Transferencia ', 1, '', '2025-11-12 14:13:01'),
(101, 'compra de detergente ', 3000.00, 'EFECTIVO', '2025-11-13', 3, 65, 'Hector', 1, '', '2025-11-13 11:30:33'),
(102, 'Carga de combustible', 300009.96, 'EFECTIVO', '2025-11-12', 2, 65, 'Walter', 1, '', '2025-11-13 12:03:32'),
(103, 'Compra insumos de limpieza', 23498.98, 'EFECTIVO', '2025-11-13', 3, 65, 'INTERQUIM \r\nJENNY', 1, '', '2025-11-13 12:37:14'),
(104, 'FUMIGACION. Control de plagas ', 90000.00, 'EFECTIVO', '2025-07-15', 5, 65, 'Fumichaco X 1-349', 1, '', '2025-11-13 20:23:58'),
(105, 'Cemento x 2', 12000.00, 'EFECTIVO', '2025-11-13', 5, 65, 'Cascia SRL ', 1, '', '2025-11-13 20:24:36'),
(106, 'Camara de inspección', 36500.00, 'EFECTIVO', '2025-11-13', 5, 65, 'Casia SRL ', 1, '', '2025-11-13 20:25:29'),
(107, 'COMPRA Contador de litros ', 46050.00, 'TRANSFERENCIA', '2025-11-13', 6, 65, '', 1, '', '2025-11-13 22:49:18'),
(111, 'Combustible de camioneta', 10000.00, 'EFECTIVO', '2025-11-15', 2, 65, 'LISANDRO', 1, '', '2025-11-15 12:31:16'),
(112, 'Materiales Sanitarios', 40000.00, 'EFECTIVO', '2025-11-15', 5, 65, 'HECTOR (CU)', 1, '', '2025-11-15 12:31:54'),
(113, 'Seña Impresion etiquetas ', 54000.00, 'TRANSFERENCIA', '2025-11-14', 3, 65, '1000 U - Grafica del Nea ', 1, '', '2025-11-17 12:44:09'),
(114, 'Almuerzo de personal', 30000.00, 'EFECTIVO', '2025-11-15', 1, 65, '3 Docenas de empanadas', 1, '', '2025-11-17 12:45:27'),
(115, 'Carga combustible zanella zr', 6500.00, 'EFECTIVO', '2025-11-17', 2, 65, 'LISANDRO', 1, '', '2025-11-17 13:11:09'),
(116, 'materiales plomeria ', 72115.31, 'CTA_CTE', '2025-11-17', 5, 65, 'No salio de CAJA \r\nWALTER\r\nAZ Sanitarios FC A 2-5736', 1, '', '2025-11-17 14:15:48'),
(117, 'EXTRACCION DE CAJA GRANDE ', 20000.00, 'EFECTIVO', '2025-11-18', 5, 65, 'HECTOR (CU)\r\nNo justificado ', 1, '', '2025-11-19 21:48:46'),
(119, 'Compra precintos x 1000 unidades', 25000.00, 'EFECTIVO', '2025-11-19', 3, 65, 'Distrigas FC B 13-6298\r\nJORGE', 1, '', '2025-11-19 20:20:00'),
(120, 'Combustible de camioneta', 30010.08, 'EFECTIVO', '2025-11-18', 2, 65, 'Estacion de servicio 25 de mayo SRL \r\nFC A 12-24229\r\nWALTER', 1, '', '2025-11-19 20:21:03'),
(121, 'insumo libreria ', 10600.00, 'EFECTIVO', '2025-11-19', 4, 65, '', 1, '', '2025-11-19 20:21:38'),
(122, 'Manguera flotante ', 28633.05, 'EFECTIVO', '2025-11-19', 5, 65, 'SPA POOL SRL\r\nFC A 13-5894', 1, '', '2025-11-19 21:42:38'),
(123, 'Saca hojas vulcano', 16500.00, 'EFECTIVO', '2025-11-19', 5, 65, 'JOT Limpieza \r\nFC B 10-11579', 1, '', '2025-11-19 21:43:36'),
(124, 'Combustible HECTOR (CU)', 80000.00, 'EFECTIVO', '2025-11-18', 2, 65, 'No hay comprobante\r\nCorresponde a $100.000 de extracción de caja grande', 1, '', '2025-11-19 21:47:18'),
(125, 'gastos varios WALTER', 20000.00, 'EFECTIVO', '2025-11-18', 6, 65, 'No hay comprobante \r\nCorresponde a extraccion de caja grande', 1, '', '2025-11-19 21:48:02'),
(126, 'cuchara de albañil', 11000.00, 'EFECTIVO', '2025-11-20', 5, 65, 'Walter', 1, '', '2025-11-20 14:46:13'),
(127, 'com', 30000.00, 'EFECTIVO', '2025-11-20', 2, 65, 'Walter\r\nSin comprobante', 1, '', '2025-11-20 14:46:32'),
(128, 'Motouber envio etiquetas desde Grafica del nea', 2300.00, 'EFECTIVO', '2025-11-20', 3, 65, 'Jorge', 1, '', '2025-11-20 15:00:19'),
(129, 'Combustible de camioneta', 100000.00, 'EFECTIVO', '2025-11-21', 2, 65, 'Extraccion caja grande (HECTOR CU)\r\nEl Cruce SA \r\nFC A 27-9411', 1, '', '2025-11-21 15:11:00'),
(130, 'planchuela metal', 8700.00, 'EFECTIVO', '2025-11-21', 5, 65, 'Hierros Lider\r\nFC A 21-60986\r\nHECTOR CU', 1, '', '2025-11-21 15:11:50'),
(131, 'carga credito telefono ', 8000.00, 'EFECTIVO', '2025-11-22', 6, 65, '', 1, '', '2025-11-22 11:41:56'),
(132, 'combustible de moto', 10000.00, 'EFECTIVO', '2025-11-22', 2, 65, '', 1, '', '2025-11-22 12:12:47'),
(133, 'Rodillo x 2', 3200.00, 'EFECTIVO', '2025-11-22', 5, 65, 'DON HECTOR \r\nFC B 8-9451\r\nWALTER', 1, '', '2025-11-22 14:45:43'),
(134, 'Combustible JUMPY', 50000.00, 'EFECTIVO', '2025-11-22', 2, 65, 'Operadora de Estaciones de Servicios SA\r\nFC A 8426-29105\r\nLISANDRO\r\nCAJA GRANDE', 1, '', '2025-11-22 17:05:33'),
(135, 'Materiales Pintura', 51000.00, 'EFECTIVO', '2025-11-22', 5, 65, 'DON HECTOR\r\nWALTER\r\nCaja Grande\r\nSin Combrobante - Solo Presupuesto', 1, '', '2025-11-22 17:07:11'),
(136, 'Viaticos x 2', 18000.00, 'EFECTIVO', '2025-11-22', 1, 65, 'Lisandro \r\nJorge ', 1, '', '2025-11-22 17:45:48');

--
-- Disparadores `gastos`
--
DELIMITER $$
CREATE TRIGGER `tr_gastos_ai_movimiento` AFTER INSERT ON `gastos` FOR EACH ROW BEGIN
  IF NEW.medio_pago = 'EFECTIVO' THEN
    INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
    VALUES (NOW(), 'EGRESO', NEW.importe, CONCAT('Gasto efectivo: ', NEW.nombre, ' (ID ', NEW.id, ')'));
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modificacion_precios`
--

CREATE TABLE `modificacion_precios` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `accion` text NOT NULL,
  `porcentaje` text NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nrocomprobante`
--

CREATE TABLE `nrocomprobante` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nrocomprobante`
--

INSERT INTO `nrocomprobante` (`id`, `nombre`, `numero`) VALUES
(1, 'REGISTRO', 2),
(2, 'FC', 1738);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` text NOT NULL,
  `referencia` text NOT NULL,
  `importe` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `idventa`, `fecha`, `tipo`, `referencia`, `importe`) VALUES
(1, 1, '2025-07-24', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 220000),
(3, 3, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 4400),
(4, 4, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 4400),
(5, 5, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 4800),
(6, 6, '2025-07-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(7, 7, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 6600),
(8, 8, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 15000),
(9, 9, '2025-07-25', 'EFECTIVO', 'EFECTIVO', 8800),
(10, 10, '2025-08-06', 'EFECTIVO', 'EFECTIVO', 10000),
(11, 10, '2025-08-06', 'EFECTIVO', 'EFECTIVO', 0),
(12, 11, '2025-08-06', 'EFECTIVO', 'EFECTIVO', 24000),
(13, 12, '2025-08-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 7500),
(14, 13, '2025-08-12', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(15, 14, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 79500),
(16, 14, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 0),
(17, 15, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 12000),
(19, 17, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 12000),
(20, 18, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 4500),
(21, 19, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 2500),
(22, 20, '2025-08-12', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 353600),
(23, 21, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 7200),
(24, 22, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 2500),
(26, 24, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 6000),
(27, 25, '2025-08-12', 'EFECTIVO', 'EFECTIVO', 6000),
(28, 26, '2025-08-12', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(29, 27, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 10000),
(30, 28, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 3000),
(31, 29, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 5000),
(32, 30, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 1500),
(33, 31, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 2500),
(34, 32, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 5000),
(35, 33, '2025-08-13', 'EFECTIVO', 'EFECTIVO', 4500),
(36, 34, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 4500),
(39, 37, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 6000),
(40, 38, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 6000),
(41, 39, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 5000),
(42, 40, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 16000),
(43, 41, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 7500),
(44, 42, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 7200),
(45, 43, '2025-08-14', 'EFECTIVO', 'EFECTIVO', 6300),
(46, 44, '2025-08-15', 'EFECTIVO', 'EFECTIVO', 27000),
(49, 47, '2025-08-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(50, 48, '2025-08-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(51, 49, '2025-08-15', 'EFECTIVO', 'EFECTIVO', 60000),
(52, 50, '2025-08-16', 'EFECTIVO', 'EFECTIVO', 4400),
(53, 51, '2025-08-16', 'TRANSFERENCIA', 'TRANSFERENCIA', 12500),
(54, 52, '2025-08-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 8300),
(55, 53, '2025-08-18', 'EFECTIVO', 'EFECTIVO', 27000),
(56, 54, '2025-08-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 21600),
(57, 55, '2025-08-18', 'EFECTIVO', 'EFECTIVO', 2500),
(58, 56, '2025-08-18', 'EFECTIVO', 'EFECTIVO', 101000),
(59, 57, '2025-08-18', 'EFECTIVO', 'EFECTIVO', 10000),
(60, 58, '2025-08-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 4500),
(61, 59, '2025-08-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 23800),
(62, 60, '2025-08-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 15000),
(63, 60, '2025-08-18', 'EFECTIVO', 'EFECTIVO', 0),
(64, 61, '2025-08-19', 'EFECTIVO', 'EFECTIVO', 11000),
(65, 62, '2025-08-19', 'TRANSFERENCIA', 'TRANSFERENCIA', 2500),
(66, 63, '2025-08-19', 'EFECTIVO', 'EFECTIVO', 8000),
(67, 64, '2025-08-20', 'EFECTIVO', 'EFECTIVO', 7200),
(68, 65, '2025-08-20', 'EFECTIVO', 'EFECTIVO', 4500),
(69, 66, '2025-08-20', 'TRANSFERENCIA', 'TRANSFERENCIA', 60000),
(70, 67, '2025-08-21', 'EFECTIVO', 'EFECTIVO', 6600),
(71, 68, '2025-08-21', 'EFECTIVO', 'EFECTIVO', 5000),
(72, 69, '2025-08-21', 'EFECTIVO', 'EFECTIVO', 12500),
(73, 70, '2025-08-22', 'EFECTIVO', 'EFECTIVO', 9000),
(74, 71, '2025-08-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 7000),
(75, 72, '2025-08-22', 'EFECTIVO', 'EFECTIVO', 6000),
(76, 73, '2025-08-22', 'EFECTIVO', 'EFECTIVO', 75000),
(77, 74, '2025-08-22', 'EFECTIVO', 'EFECTIVO', 5000),
(78, 75, '2025-08-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 30000),
(79, 76, '2025-08-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(80, 77, '2025-08-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(81, 78, '2025-08-23', 'EFECTIVO', 'EFECTIVO', 5000),
(82, 79, '2025-08-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 2500),
(83, 80, '2025-08-25', 'EFECTIVO', 'EFECTIVO', 5000),
(84, 81, '2025-08-25', 'EFECTIVO', 'EFECTIVO', 3000),
(85, 82, '2025-08-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 3600),
(86, 83, '2025-08-25', 'EFECTIVO', 'EFECTIVO', 30600),
(87, 84, '2025-08-25', 'EFECTIVO', 'EFECTIVO', 2500),
(88, 85, '2025-08-25', 'EFECTIVO', 'EFECTIVO', 7000),
(89, 86, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 5000),
(90, 87, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 5000),
(91, 88, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 2500),
(92, 89, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 27000),
(93, 90, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 8000),
(94, 91, '2025-08-26', 'EFECTIVO', 'EFECTIVO', 10000),
(95, 92, '2025-08-27', 'EFECTIVO', 'EFECTIVO', 12400),
(96, 93, '2025-08-27', 'EFECTIVO', 'EFECTIVO', 5000),
(97, 94, '2025-08-27', 'EFECTIVO', 'EFECTIVO', 6200),
(98, 95, '2025-08-27', 'EFECTIVO', 'EFECTIVO', 23000),
(99, 96, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 27000),
(100, 97, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 27000),
(101, 98, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 27000),
(102, 99, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 6000),
(103, 100, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 5000),
(104, 101, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 5000),
(105, 102, '2025-08-28', 'EFECTIVO', 'EFECTIVO', 17500),
(106, 103, '2025-08-29', 'EFECTIVO', 'EFECTIVO', 7000),
(107, 104, '2025-08-30', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(108, 105, '2025-08-30', 'EFECTIVO', 'EFECTIVO', 8000),
(109, 106, '2025-08-30', 'EFECTIVO', 'EFECTIVO', 6000),
(110, 107, '2025-08-30', 'EFECTIVO', 'EFECTIVO', 312000),
(111, 108, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 14000),
(112, 109, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 12600),
(113, 110, '2025-09-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 1800),
(115, 112, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 6000),
(116, 113, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 15100),
(117, 114, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 3000),
(118, 115, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 9000),
(119, 116, '2025-09-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 3600),
(120, 117, '2025-09-01', 'EFECTIVO', 'EFECTIVO', 502000),
(121, 118, '2025-09-02', 'EFECTIVO', 'EFECTIVO', 3000),
(122, 119, '2025-09-02', 'EFECTIVO', 'EFECTIVO', 6500),
(123, 120, '2025-09-02', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(124, 121, '2025-09-02', 'TRANSFERENCIA', 'TRANSFERENCIA', 2500),
(125, 122, '2025-09-02', 'EFECTIVO', 'EFECTIVO', 5000),
(126, 123, '2025-09-02', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(127, 124, '2025-09-02', 'EFECTIVO', 'EFECTIVO', 6500),
(128, 125, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 20000),
(129, 126, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 3600),
(130, 127, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 26500),
(131, 128, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 2500),
(132, 129, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 6000),
(133, 130, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 27000),
(134, 131, '2025-09-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 18500),
(135, 132, '2025-09-03', 'EFECTIVO', 'EFECTIVO', 5000),
(136, 133, '2025-09-04', 'EFECTIVO', 'EFECTIVO', 8000),
(137, 134, '2025-09-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(138, 135, '2025-09-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(139, 136, '2025-09-04', 'EFECTIVO', 'EFECTIVO', 2500),
(140, 137, '2025-09-06', 'EFECTIVO', 'EFECTIVO', 5000),
(141, 138, '2025-09-06', 'EFECTIVO', 'EFECTIVO', 6000),
(142, 139, '2025-09-06', 'EFECTIVO', 'EFECTIVO', 5000),
(143, 140, '2025-09-06', 'EFECTIVO', 'EFECTIVO', 600000),
(144, 141, '2025-09-08', 'EFECTIVO', 'EFECTIVO', 6000),
(146, 143, '2025-09-08', 'EFECTIVO', 'EFECTIVO', 6000),
(147, 144, '2025-09-08', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(148, 145, '2025-09-09', 'TRANSFERENCIA', 'TRANSFERENCIA', 8000),
(149, 146, '2025-09-09', 'TRANSFERENCIA', 'TRANSFERENCIA', 16200),
(150, 147, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 5400),
(151, 148, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 12500),
(152, 149, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 8800),
(154, 151, '2025-09-09', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(155, 152, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 5000),
(156, 153, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 7500),
(157, 154, '2025-09-09', 'EFECTIVO', 'EFECTIVO', 10000),
(158, 155, '2025-09-10', 'EFECTIVO', 'EFECTIVO', 6500),
(159, 156, '2025-09-10', 'EFECTIVO', 'EFECTIVO', 10500),
(160, 157, '2025-09-10', 'EFECTIVO', 'EFECTIVO', 8000),
(161, 158, '2025-09-10', 'EFECTIVO', 'EFECTIVO', 156000),
(162, 159, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 60000),
(163, 160, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 9000),
(164, 161, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 5000),
(165, 162, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 27000),
(166, 163, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 27000),
(167, 164, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 10000),
(168, 165, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 6000),
(169, 166, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 8000),
(170, 167, '2025-09-12', 'TRANSFERENCIA', 'TRANSFERENCIA', 15200),
(171, 168, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 11300),
(172, 169, '2025-09-12', 'EFECTIVO', 'EFECTIVO', 5000),
(173, 170, '2025-09-13', 'EFECTIVO', 'EFECTIVO', 5000),
(174, 171, '2025-09-13', 'EFECTIVO', 'EFECTIVO', 9000),
(175, 172, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 7200),
(176, 173, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 5000),
(177, 174, '2025-09-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(178, 175, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 6000),
(179, 176, '2025-09-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 10000),
(180, 177, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 2500),
(181, 178, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 8000),
(182, 179, '2025-09-15', 'EFECTIVO', 'EFECTIVO', 5000),
(183, 180, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 2500),
(184, 181, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 1800),
(185, 182, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 6000),
(186, 183, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 9000),
(187, 184, '2025-09-16', 'TRANSFERENCIA', 'TRANSFERENCIA', 2500),
(188, 185, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 6500),
(189, 186, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 10000),
(190, 187, '2025-09-16', 'EFECTIVO', 'EFECTIVO', 5000),
(191, 188, '2025-09-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 159600),
(192, 189, '2025-09-17', 'EFECTIVO', 'EFECTIVO', 18000),
(193, 190, '2025-09-17', 'EFECTIVO', 'EFECTIVO', 11000),
(195, 192, '2025-09-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 11000),
(196, 193, '2025-09-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(197, 194, '2025-09-17', 'EFECTIVO', 'EFECTIVO', 5000),
(198, 195, '2025-09-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 8000),
(199, 196, '2025-09-17', 'EFECTIVO', 'EFECTIVO', 20000),
(200, 197, '2025-09-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 7000),
(201, 198, '2025-09-18', 'EFECTIVO', 'EFECTIVO', 17500),
(202, 198, '2025-09-18', 'EFECTIVO', 'EFECTIVO', -4900),
(203, 199, '2025-09-18', 'EFECTIVO', 'EFECTIVO', 5000),
(204, 200, '2025-09-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(205, 201, '2025-09-18', 'EFECTIVO', 'EFECTIVO', 27000),
(206, 202, '2025-09-18', 'EFECTIVO', 'EFECTIVO', 6000),
(207, 203, '2025-09-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(208, 204, '2025-09-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(209, 205, '2025-09-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(210, 206, '2025-09-19', 'EFECTIVO', 'EFECTIVO', 11000),
(211, 207, '2025-09-19', 'EFECTIVO', 'EFECTIVO', 8000),
(212, 208, '2025-09-19', 'EFECTIVO', 'EFECTIVO', 16000),
(213, 209, '2025-09-19', 'EFECTIVO', 'EFECTIVO', 260000),
(214, 210, '2025-09-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 12500),
(215, 211, '2025-09-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 8000),
(216, 212, '2025-09-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(217, 213, '2025-09-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(218, 214, '2025-09-22', 'EFECTIVO', 'EFECTIVO', 4000),
(219, 215, '2025-09-22', 'EFECTIVO', 'EFECTIVO', 2500),
(220, 216, '2025-09-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(221, 217, '2025-09-22', 'EFECTIVO', 'EFECTIVO', 9000),
(222, 218, '2025-09-22', 'EFECTIVO', 'EFECTIVO', 9000),
(223, 219, '2025-09-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(224, 220, '2025-09-23', 'EFECTIVO', 'EFECTIVO', 8000),
(225, 221, '2025-09-23', 'EFECTIVO', 'EFECTIVO', 5000),
(226, 222, '2025-09-23', 'EFECTIVO', 'EFECTIVO', 4500),
(227, 223, '2025-09-24', 'EFECTIVO', 'EFECTIVO', 6000),
(229, 225, '2025-09-24', 'EFECTIVO', 'EFECTIVO', 6000),
(230, 226, '2025-09-24', 'EFECTIVO', 'EFECTIVO', 6000),
(231, 227, '2025-09-24', 'EFECTIVO', 'EFECTIVO', 7200),
(232, 228, '2025-09-24', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(233, 229, '2025-09-25', 'EFECTIVO', 'EFECTIVO', 10000),
(234, 230, '2025-09-25', 'EFECTIVO', 'EFECTIVO', 3000),
(235, 231, '2025-09-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 9100),
(236, 232, '2025-09-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(238, 234, '2025-09-25', 'EFECTIVO', 'EFECTIVO', 6000),
(239, 235, '2025-09-26', 'TRANSFERENCIA', 'TRANSFERENCIA', 12500),
(240, 236, '2025-09-26', 'EFECTIVO', 'EFECTIVO', 10000),
(241, 237, '2025-09-26', 'EFECTIVO', 'EFECTIVO', 6400),
(243, 239, '2025-09-26', 'TRANSFERENCIA', 'TRANSFERENCIA', 23800),
(244, 240, '2025-09-26', 'EFECTIVO', 'EFECTIVO', 12000),
(245, 241, '2025-09-26', 'EFECTIVO', 'EFECTIVO', 290000),
(246, 242, '2025-09-26', 'EFECTIVO', 'EFECTIVO', 10000),
(247, 243, '2025-09-27', 'TRANSFERENCIA', 'TRANSFERENCIA', 36000),
(248, 244, '2025-09-27', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 7800),
(249, 245, '2025-09-27', 'EFECTIVO', 'EFECTIVO', 8000),
(251, 247, '2025-09-27', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 61200),
(252, 248, '2025-09-27', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(253, 249, '2025-09-27', 'EFECTIVO', 'EFECTIVO', 13000),
(254, 250, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 24000),
(255, 251, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 13000),
(256, 252, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 3000),
(257, 253, '2025-09-30', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 9100),
(258, 254, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 14800),
(259, 255, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 5000),
(260, 256, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 7800),
(261, 257, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 11700),
(262, 258, '2025-09-30', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(263, 259, '2025-09-30', 'EFECTIVO', 'EFECTIVO', 5000),
(264, 260, '2025-10-01', 'EFECTIVO', 'EFECTIVO', 7800),
(265, 261, '2025-10-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 78000),
(266, 247, '2025-10-01', 'EFECTIVO', 'EFECTIVO', 61200),
(267, 262, '2025-10-02', 'EFECTIVO', 'EFECTIVO', 7800),
(268, 263, '2025-10-02', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 20000),
(269, 264, '2025-10-02', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(270, 265, '2025-10-02', 'EFECTIVO', 'EFECTIVO', 5200),
(271, 266, '2025-10-02', 'EFECTIVO', 'EFECTIVO', 37500),
(272, 267, '2025-10-02', 'EFECTIVO', 'EFECTIVO', 6000),
(273, 268, '2025-10-02', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(274, 269, '2025-10-03', 'EFECTIVO', 'EFECTIVO', 209000),
(275, 270, '2025-10-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 43000),
(276, 271, '2025-10-03', 'EFECTIVO', 'EFECTIVO', 6500),
(277, 272, '2025-10-03', 'EFECTIVO', 'EFECTIVO', 13000),
(278, 273, '2025-10-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 7800),
(279, 274, '2025-10-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 30000),
(280, 275, '2025-10-06', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(281, 276, '2025-10-06', 'TRANSFERENCIA', 'TRANSFERENCIA', 30000),
(282, 277, '2025-10-06', 'EFECTIVO', 'EFECTIVO', 16900),
(283, 278, '2025-10-07', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(284, 279, '2025-10-07', 'EFECTIVO', 'EFECTIVO', 10400),
(285, 280, '2025-10-07', 'EFECTIVO', 'EFECTIVO', 6000),
(286, 281, '2025-10-07', 'EFECTIVO', 'EFECTIVO', 13000),
(287, 282, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 15600),
(288, 283, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 7800),
(289, 284, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 5000),
(290, 285, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 7000),
(291, 286, '2025-10-08', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(292, 287, '2025-10-08', 'TRANSFERENCIA', 'TRANSFERENCIA', 9100),
(293, 288, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 3000),
(294, 289, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 12000),
(295, 290, '2025-10-08', 'EFECTIVO', 'EFECTIVO', 34800),
(296, 291, '2025-10-10', 'TRANSFERENCIA', 'TRANSFERENCIA', 34400),
(297, 292, '2025-10-10', 'TRANSFERENCIA', 'TRANSFERENCIA', 39400),
(298, 293, '2025-10-10', 'EFECTIVO', 'EFECTIVO', 30000),
(299, 294, '2025-10-10', 'EFECTIVO', 'EFECTIVO', 24000),
(300, 295, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 12000),
(301, 296, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 88000),
(302, 297, '2025-10-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 48000),
(303, 298, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 7800),
(304, 299, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 3900),
(305, 300, '2025-10-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 190000),
(306, 301, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 9100),
(307, 302, '2025-10-11', 'EFECTIVO', 'EFECTIVO', 9500),
(308, 303, '2025-10-14', 'EFECTIVO', 'EFECTIVO', 6000),
(309, 304, '2025-10-14', 'EFECTIVO', 'EFECTIVO', 76000),
(310, 305, '2025-10-14', 'EFECTIVO', 'EFECTIVO', 13000),
(311, 306, '2025-10-14', 'EFECTIVO', 'EFECTIVO', 17000),
(312, 307, '2025-10-14', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(313, 308, '2025-10-15', 'EFECTIVO', 'EFECTIVO', 680000),
(314, 309, '2025-10-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(315, 310, '2025-10-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 11700),
(316, 311, '2025-10-15', 'EFECTIVO', 'EFECTIVO', 20500),
(317, 312, '2025-10-15', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(318, 313, '2025-10-15', 'EFECTIVO', 'EFECTIVO', 9100),
(319, 314, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 153000),
(320, 315, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 6500),
(321, 316, '2025-10-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 13000),
(322, 317, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 3900),
(323, 317, '2025-10-17', 'EFECTIVO', 'EFECTIVO', -300),
(324, 318, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 7500),
(325, 319, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 6500),
(326, 320, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 9100),
(327, 321, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 980000),
(328, 322, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 6500),
(329, 323, '2025-10-17', 'EFECTIVO', 'EFECTIVO', 6000),
(330, 324, '2025-10-18', 'EFECTIVO', 'EFECTIVO', 26000),
(331, 325, '2025-10-18', 'EFECTIVO', 'EFECTIVO', 50800),
(332, 326, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 7800),
(333, 327, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 13000),
(334, 328, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 6000),
(335, 328, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 0),
(336, 329, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 17900),
(337, 330, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 3000),
(338, 331, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 5200),
(339, 332, '2025-10-20', 'TRANSFERENCIA', 'TRANSFERENCIA', 20200),
(340, 333, '2025-10-20', 'TRANSFERENCIA', 'TRANSFERENCIA', 10400),
(341, 334, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 65000),
(342, 335, '2025-10-20', 'EFECTIVO', 'EFECTIVO', 3000),
(343, 336, '2025-10-21', 'TRANSFERENCIA', 'TRANSFERENCIA', 9100),
(344, 337, '2025-10-21', 'EFECTIVO', 'EFECTIVO', 27000),
(345, 338, '2025-10-21', 'EFECTIVO', 'EFECTIVO', 17000),
(346, 339, '2025-10-21', 'EFECTIVO', 'EFECTIVO', 7800),
(347, 340, '2025-10-21', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(348, 341, '2025-10-21', 'EFECTIVO', 'EFECTIVO', 700000),
(349, 342, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 75000),
(350, 343, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 15600),
(351, 344, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 15000),
(352, 345, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 27000),
(353, 346, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 132500),
(354, 347, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 65400),
(355, 348, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 72000),
(356, 349, '2025-10-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 36000),
(357, 350, '2025-10-22', 'EFECTIVO', 'EFECTIVO', 6500),
(358, 351, '2025-10-23', 'EFECTIVO', 'EFECTIVO', 9000),
(359, 352, '2025-10-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(360, 353, '2025-10-23', 'EFECTIVO', 'EFECTIVO', 7800),
(361, 354, '2025-10-23', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(362, 355, '2025-10-23', 'EFECTIVO', 'EFECTIVO', 5200),
(363, 356, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 13000),
(364, 356, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 0),
(365, 357, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 5200),
(366, 358, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 13000),
(367, 359, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 60000),
(368, 360, '2025-10-24', 'EFECTIVO', 'tranferencia', 40000),
(369, 361, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 12000),
(370, 362, '2025-10-24', 'TRANSFERENCIA', 'TRANSFERENCIA', 5200),
(371, 363, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 3000),
(372, 364, '2025-10-24', 'EFECTIVO', 'EFECTIVO', 5200),
(373, 365, '2025-10-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(374, 366, '2025-10-25', 'EFECTIVO', 'EFECTIVO', 7800),
(375, 367, '2025-10-25', 'EFECTIVO', 'EFECTIVO', 19500),
(376, 368, '2025-10-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 120000),
(377, 369, '2025-10-25', 'EFECTIVO', 'EFECTIVO', 13000),
(378, 370, '2025-10-25', 'EFECTIVO', 'EFECTIVO', 27000),
(380, 372, '2025-10-25', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(381, 373, '2025-10-27', 'EFECTIVO', 'EFECTIVO', 13000),
(382, 374, '2025-10-27', 'EFECTIVO', 'EFECTIVO', 9000),
(383, 375, '2025-10-28', 'EFECTIVO', 'EFECTIVO', 13000),
(384, 376, '2025-10-28', 'EFECTIVO', 'EFECTIVO', 10500),
(385, 377, '2025-10-28', 'EFECTIVO', 'EFECTIVO', 27000),
(386, 378, '2025-10-28', 'EFECTIVO', 'EFECTIVO', 43100),
(387, 379, '2025-10-28', 'EFECTIVO', 'EFECTIVO', 6000),
(388, 380, '2025-10-28', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(389, 381, '2025-10-28', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(390, 382, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 6500),
(391, 383, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 3000),
(392, 384, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 13000),
(394, 386, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 26400),
(396, 388, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 14300),
(397, 389, '2025-10-29', 'EFECTIVO', 'EFECTIVO', 15000),
(398, 390, '2025-10-30', 'EFECTIVO', 'EFECTIVO', 10400),
(399, 391, '2025-10-30', 'EFECTIVO', 'EFECTIVO', 13000),
(400, 392, '2025-10-30', 'EFECTIVO', 'EFECTIVO', 13000),
(401, 393, '2025-10-30', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(402, 393, '2025-10-30', 'TRANSFERENCIA', 'TRANSFERENCIA', -17000),
(403, 394, '2025-10-30', 'TRANSFERENCIA', 'TRANSFERENCIA', 5200),
(404, 395, '2025-10-30', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(405, 396, '2025-10-31', 'EFECTIVO', 'EFECTIVO', 27000),
(406, 397, '2025-10-31', 'EFECTIVO', 'EFECTIVO', 3000),
(407, 398, '2025-10-31', 'TRANSFERENCIA', 'TRANSFERENCIA', 10000),
(408, 399, '2025-10-31', 'EFECTIVO', 'EFECTIVO', 7200),
(409, 400, '2025-10-31', 'EFECTIVO', 'EFECTIVO', 6500),
(410, 401, '2025-10-31', 'EFECTIVO', 'EFECTIVO', 5200),
(411, 402, '2025-10-31', 'TRANSFERENCIA', 'TRANSFERENCIA', 15000),
(412, 403, '2025-11-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 5200),
(413, 404, '2025-11-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(414, 405, '2025-11-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 32000),
(415, 406, '2025-11-01', 'EFECTIVO', 'EFECTIVO', 13000),
(417, 408, '2025-11-01', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(418, 409, '2025-11-03', 'EFECTIVO', 'EFECTIVO', 6000),
(419, 410, '2025-11-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 23800),
(422, 413, '2025-11-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(423, 414, '2025-11-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 25000),
(424, 415, '2025-11-03', 'EFECTIVO', 'EFECTIVO', 6500),
(425, 416, '2025-11-03', 'EFECTIVO', 'EFECTIVO', 18200),
(426, 417, '2025-11-03', 'EFECTIVO', 'EFECTIVO', 6500),
(427, 418, '2025-11-03', 'EFECTIVO', 'EFECTIVO', 5200),
(428, 419, '2025-11-03', 'CHEQUE', 'CHEQUE', 150000),
(429, 420, '2025-11-03', 'TRANSFERENCIA', 'TRANSFERENCIA', 33000),
(430, 421, '2025-11-04', 'EFECTIVO', 'EFECTIVO', 12000),
(431, 422, '2025-11-04', 'EFECTIVO', 'EFECTIVO', 75000),
(434, 425, '2025-11-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(435, 426, '2025-11-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(436, 427, '2025-11-04', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(437, 428, '2025-11-05', 'TRANSFERENCIA', 'TRANSFERENCIA', 15000),
(438, 429, '2025-11-05', 'TRANSFERENCIA', 'TRANSFERENCIA', 6500),
(440, 431, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 9000),
(441, 432, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 6000),
(442, 433, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 15600),
(443, 434, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 25000),
(444, 435, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 6000),
(446, 437, '2025-11-05', 'TRANSFERENCIA', 'TRANSFERENCIA', 34000),
(447, 438, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 3900),
(449, 440, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 12000),
(450, 441, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 3000),
(451, 442, '2025-11-05', 'EFECTIVO', 'EFECTIVO', 105000),
(452, 443, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 9100),
(453, 444, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 32600),
(454, 445, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 6500),
(455, 446, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 3000),
(456, 447, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 13000),
(457, 448, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 10400),
(458, 449, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 6500),
(459, 450, '2025-11-06', 'EFECTIVO', 'EFECTIVO', 27000),
(460, 451, '2025-11-07', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(461, 452, '2025-11-07', 'EFECTIVO', 'EFECTIVO', 6000),
(462, 453, '2025-11-07', 'EFECTIVO', 'EFECTIVO', 25000),
(464, 455, '2025-11-07', 'TRANSFERENCIA', 'TRANSFERENCIA', 17800),
(465, 456, '2025-11-07', 'EFECTIVO', 'EFECTIVO', 19500),
(466, 457, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 10400),
(467, 458, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 27000),
(468, 459, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 3000),
(469, 459, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 3000),
(470, 460, '2025-11-08', 'CTA.CORRIENTE', 'CTA.CORRIENTE', 200000),
(471, 461, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 5000),
(472, 462, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 5000),
(473, 463, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 24000),
(474, 464, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 13000),
(475, 465, '2025-11-08', 'EFECTIVO', 'EFECTIVO', 10200),
(476, 465, '2025-11-08', 'TRANSFERENCIA', 'TRANSFERENCIA', 11700),
(478, 467, '2025-11-08', 'TRANSFERENCIA', 'TRANSFERENCIA', 6500),
(479, 468, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 6500),
(480, 469, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 6500),
(481, 470, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 13000),
(482, 471, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 10400),
(483, 472, '2025-11-10', 'TRANSFERENCIA', 'TRANSFERENCIA', 10000),
(484, 472, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 20000),
(485, 473, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 84000),
(486, 474, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 12500),
(487, 475, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 3900),
(488, 476, '2025-11-10', 'EFECTIVO', 'EFECTIVO', 14300),
(489, 477, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 13000),
(490, 478, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 150000),
(491, 479, '2025-11-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 7500),
(492, 480, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 30000),
(493, 481, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 9100),
(494, 482, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 6500),
(495, 483, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 6500),
(496, 484, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 3000),
(497, 485, '2025-11-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(498, 486, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 6500),
(499, 487, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 19500),
(500, 488, '2025-11-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000),
(501, 489, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 3000),
(502, 490, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 150000),
(503, 491, '2025-11-11', 'TRANSFERENCIA', 'TRANSFERENCIA', 3900),
(504, 492, '2025-11-11', 'EFECTIVO', 'EFECTIVO', 13000),
(505, 493, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 12000),
(506, 493, '2025-11-12', 'TRANSFERENCIA', 'TRANSFERENCIA', 3000),
(507, 494, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 4800),
(508, 495, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 26000),
(509, 496, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 24000),
(510, 497, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 27000),
(511, 498, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 25000),
(512, 499, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 25000),
(513, 499, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 25000),
(514, 500, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 25000),
(515, 501, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 12000),
(516, 501, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 27000),
(517, 502, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 25000),
(518, 503, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 9100),
(519, 504, '2025-11-12', 'EFECTIVO', 'EFECTIVO', 13000),
(520, 505, '2025-11-12', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(521, 506, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 17000),
(522, 507, '2025-11-13', 'TRANSFERENCIA', 'TRANSFERENCIA', 5000),
(524, 509, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 25000),
(525, 510, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 6500),
(526, 511, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 10000),
(527, 512, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 7500),
(528, 513, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 6000),
(529, 514, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 9100),
(530, 515, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 25000),
(531, 516, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 16900),
(532, 517, '2025-11-13', 'EFECTIVO', 'EFECTIVO', 3900),
(533, 518, '2025-11-14', 'TRANSFERENCIA', 'TRANSFERENCIA', 26000),
(534, 519, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 27000),
(535, 520, '2025-11-14', 'TRANSFERENCIA', 'TRANSFERENCIA', 9000),
(536, 521, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 6500),
(537, 522, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 36700),
(538, 523, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 27000),
(539, 524, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 25000),
(540, 525, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 3000),
(541, 526, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 3000),
(542, 527, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 7800),
(543, 528, '2025-11-14', 'EFECTIVO', 'EFECTIVO', 13000),
(544, 529, '2025-11-15', 'EFECTIVO', 'EFECTIVO', 13000),
(545, 530, '2025-11-15', 'EFECTIVO', 'EFECTIVO', 150000),
(546, 531, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 6500),
(547, 532, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 2600),
(548, 533, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 3900),
(549, 534, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 13000),
(550, 535, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 6500),
(551, 536, '2025-11-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(552, 537, '2025-11-17', 'TRANSFERENCIA', 'TRANSFERENCIA', 15000),
(553, 538, '2025-11-17', 'EFECTIVO', 'EFECTIVO', 15600),
(554, 539, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 19500),
(555, 540, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 3000),
(556, 541, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 13000),
(557, 542, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 9000),
(558, 543, '2025-11-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 2500),
(559, 544, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 9000),
(560, 545, '2025-11-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 6000),
(561, 546, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 27000),
(562, 547, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 3000),
(563, 548, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 10400),
(564, 549, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 9100),
(565, 550, '2025-11-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(566, 551, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 6500),
(567, 552, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 3000),
(568, 553, '2025-11-18', 'TRANSFERENCIA', 'TRANSFERENCIA', 25400),
(569, 554, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 6000),
(570, 555, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 13000),
(571, 556, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 6000),
(572, 557, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 3000),
(573, 558, '2025-11-18', 'EFECTIVO', 'EFECTIVO', 3000),
(574, 559, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 12000),
(575, 560, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 13000),
(576, 561, '2025-11-19', 'TRANSFERENCIA', 'TRANSFERENCIA', 7800),
(577, 562, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 6500),
(578, 563, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 6500),
(579, 564, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 12000),
(580, 565, '2025-11-19', 'TRANSFERENCIA', 'TRANSFERENCIA', 9100),
(581, 566, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 3000),
(582, 567, '2025-11-19', 'EFECTIVO', 'EFECTIVO', 13000),
(584, 569, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 11000),
(585, 570, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 25000),
(586, 571, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 17500),
(587, 572, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 13000),
(588, 573, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 10400),
(589, 574, '2025-11-20', 'TRANSFERENCIA', 'TRANSFERENCIA', 12000),
(590, 575, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 59000),
(591, 576, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 13000),
(592, 577, '2025-11-20', 'EFECTIVO', 'EFECTIVO', 6000),
(593, 578, '2025-11-21', 'TRANSFERENCIA', 'TRANSFERENCIA', 7800),
(594, 579, '2025-11-21', 'TRANSFERENCIA', 'TRANSFERENCIA', 155000),
(595, 580, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 7800),
(596, 581, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 9100),
(597, 582, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 25000),
(598, 583, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 37600),
(599, 584, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 35700),
(600, 585, '2025-11-21', 'TRANSFERENCIA', 'TRANSFERENCIA', 19500),
(601, 586, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 308000),
(602, 587, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 6500),
(603, 588, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 25000),
(604, 589, '2025-11-21', 'EFECTIVO', 'EFECTIVO', 12000),
(605, 590, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 3000),
(606, 590, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 0),
(607, 591, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 9100),
(608, 592, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 3000),
(609, 593, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 2600),
(610, 594, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 13000),
(611, 595, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 25000),
(612, 596, '2025-11-22', 'EFECTIVO', 'EFECTIVO', 9100),
(613, 597, '2025-11-22', 'TRANSFERENCIA', 'TRANSFERENCIA', 27000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `valor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `nombre`, `valor`) VALUES
(1, 'PRECIO-COSTO', 'enable'),
(2, 'JSON', 'SI'),
(3, 'RUTA', 'C:\\Jade'),
(4, 'BD', 'jade'),
(5, 'TICKET-FACTURA', 'TICKET'),
(6, 'PRESUPUESTO', 'FALSE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuesto`
--

CREATE TABLE `presupuesto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `fecha` date NOT NULL,
  `productos` text NOT NULL,
  `impuesto` decimal(10,2) DEFAULT NULL,
  `neto` decimal(10,2) DEFAULT NULL,
  `total` double NOT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `codigo` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `proveedor` int(11) NOT NULL,
  `cantminima` float DEFAULT '0',
  `stock` float DEFAULT '0',
  `precio_compra` float DEFAULT '0',
  `precio_venta` float NOT NULL,
  `ventas` float DEFAULT '0',
  `obs` text,
  `iva` float DEFAULT '0',
  `activo` int(11) DEFAULT '1',
  `obsdel` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `codigo`, `id_categoria`, `proveedor`, `cantminima`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `obs`, `iva`, `activo`, `obsdel`, `fecha`) VALUES
(2, 'RECARGA BIDON AGUA DOMICILIO', 'BIDóN DE AGUA DOMICILIO', 'ALI2', 1, 0, 0, 5929, 1000, 3000, 985, NULL, 0, 1, NULL, '2025-11-22 12:45:29'),
(3, 'RECARGA BIDóN DE AGUA MAYORISTA', 'BIDONES DE AGUA A NEGOCIOS A PARTIR DE 5 UNIDADES', 'ALI3', 1, 0, 0, 48213, 900, 1300, 3111, NULL, 0, 1, NULL, '2025-11-22 15:37:23'),
(4, 'DISPENSER DE MESA', 'PLASTICO CON MARCA', 'ALI4', 1, 0, 0, 125, 4200, 7500, 52, NULL, 0, 1, NULL, '2025-11-18 21:13:46'),
(5, 'ENVASE DE 20LTS', 'BIDON', 'B', 1, 0, 0, 102, 6500, 12000, 33, NULL, 0, 1, NULL, '2025-11-11 13:54:40'),
(6, 'RECARGA BIDON DE AGUA MAYOR', 'MENOS DE 5 UNIDADES', 'RECARGA', 1, 0, 0, 392, 900, 1600, 458, NULL, 0, 1, NULL, '2025-10-26 23:46:03'),
(7, 'BIDON DE 6 LTS', 'NO RETORNABLE', 'ALI7', 1, 0, 0, 3391, 1050, 1200, 1232, NULL, 0, 1, NULL, '2025-11-21 21:48:58'),
(8, 'DISPENSER MENSUAL', 'DISPENSER FRIO/CALOR CON 4 BIDONES DE 20LTS', 'dism', 1, 0, 0, -8, 0, 27000, 47, NULL, 0, 1, NULL, '2025-11-22 16:16:06'),
(9, 'CARBON 5KG', 'BOLSAS DE CARBóN DE CARTóN', '001', 1, 0, 0, 47578, 1000, 1500, 2422, NULL, 0, 1, NULL, '2025-11-21 15:09:56'),
(10, 'ENVIO A DOMICILIO', 'ENVIO A DOMICILIO', '3000', 2, 0, 0, 2973, 0, 3000, 27, NULL, 0, 1, NULL, '2025-11-21 15:09:56'),
(11, 'AZUCAR', 'AZUCAR', 'ALI10', 1, 0, 0, 499897, 5460, 6200, 103, NULL, 0, 1, NULL, '2025-11-03 13:52:30'),
(12, 'YERBA', 'ADRECITO X PACK', 'ALI11', 1, 0, 0, 49995, 0, 18000, 5, NULL, 0, 1, NULL, '2025-10-15 11:36:35'),
(13, 'COMBO 10Y10', '10 BIDONES 20L Y 10 BIDONES 6L', 'ALI122', 1, 0, 0, 35, 15000, 25000, 15, NULL, 0, 1, NULL, '2025-11-22 14:44:46'),
(14, 'CARBON MIN', 'CARBON 50 A 100 BOLSAS', 'INSU31', 3, 0, 0, 50, 1000, 1600, 0, NULL, 0, 1, NULL, '2025-11-05 20:17:25'),
(15, 'CARBON MIN', 'CARBON 50 A 100 BOLSAS', 'INSU31', 3, 0, 0, 50, 1000, 1600, 0, NULL, 0, 1, NULL, '2025-11-05 20:17:28'),
(16, 'CARBON 5KG MIN', 'CARBON MENOS DE 50 BOLSAS', 'INSU41', 3, 0, 0, -1, 1100, 1700, 51, NULL, 0, 1, NULL, '2025-11-21 14:09:48'),
(17, 'BIDON AGUA 20 L DISTRIBUIDORA COL UNI', 'PRECIO INTERNO PARA DISTRIBUIDORA', 'ALI132', 1, 0, 0, 800, 500, 1000, 200, NULL, 0, 1, NULL, '2025-11-08 16:23:49'),
(18, 'BIDON 20 L DIFERENCIAL', 'PRECIO DIFERENCIAL', 'ALI142', 1, 0, 0, 76, 1500, 2500, 24, NULL, 0, 1, NULL, '2025-11-20 14:21:35'),
(19, 'COMBO 5 Y 5', '5 DE 20L Y 5 DE 6L POR 1300 CADA UNO', 'ALI151', 1, 0, 0, 99, 10000, 13000, 1, NULL, 0, 1, NULL, '2025-11-08 16:32:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `obs` text NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `obsdel` text NOT NULL,
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Vendedor',
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) DEFAULT '0',
  `ultimo_login` datetime DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Ariel Bernardo', 'superadmin', '$2a$07$asxx54ahjppf45sd87a5aukTGYNFXof01VBQcnReY3ypc9ZLonZ4m', 'Administrador', '', 1, '2025-11-15 11:51:00', '2025-11-15 16:51:00'),
(2, 'Cristal Glavas', 'cristal', '$2a$07$asxx54ahjppf45sd87a5auJ2Cv0wvDBBJRjsZs/4Qp/xAqJneDDAK', 'Administrador', '', 1, '2025-11-09 14:33:20', '2025-11-09 19:33:20'),
(65, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5au8bBEEej0nMf4UistS39tZzxYKOU2H6.', 'Administrador', 'vistas/img/usuarios/admin2/130.jpg', 1, '2025-11-22 06:30:06', '2025-11-22 11:30:06'),
(67, 'stock', 'stock', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Stock', '', 1, '2025-02-11 06:02:47', '2025-06-08 11:56:21'),
(81, 'ventas', 'ventas', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Vendedor', '', 1, '2025-02-10 19:00:19', '2025-06-03 02:12:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vales`
--

CREATE TABLE `vales` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` text NOT NULL,
  `importe` float NOT NULL,
  `fc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `porcentaje`, `observaciones`) VALUES
(1, 'Vendedor 1', NULL, NULL),
(2, 'Vendedor 2', NULL, NULL),
(3, 'Vendedor 3', NULL, NULL),
(4, 'Vendedor 4', NULL, NULL),
(5, 'Vendedor 5', NULL, NULL),
(6, 'Vendedor 6', NULL, NULL),
(7, 'Vendedor 7', NULL, NULL),
(8, 'Vendedor 8', NULL, NULL),
(9, 'Vendedor 9', NULL, NULL),
(10, 'Vendedor 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` text COLLATE utf8_spanish_ci NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_vendedor_venta` int(11) NOT NULL COMMENT 'este es el id para el que se adjudica la venta\r\n',
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `adeuda` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fechapago` date DEFAULT NULL,
  `referenciapago` text COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` text COLLATE utf8_spanish_ci NOT NULL,
  `seleccionado` int(11) NOT NULL DEFAULT '0',
  `fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(1, '2025-07-24', 'FC', '0001-00001146', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 1, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDóN AGUA MINORISTA\",\"codigo\":\"ALI2\",\"cantidad\":\"100\",\"precio\":\"2200.00\",\"descuento\":\"0.00\",\"total\":\"220000.00\"}]', 0, 0, 220000, 220000, '[{\"id\":\"1\",\"fecha\":\"24-07-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"220000\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-07-24', '', '', 0, '2025-07-24 22:10:19'),
(3, '2025-07-25', 'FC', '0001-00001148', 3, 'MARCELA ', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1200.00\",\"descuento\":\"-2000.00\",\"total\":\"4400.00\"}]', 0, 0, 4400, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4400\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:17:57'),
(4, '2025-07-25', 'FC', '0001-00001149', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1200.00\",\"descuento\":\"-2000.00\",\"total\":\"4400.00\"}]', 0, 0, 4400, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4400\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:20:06'),
(5, '2025-07-25', 'FC', '0001-00001150', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"4800.00\"}]', 0, 0, 4800, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4800\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:21:43'),
(6, '2025-07-25', 'FC', '0001-00001151', 17, 'MEGAMUNDO', '2002022000', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1200.00\",\"descuento\":\"-1200.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:27:50'),
(7, '2025-07-25', 'FC', '0001-00001152', 4, 'SUPER CHINO DON BOSCO ', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"600.00\",\"total\":\"6600.00\"}]', 0, 0, 6600, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6600\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:40:21'),
(8, '2025-07-25', 'FC', '0001-00001153', 5, 'SUPER CHINO MARCONI.', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-3000.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15000\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:49:11'),
(9, '2025-07-25', 'FC', '0001-00001154', 31, 'SUPER CHINO SAN MARTIN', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1200.00\",\"descuento\":\"800.00\",\"total\":\"8800.00\"}]', 0, 0, 8800, 0, '[{\"id\":\"1\",\"fecha\":\"25-07-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8800\",\"referencia\":\"EFECTIVO\"}]', '2025-07-25', '', '', 0, '2025-07-25 12:55:55'),
(10, '2025-08-06', 'FC', '0001-00001155', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"06-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"06-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-08-06', '', '', 0, '2025-08-06 22:41:42'),
(11, '2025-08-06', 'FC', '0001-00001156', 37, 'ALICIA SABUGO', '42986923', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1000.00\",\"descuento\":\"-4000.00\",\"total\":\"24000.00\"}]', 0, 0, 24000, 0, '[{\"id\":\"1\",\"fecha\":\"06-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"24000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-06', '', '', 0, '2025-08-06 22:51:25'),
(12, '2025-08-11', 'FC', '0001-00001157', 38, 'LUCAS ', '33526456', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"11-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-11', '', '', 0, '2025-08-12 02:09:32'),
(13, '2025-08-12', 'FC', '0001-00001158', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"5\",\"precio\":\"1500.00\",\"descuento\":\"2500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-12', '', '', 0, '2025-08-12 11:26:58'),
(14, '2025-08-12', 'FC', '0001-00001159', 41, 'HECTOR MORALES', '2020202020', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"5\",\"precio\":\"10000.00\",\"descuento\":\"0.00\",\"total\":\"50000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"3\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"},{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"5\",\"precio\":\"1500.00\",\"descuento\":\"2500.00\",\"total\":\"5000.00\"},{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"5\",\"precio\":\"1500.00\",\"descuento\":\"2500.00\",\"total\":\"5000.00\"}]', 0, 0, 79500, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"79500\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 16:13:06'),
(15, '2025-08-12', 'FC', '0001-00001160', 41, 'HECTOR MORALES', '2020202020', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 16:23:47'),
(17, '2025-08-12', 'FC', '0001-00001161', 37, 'ALICIA SABUGO', '42986923', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 16:25:42'),
(18, '2025-08-12', 'FC', '0001-00001162', 42, 'KIOSCO MARGARITA', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 16:28:32'),
(19, '2025-08-12', 'FC', '0001-00001163', 34, 'CARLA DELEN FERNANDEZ', '42404729', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 16:31:54'),
(20, '2025-08-12', 'FC', '0001-00001164', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"168\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"201600.00\"},{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"152\",\"precio\":\"1500.00\",\"descuento\":\"76000.00\",\"total\":\"152000.00\"}]', 0, 0, 353600, 353600, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"353600\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-08-12', '', '', 0, '2025-08-12 19:41:54'),
(21, '2025-08-12', 'FC', '0001-00001165', 43, 'FRANCIS', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"6\",\"precio\":\"2500.00\",\"descuento\":\"7800.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 19:45:51'),
(22, '2025-08-12', 'FC', '0001-00001166', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 19:49:04'),
(24, '2025-08-12', 'FC', '0001-00001168', 5, 'SUPER CHINO MARCONI.', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"6\",\"precio\":\"2500.00\",\"descuento\":\"9000.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 22:18:18'),
(25, '2025-08-12', 'FC', '0001-00001169', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"2500.00\",\"descuento\":\"6500.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-12', '', '', 0, '2025-08-12 22:19:19'),
(26, '2025-08-12', 'FC', '0001-00001170', 35, 'JESSICA JOHANNA VILAQUI ', '340335150', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"12-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-12', '', '', 0, '2025-08-12 22:35:11'),
(27, '2025-08-13', 'FC', '0001-00001171', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 14:15:41'),
(28, '2025-08-13', 'FC', '0001-00001172', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"2000.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 14:17:02'),
(29, '2025-08-13', 'FC', '0001-00001173', 46, 'GLADYS MAZZO ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 15:30:41'),
(30, '2025-08-13', 'FC', '0001-00001174', 47, 'EDITH DUARTE ', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"1000.00\",\"total\":\"1500.00\"}]', 0, 0, 1500, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"1500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 19:36:47'),
(31, '2025-08-13', 'FC', '0001-00001175', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 19:39:05'),
(32, '2025-08-13', 'FC', '0001-00001176', 48, 'KIOSKO MONTIREL', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 21:58:44'),
(33, '2025-08-13', 'FC', '0001-00001177', 49, 'PAULINA BAñAGASTA', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"13-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-13', '', '', 0, '2025-08-13 23:00:06'),
(34, '2025-08-14', 'FC', '0001-00001178', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 11:41:15'),
(37, '2025-08-14', 'FC', '0001-00001181', 50, 'GRAGSTOR MDQ', '2020202020', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"5\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 16:47:44'),
(38, '2025-08-14', 'FC', '0001-00001182', 51, 'KIOSKO HERAS', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 16:53:35'),
(39, '2025-08-14', 'FC', '0001-00001183', 52, 'OFICINA OBRAS PUBLICAS ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 18:38:41'),
(40, '2025-08-14', 'FC', '0001-00001184', 46, 'GLADYS MAZZO ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"16\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"16000.00\"}]', 0, 0, 16000, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"16000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 22:04:24'),
(41, '2025-08-14', 'FC', '0001-00001185', 50, 'DRUGSTORE MDQ', '2020202020', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"5\",\"precio\":\"1200.00\",\"descuento\":\"-1500.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 22:10:27'),
(42, '2025-08-14', 'FC', '0001-00001186', 52, 'OFICINA OBRAS PUBLICAS ', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"4\",\"precio\":\"1500.00\",\"descuento\":\"-1200.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 22:13:37'),
(43, '2025-08-14', 'FC', '0001-00001187', 49, 'PAULINA BAñAGASTA', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"1\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"1500.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"4\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"4800.00\"}]', 0, 0, 6300, 0, '[{\"id\":\"1\",\"fecha\":\"14-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6300\",\"referencia\":\"EFECTIVO\"}]', '2025-08-14', '', '', 0, '2025-08-14 22:30:51'),
(44, '2025-08-15', 'FC', '0001-00001188', 54, 'CELESTE MAIDANA ', '43616705', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"15-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-15', '', '', 0, '2025-08-15 20:56:13'),
(47, '2025-08-15', 'FC', '0001-00001191', 55, 'GUSTAVO BUYATTI', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"15-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-15', '', '', 0, '2025-08-15 21:04:11'),
(48, '2025-08-15', 'FC', '0001-00001192', 56, 'VILMA BASINIANI', '2020202020', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"15-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-15', '', '', 0, '2025-08-15 21:04:42'),
(49, '2025-08-15', 'FC', '0001-00001193', 37, 'ALICIA SABUGO', '42986923', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"40\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"60000.00\"}]', 0, 0, 60000, 0, '[{\"id\":\"1\",\"fecha\":\"15-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"60000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-15', '', '', 0, '2025-08-15 23:53:01'),
(50, '2025-08-16', 'FC', '0001-00001194', 57, 'KIOSKO 25 DE MAYO', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"4\",\"precio\":\"1500.00\",\"descuento\":\"1600.00\",\"total\":\"4400.00\"}]', 0, 0, 4400, 0, '[{\"id\":\"1\",\"fecha\":\"16-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4400\",\"referencia\":\"EFECTIVO\"}]', '2025-08-16', '', '', 0, '2025-08-16 19:28:00'),
(51, '2025-08-16', 'FC', '0001-00001195', 58, 'MARIA LUZ GONZALES', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"4\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"16-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-16', '', '', 0, '2025-08-16 19:31:09'),
(52, '2025-08-18', 'FC', '0001-00001196', 59, 'FABIAN ORESTO CANO', '18021785', 65, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"},{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"700.00\",\"total\":\"1800.00\"}]', 0, 0, 8300, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"8300\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-18', '', '', 0, '2025-08-18 11:52:07'),
(53, '2025-08-18', 'FC', '0001-00001197', 60, 'PUBLICIDAD(SOLAR AMEGHINO)', '2020202020', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-18', '', '', 0, '2025-08-18 18:44:01'),
(54, '2025-08-18', 'FC', '0001-00001198', 59, 'FABIAN ORESTO CANO', '18021785', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"12\",\"precio\":\"2500.00\",\"descuento\":\"8400.00\",\"total\":\"21600.00\"}]', 0, 0, 21600, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"21600\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-18', '', '', 0, '2025-08-18 18:47:50'),
(55, '2025-08-18', 'FC', '0001-00001199', 61, 'DARIO BARTOLI ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-18', '', '', 0, '2025-08-18 18:51:49'),
(56, '2025-08-18', 'FC', '0001-00001200', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"101\",\"precio\":\"1500.00\",\"descuento\":\"50500.00\",\"total\":\"101000.00\"}]', 0, 0, 101000, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"101000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-18', '', '', 0, '2025-08-18 20:10:02'),
(57, '2025-08-18', 'FC', '0001-00001201', 62, 'MAYORISTA FONTANA', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-18', '', '', 0, '2025-08-18 22:47:11'),
(58, '2025-08-18', 'FC', '0001-00001202', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"4500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-18', '', '', 0, '2025-08-18 22:48:31'),
(59, '2025-08-18', 'FC', '0001-00001203', 63, 'VERONICA BERLINI', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"17\",\"precio\":\"1500.00\",\"descuento\":\"1700.00\",\"total\":\"23800.00\"}]', 0, 0, 23800, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"23800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-18', '', '', 0, '2025-08-18 22:50:50'),
(60, '2025-08-18', 'FC', '0001-00001204', 64, 'ALEJANDRO OJEDA', '43616707', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"},{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"18-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"15000\",\"referencia\":\"TRANSFERENCIA\"},{\"id\":\"2\",\"fecha\":\"18-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-08-18', '', '', 0, '2025-08-18 23:19:10'),
(61, '2025-08-19', 'FC', '0001-00001205', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"11\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"11000.00\"}]', 0, 0, 11000, 0, '[{\"id\":\"1\",\"fecha\":\"19-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-19', '', '', 0, '2025-08-19 22:18:10'),
(62, '2025-08-19', 'FC', '0001-00001206', 66, 'JESICA VILAKI ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"19-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"2500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-19', '', '', 0, '2025-08-19 22:20:02'),
(63, '2025-08-19', 'FC', '0001-00001207', 48, 'KIOSKO MARCELO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"19-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-19', '', '', 0, '2025-08-19 23:30:36'),
(64, '2025-08-20', 'FC', '0001-00001208', 59, 'FABIAN ORESTO CANO', '18021785', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"2800.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"20-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-08-20', '', '', 0, '2025-08-20 16:33:50'),
(65, '2025-08-20', 'FC', '0001-00001209', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"20-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-20', '', '', 0, '2025-08-20 16:35:25'),
(66, '2025-08-20', 'FC', '0001-00001210', 67, 'CLIENTE PUERTO TIROL', '0', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"50\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"60000.00\"}]', 0, 0, 60000, 0, '[{\"id\":\"1\",\"fecha\":\"20-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"60000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-20', '', '', 0, '2025-08-20 22:54:45'),
(67, '2025-08-21', 'FC', '0001-00001211', 70, 'VANESA SOLEDAD OJEDA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1000.00\",\"descuento\":\"-600.00\",\"total\":\"6600.00\"}]', 0, 0, 6600, 0, '[{\"id\":\"1\",\"fecha\":\"21-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6600\",\"referencia\":\"EFECTIVO\"}]', '2025-08-21', '', '', 0, '2025-08-21 23:56:24'),
(68, '2025-08-21', 'FC', '0001-00001212', 69, 'MARGARITA LESCANO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"21-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-21', '', '', 0, '2025-08-21 23:57:17'),
(69, '2025-08-21', 'FC', '0001-00001213', 72, 'PRISILA BARRANQUERAS', '2020202020', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"-2500.00\",\"total\":\"12500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"21-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-21', '', '', 0, '2025-08-21 23:59:50'),
(70, '2025-08-22', 'FC', '0001-00001214', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"2500.00\",\"descuento\":\"3500.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-22', '', '', 0, '2025-08-22 18:09:34'),
(71, '2025-08-22', 'FC', '0001-00001215', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"7000.00\"}]', 0, 0, 7000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-22', '', '', 0, '2025-08-22 18:10:35'),
(72, '2025-08-22', 'FC', '0001-00001216', 43, 'FRANCIS', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"4\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-22', '', '', 0, '2025-08-22 18:11:24'),
(73, '2025-08-22', 'FC', '0001-00001217', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"50\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"75000.00\"}]', 0, 0, 75000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"75000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-22', '', '', 0, '2025-08-22 20:59:56'),
(74, '2025-08-22', 'FC', '0001-00001218', 74, 'GRACIELA LAGO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-22', '', '', 0, '2025-08-23 00:25:39'),
(75, '2025-08-22', 'FC', '0001-00001219', 75, 'PABLO ANDRES RIVAS', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"20\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"30000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"22-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"30000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-22', '', '', 0, '2025-08-23 00:26:12'),
(76, '2025-08-23', 'FC', '0001-00001220', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-23', '', '', 0, '2025-08-23 18:38:25'),
(77, '2025-08-23', 'FC', '0001-00001221', 3, 'MARCELA ', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-23', '', '', 0, '2025-08-23 18:42:43'),
(78, '2025-08-23', 'FC', '0001-00001222', 76, 'SERRA MARIA GUIDO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-23', '', '', 0, '2025-08-23 18:46:07'),
(79, '2025-08-23', 'FC', '0001-00001223', 77, 'AYELEN NAUMOVICH', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"23-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"2500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-23', '', '', 0, '2025-08-23 18:48:37'),
(80, '2025-08-25', 'FC', '0001-00001224', 46, 'GLADYS MAZZO ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"25-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-25', '', '', 0, '2025-08-25 15:29:15'),
(81, '2025-08-25', 'FC', '0001-00001225', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"2\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"2\",\"fecha\":\"25-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-25', '', '', 0, '2025-08-25 15:30:31'),
(82, '2025-08-25', 'FC', '0001-00001226', 83, 'ROXI OJEDA OFICINAS OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"1400.00\",\"total\":\"3600.00\"}]', 0, 0, 3600, 0, '[{\"id\":\"1\",\"fecha\":\"25-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3600\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-25', '', '', 0, '2025-08-25 15:33:13'),
(83, '2025-08-25', 'FC', '0001-00001227', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"17\",\"precio\":\"2500.00\",\"descuento\":\"11900.00\",\"total\":\"30600.00\"}]', 0, 0, 30600, 0, '[{\"id\":\"1\",\"fecha\":\"25-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"30600\",\"referencia\":\"EFECTIVO\"}]', '2025-08-25', '', '', 0, '2025-08-25 15:33:48'),
(84, '2025-08-25', 'FC', '0001-00001228', 84, 'QINIELA MARCONI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"25-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-25', '', '', 0, '2025-08-25 23:44:13'),
(85, '2025-08-25', 'FC', '0001-00001229', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"7000.00\"}]', 0, 0, 7000, 0, '[{\"id\":\"1\",\"fecha\":\"25-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-25', '', '', 0, '2025-08-25 23:44:43'),
(86, '2025-08-26', 'FC', '0001-00001230', 53, 'DO NEGAO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 15:36:05'),
(87, '2025-08-26', 'FC', '0001-00001231', 86, 'KIOSKO LOVATO LOVATO ERICA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 15:38:30'),
(88, '2025-08-26', 'FC', '0001-00001232', 87, 'VERONICA ZAPATA ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 15:41:20'),
(89, '2025-08-26', 'FC', '0001-00001233', 88, 'GRACIELA RUIZ DIAZ', '43616705', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 21:54:57'),
(90, '2025-08-26', 'FC', '0001-00001234', 89, 'KIOSKO JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 23:23:14'),
(91, '2025-08-26', 'FC', '0001-00001235', 90, 'FERNANDO KAENEL ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"26-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-26', '', '', 0, '2025-08-26 23:23:35'),
(92, '2025-08-27', 'FC', '0001-00001236', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"2\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"2400.00\"}]', 0, 0, 12400, 0, '[{\"id\":\"1\",\"fecha\":\"27-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12400\",\"referencia\":\"EFECTIVO\"}]', '2025-08-27', '', '', 0, '2025-08-27 23:27:34'),
(93, '2025-08-27', 'FC', '0001-00001237', 66, 'JESICA VILAKI ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"27-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-27', '', '', 0, '2025-08-27 23:29:07'),
(94, '2025-08-27', 'FC', '0001-00001238', 91, 'ZABEDRA JOSE ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"1\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"1200.00\"}]', 0, 0, 6200, 0, '[{\"id\":\"1\",\"fecha\":\"27-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6200\",\"referencia\":\"EFECTIVO\"}]', '2025-08-27', '', '', 0, '2025-08-27 23:31:15'),
(95, '2025-08-27', 'FC', '0001-00001239', 92, 'CORPORACIóN EVANGELICA MISIONERA HERMANOS DE CRISTO ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"2\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 23000, 0, '[{\"id\":\"1\",\"fecha\":\"27-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"23000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-27', '', '', 0, '2025-08-27 23:37:48'),
(96, '2025-08-28', 'FC', '0001-00001240', 93, 'FABRICIO MENDEZ ', '35177936', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 15:57:03'),
(97, '2025-08-28', 'FC', '0001-00001241', 94, 'NAHUEL .R MENDEZ', '42577907', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 15:59:10'),
(98, '2025-08-28', 'FC', '0001-00001242', 95, 'YANINA ELIZABETH VALDEZ', '36972866', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 16:00:45'),
(99, '2025-08-28', 'FC', '0001-00001243', 43, 'FRANCIS', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"4000.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 16:01:22'),
(100, '2025-08-28', 'FC', '0001-00001244', 62, 'MAYORISTA FONTANA  VICTOR GAS', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 23:32:09'),
(101, '2025-08-28', 'FC', '0001-00001245', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 23:33:47'),
(102, '2025-08-28', 'FC', '0001-00001246', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"7\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"17500.00\"}]', 0, 0, 17500, 0, '[{\"id\":\"1\",\"fecha\":\"28-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17500\",\"referencia\":\"EFECTIVO\"}]', '2025-08-28', '', '', 0, '2025-08-28 23:34:27'),
(103, '2025-08-29', 'FC', '0001-00001247', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"7000.00\"}]', 0, 0, 7000, 0, '[{\"id\":\"1\",\"fecha\":\"29-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-29', '', '', 0, '2025-08-29 16:18:40'),
(104, '2025-08-30', 'FC', '0001-00001248', 96, 'MONTERO CAEROLINA', '365069201', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"30-08-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-08-30', '', '', 0, '2025-08-30 15:22:38'),
(105, '2025-08-30', 'FC', '0001-00001249', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"30-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-30', '', '', 0, '2025-08-30 15:27:32'),
(106, '2025-08-30', 'FC', '0001-00001250', 103, 'MAD PINK LOCAL DE ROPA ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"30-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-30', '', '', 0, '2025-08-30 15:32:41'),
(107, '2025-08-30', 'FC', '0001-00001251', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"104\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"312000.00\"}]', 0, 0, 312000, 0, '[{\"id\":\"1\",\"fecha\":\"30-08-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"312000\",\"referencia\":\"EFECTIVO\"}]', '2025-08-30', '', '', 0, '2025-08-30 19:58:25'),
(108, '2025-09-01', 'FC', '0001-00001252', 48, 'KIOSKO MARCELO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"14\",\"precio\":\"1300.00\",\"descuento\":\"4200.00\",\"total\":\"14000.00\"}]', 0, 0, 14000, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"14000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:04:57'),
(109, '2025-09-01', 'FC', '0001-00001253', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"7\",\"precio\":\"3000.00\",\"descuento\":\"8400.00\",\"total\":\"12600.00\"}]', 0, 0, 12600, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12600\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:06:41'),
(110, '2025-09-01', 'FC', '0001-00001254', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"1200.00\",\"total\":\"1800.00\"}]', 0, 0, 1800, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"1800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:07:06'),
(112, '2025-09-01', 'FC', '0001-00001256', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:10:24'),
(113, '2025-09-01', 'FC', '0001-00001257', 104, 'RODRIGO SAVEDRA MINI MARKET JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"5\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 15100, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15100\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:13:17'),
(114, '2025-09-01', 'FC', '0001-00001258', 105, 'FAMILIA MARTINEZ', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:14:59');
INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(115, '2025-09-01', 'FC', '0001-00001259', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"2700.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:15:58'),
(116, '2025-09-01', 'FC', '0001-00001260', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"2400.00\",\"total\":\"3600.00\"}]', 0, 0, 3600, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3600\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:18:47'),
(117, '2025-09-01', 'FC', '0001-00001261', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"100\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"300000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"20\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"130000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"60\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"72000.00\"}]', 0, 0, 502000, 0, '[{\"id\":\"1\",\"fecha\":\"01-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"502000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-01', '', '', 0, '2025-09-02 00:20:43'),
(118, '2025-09-02', 'FC', '0001-00001262', 106, 'LOCAL WOD SPORT ', '1111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-02', '', '', 0, '2025-09-02 16:11:17'),
(119, '2025-09-02', 'FC', '0001-00001263', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-02', '', '', 0, '2025-09-02 16:13:22'),
(120, '2025-09-02', 'FC', '0001-00001264', 108, 'BARBARA LOURDES EVELIN ', '43616705', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-02', '', '', 0, '2025-09-02 19:18:29'),
(121, '2025-09-02', 'FC', '0001-00001265', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"2500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-02', '', '', 0, '2025-09-02 23:25:43'),
(122, '2025-09-02', 'FC', '0001-00001266', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-02', '', '', 0, '2025-09-02 23:27:08'),
(123, '2025-09-02', 'FC', '0001-00001267', 15, 'FRANCO BISTOLETTI', '22222222', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-02', '', '', 0, '2025-09-02 23:27:36'),
(124, '2025-09-02', 'FC', '0001-00001268', 109, 'LOURDES BILLORDO', '111111111', 65, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"02-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-02', '', '', 0, '2025-09-02 23:29:35'),
(125, '2025-09-03', 'FC', '0001-00001269', 5, 'SUPER CHINO MARCONI.', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"6000.00\",\"total\":\"20000.00\"}]', 0, 0, 20000, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"20000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 17:36:49'),
(126, '2025-09-03', 'FC', '0001-00001270', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1300.00\",\"descuento\":\"-1000.00\",\"total\":\"3600.00\"}]', 0, 0, 3600, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3600\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 17:39:01'),
(127, '2025-09-03', 'FC', '0001-00001271', 111, 'NORMA RIOS ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"2\",\"precio\":\"10000.00\",\"descuento\":\"-2600.00\",\"total\":\"22600.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 26500, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"26500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 17:41:51'),
(128, '2025-09-03', 'FC', '0001-00001272', 87, 'VERONICA ZAPATA ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 17:42:19'),
(129, '2025-09-03', 'FC', '0001-00001273', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 23:37:27'),
(130, '2025-09-03', 'FC', '0001-00001274', 112, 'TABARDA LAURA CAELESTE GUADALUPE', '2020202020', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 23:44:05'),
(131, '2025-09-03', 'FC', '0001-00001275', 113, 'FLORENCIA CASASOLA', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 18500, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"18500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-03', '', '', 0, '2025-09-03 23:45:35'),
(132, '2025-09-03', 'FC', '0001-00001276', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"03-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-03', '', '', 0, '2025-09-03 23:49:09'),
(133, '2025-09-04', 'FC', '0001-00001277', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"04-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-04', '', '', 0, '2025-09-04 16:10:16'),
(134, '2025-09-04', 'FC', '0001-00001278', 114, 'EDUARDO ROMERO ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"04-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-04', '', '', 0, '2025-09-04 16:16:27'),
(135, '2025-09-04', 'FC', '0001-00001279', 115, 'TORRES MIRNA KISOKO ATREVIDA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"04-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-04', '', '', 0, '2025-09-04 16:19:44'),
(136, '2025-09-04', 'FC', '0001-00001280', 84, 'QINIELA MARCONI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"04-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-04', '', '', 0, '2025-09-04 22:34:08'),
(137, '2025-09-06', 'FC', '0001-00001281', 35, 'JESSICA JOHANNA VILAQUI ', '340335150', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"06-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-06', '', '', 0, '2025-09-06 11:48:48'),
(138, '2025-09-06', 'FC', '0001-00001282', 51, 'KIOSKO HERAS', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"06-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-06', '', '', 0, '2025-09-06 11:50:44'),
(139, '2025-09-06', 'FC', '0001-00001283', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"06-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-06', '', '', 0, '2025-09-06 23:21:07'),
(140, '2025-09-06', 'FC', '0001-00001284', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"200\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"600000.00\"}]', 0, 0, 600000, 0, '[{\"id\":\"1\",\"fecha\":\"06-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"600000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-06', '', '', 0, '2025-09-06 23:21:42'),
(141, '2025-09-08', 'FC', '0001-00001285', 90, 'FERNANDO KAENEL ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"6000.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"08-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-08', '', '', 0, '2025-09-08 23:00:43'),
(143, '2025-09-08', 'FC', '0001-00001287', 49, 'PAULINA BAñAGASTA', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"08-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-08', '', '', 0, '2025-09-08 23:02:11'),
(144, '2025-09-08', 'FC', '0001-00001288', 45, 'VIVIANA DE MIGUEL GLAVAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"08-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-08', '', '', 0, '2025-09-08 23:03:06'),
(145, '2025-09-09', 'FC', '0001-00001289', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"8000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:32:22'),
(146, '2025-09-09', 'FC', '0001-00001290', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"9\",\"precio\":\"3000.00\",\"descuento\":\"10800.00\",\"total\":\"16200.00\"}]', 0, 0, 16200, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"16200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:33:05'),
(147, '2025-09-09', 'FC', '0001-00001291', 116, 'CASA DE GOBIERNO ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"3600.00\",\"total\":\"5400.00\"}]', 0, 0, 5400, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5400\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:36:31'),
(148, '2025-09-09', 'FC', '0001-00001292', 53, 'DO NEGAO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:36:59'),
(149, '2025-09-09', 'FC', '0001-00001293', 36, 'POLIGONO ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"3200.00\",\"total\":\"8800.00\"}]', 0, 0, 8800, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8800\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:38:42'),
(151, '2025-09-09', 'FC', '0001-00001295', 117, 'ERIKA AMIGA DE WALTER', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-09', '', '', 0, '2025-09-09 16:41:55'),
(152, '2025-09-09', 'FC', '0001-00001296', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 23:09:43'),
(153, '2025-09-09', 'FC', '0001-00001297', 43, 'FRANCIS', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"7500.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 23:10:38'),
(154, '2025-09-09', 'FC', '0001-00001298', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"2000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"09-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-09', '', '', 0, '2025-09-09 23:11:19'),
(155, '2025-09-10', 'FC', '0001-00001299', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"10-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-10', '', '', 0, '2025-09-10 15:34:31'),
(156, '2025-09-10', 'FC', '0001-00001300', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"1200.00\",\"total\":\"4000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"6500.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 10500, 0, '[{\"id\":\"1\",\"fecha\":\"10-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-10', '', '', 0, '2025-09-10 15:35:07'),
(157, '2025-09-10', 'FC', '0001-00001301', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"10-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-10', '', '', 0, '2025-09-10 23:11:05'),
(158, '2025-09-10', 'FC', '0001-00001302', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"52\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"156000.00\"}]', 0, 0, 156000, 0, '[{\"id\":\"1\",\"fecha\":\"10-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"156000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-10', '', '', 0, '2025-09-10 23:12:21'),
(159, '2025-09-12', 'FC', '0001-00001303', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"50\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"60000.00\"}]', 0, 0, 60000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"60000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 13:31:45'),
(160, '2025-09-12', 'FC', '0001-00001304', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"-2500.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:05:17'),
(161, '2025-09-12', 'FC', '0001-00001305', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:09:59'),
(162, '2025-09-12', 'FC', '0001-00001306', 118, 'MARCIA NEREA CABRELLA', '33930860', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:32:31'),
(163, '2025-09-12', 'FC', '0001-00001307', 119, 'CABRILLA MARLEN NERINA', '37168407', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:36:32'),
(164, '2025-09-12', 'FC', '0001-00001308', 4, 'SUPER CHINO DON BOSCO ', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"3000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:41:39'),
(165, '2025-09-12', 'FC', '0001-00001309', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"5\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:42:58'),
(166, '2025-09-12', 'FC', '0001-00001310', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 19:44:08'),
(167, '2025-09-12', 'FC', '0001-00001311', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"-1300.00\",\"total\":\"11300.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 15200, 0, '[{\"id\":\"2\",\"fecha\":\"12-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"15200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-12', '', '', 0, '2025-09-12 21:54:51'),
(168, '2025-09-12', 'FC', '0001-00001312', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"-1300.00\",\"total\":\"11300.00\"}]', 0, 0, 11300, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11300\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 21:55:16'),
(169, '2025-09-12', 'FC', '0001-00001313', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"12-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-12', '', '', 0, '2025-09-12 23:05:41'),
(170, '2025-09-13', 'FC', '0001-00001314', 69, 'MARGARITA LESCANO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"13-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-13', '', '', 0, '2025-09-13 16:22:19'),
(171, '2025-09-13', 'FC', '0001-00001315', 122, 'MARISEL AYALA ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"13-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-13', '', '', 0, '2025-09-13 16:23:52'),
(172, '2025-09-15', 'FC', '0001-00001316', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"4800.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 15:27:02'),
(173, '2025-09-15', 'FC', '0001-00001317', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 15:27:29'),
(174, '2025-09-15', 'FC', '0001-00001318', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-15', '', '', 0, '2025-09-15 15:27:51'),
(175, '2025-09-15', 'FC', '0001-00001319', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 15:28:20'),
(176, '2025-09-15', 'FC', '0001-00001320', 75, 'PABLO ANDRES RIVAS', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"3000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"10000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-15', '', '', 0, '2025-09-15 15:28:56'),
(177, '2025-09-15', 'FC', '0001-00001321', 84, 'QINIELA MARCONI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 21:57:15'),
(178, '2025-09-15', 'FC', '0001-00001322', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 21:58:30'),
(179, '2025-09-15', 'FC', '0001-00001323', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"15-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-15', '', '', 0, '2025-09-15 21:58:51'),
(180, '2025-09-16', 'FC', '0001-00001324', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-16 15:09:35'),
(181, '2025-09-16', 'FC', '0001-00001325', 123, 'SEBASTIAN BINAGUI OBRAS PUBLICAS ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"1200.00\",\"total\":\"1800.00\"}]', 0, 0, 1800, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"1800\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-16 15:11:31'),
(182, '2025-09-16', 'FC', '0001-00001326', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-16 15:11:59'),
(183, '2025-09-16', 'FC', '0001-00001327', 48, 'KIOSKO MARCELO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"2700.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-16 15:12:28'),
(184, '2025-09-16', 'FC', '0001-00001328', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"2500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-16', '', '', 0, '2025-09-16 15:13:07'),
(185, '2025-09-16', 'FC', '0001-00001329', 124, 'JULIO JOSE ALBERTO CARRIZ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-17 00:13:40'),
(186, '2025-09-16', 'FC', '0001-00001330', 91, 'ZABEDRA JOSE ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"3000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-17 00:14:24'),
(187, '2025-09-16', 'FC', '0001-00001331', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"16-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-16', '', '', 0, '2025-09-17 00:14:52'),
(188, '2025-09-17', 'FC', '0001-00001332', 125, 'MINIMERCADO JOHANA ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"12\",\"precio\":\"10000.00\",\"descuento\":\"-39600.00\",\"total\":\"159600.00\"}]', 0, 0, 159600, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"159600\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-17', '', '', 0, '2025-09-17 15:33:41'),
(189, '2025-09-17', 'FC', '0001-00001333', 115, 'TORRES MIRNA KISOKO ATREVIDA', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"6\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"18000.00\"}]', 0, 0, 18000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"18000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:10:31'),
(190, '2025-09-17', 'FC', '0001-00001334', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"11\",\"precio\":\"1300.00\",\"descuento\":\"3300.00\",\"total\":\"11000.00\"}]', 0, 0, 11000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:11:13'),
(192, '2025-09-17', 'FC', '0001-00001335', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"11\",\"precio\":\"1300.00\",\"descuento\":\"3300.00\",\"total\":\"11000.00\"}]', 0, 0, 11000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"11000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:11:55'),
(193, '2025-09-17', 'FC', '0001-00001336', 114, 'EDUARDO ROMERO ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:13:26'),
(194, '2025-09-17', 'FC', '0001-00001337', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"2\",\"fecha\":\"17-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:14:23'),
(195, '2025-09-17', 'FC', '0001-00001338', 75, 'PABLO ANDRES RIVAS', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"8000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:15:42'),
(196, '2025-09-17', 'FC', '0001-00001339', 126, 'MARISA ESTIGORRIA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"7000.00\",\"total\":\"20000.00\"}]', 0, 0, 20000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"20000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:19:02'),
(197, '2025-09-17', 'FC', '0001-00001340', 126, 'MARISA ESTIGORRIA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"20000.00\",\"total\":\"7000.00\"}]', 0, 0, 7000, 0, '[{\"id\":\"1\",\"fecha\":\"17-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-17', '', '', 0, '2025-09-18 00:19:23'),
(198, '2025-09-18', 'FC', '0001-00001341', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"7\",\"precio\":\"3000.00\",\"descuento\":\"8400.00\",\"total\":\"12600.00\"}]', 0, 0, 12600, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17500\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"18-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"-4900\",\"referencia\":\"EFECTIVO\"}]', '2025-09-18', '', '', 0, '2025-09-18 18:49:11'),
(199, '2025-09-18', 'FC', '0001-00001342', 127, 'OFICINA DE OBRAS PUBLICAS (JUNTA DE EVALUACION) VIVIANA MIEREZ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-18', '', '', 0, '2025-09-18 18:54:42'),
(200, '2025-09-18', 'FC', '0001-00001343', 128, 'GIMENEZ ANA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-18', '', '', 0, '2025-09-18 18:58:27'),
(201, '2025-09-18', 'FC', '0001-00001344', 129, 'ESTEBAN TORRALETTI', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-18', '', '', 0, '2025-09-18 19:02:18'),
(202, '2025-09-18', 'FC', '0001-00001345', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-18', '', '', 0, '2025-09-18 22:11:17'),
(203, '2025-09-18', 'FC', '0001-00001346', 33, 'ROMINA JANET CODUTTI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-18', '', '', 0, '2025-09-18 22:12:42'),
(204, '2025-09-18', 'FC', '0001-00001347', 96, 'MONTERO CAEROLINA', '365069201', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-18', '', '', 0, '2025-09-18 22:13:15'),
(205, '2025-09-18', 'FC', '0001-00001348', 96, 'MONTERO CAEROLINA', '365069201', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-18', '', '', 0, '2025-09-18 22:13:44'),
(206, '2025-09-19', 'FC', '0001-00001349', 104, 'RODRIGO SAVEDRA MINI MARKET JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"5\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 11000, 0, '[{\"id\":\"1\",\"fecha\":\"19-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-19', '', '', 0, '2025-09-19 16:55:44'),
(207, '2025-09-19', 'FC', '0001-00001350', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"19-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-19', '', '', 0, '2025-09-19 23:27:00'),
(208, '2025-09-19', 'FC', '0001-00001351', 46, 'GLADYS MAZZO ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"16\",\"precio\":\"1300.00\",\"descuento\":\"4800.00\",\"total\":\"16000.00\"}]', 0, 0, 16000, 0, '[{\"id\":\"1\",\"fecha\":\"19-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"16000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-19', '', '', 0, '2025-09-19 23:28:03'),
(209, '2025-09-19', 'FC', '0001-00001352', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"200\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"260000.00\"}]', 0, 0, 260000, 0, '[{\"id\":\"1\",\"fecha\":\"19-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"260000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-19', '', '', 0, '2025-09-19 23:28:40'),
(210, '2025-09-22', 'FC', '0001-00001353', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"2500.00\",\"total\":\"12500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-22', '', '', 0, '2025-09-22 15:54:59'),
(211, '2025-09-22', 'FC', '0001-00001354', 89, 'KIOSKO JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"8000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-22', '', '', 0, '2025-09-22 15:55:51'),
(212, '2025-09-22', 'FC', '0001-00001355', 113, 'FLORENCIA CASASOLA', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-22', '', '', 0, '2025-09-22 15:56:41'),
(213, '2025-09-22', 'FC', '0001-00001356', 130, 'NOELIA 6TO PISO ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-22', '', '', 0, '2025-09-22 15:59:07'),
(214, '2025-09-22', 'FC', '0001-00001357', 86, 'KIOSKO LOVATO LOVATO ERICA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"1200.00\",\"total\":\"4000.00\"}]', 0, 0, 4000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-22', '', '', 0, '2025-09-22 16:00:10'),
(215, '2025-09-22', 'FC', '0001-00001358', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"500.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-22', '', '', 0, '2025-09-22 16:04:13'),
(216, '2025-09-22', 'FC', '0001-00001359', 64, 'ALEJANDRO OJEDA', '43616707', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-22', '', '', 0, '2025-09-22 23:27:36'),
(217, '2025-09-22', 'FC', '0001-00001360', 89, 'KIOSKO JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"2700.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-22', '', '', 0, '2025-09-22 23:28:17'),
(218, '2025-09-22', 'FC', '0001-00001360', 89, 'KIOSKO JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"2700.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"22-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-22', '', '', 0, '2025-09-22 23:28:18'),
(219, '2025-09-23', 'FC', '0001-00001361', 49, 'PAULINA BAñAGASTA', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-23', '', '', 0, '2025-09-23 15:26:11'),
(220, '2025-09-23', 'FC', '0001-00001362', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"23-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-23', '', '', 0, '2025-09-23 15:26:45'),
(221, '2025-09-23', 'FC', '0001-00001363', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"1500.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-23', '', '', 0, '2025-09-23 23:31:49'),
(222, '2025-09-23', 'FC', '0001-00001364', 104, 'RODRIGO SAVEDRA MINI MARKET JOSE', '43616705', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"3\",\"precio\":\"1600.00\",\"descuento\":\"300.00\",\"total\":\"4500.00\"}]', 0, 0, 4500, 0, '[{\"id\":\"1\",\"fecha\":\"23-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4500\",\"referencia\":\"EFECTIVO\"}]', '2025-09-23', '', '', 0, '2025-09-23 23:32:25'),
(223, '2025-09-24', 'FC', '0001-00001365', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"24-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-24', '', '', 0, '2025-09-24 15:08:39');
INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(225, '2025-09-24', 'FC', '0001-00001367', 4, 'SUPER CHINO DON BOSCO ', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"1800.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"24-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-24', '', '', 0, '2025-09-24 15:12:40'),
(226, '2025-09-24', 'FC', '0001-00001368', 131, 'GOMEZ LEA ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"24-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-24', '', '', 0, '2025-09-24 15:16:05'),
(227, '2025-09-24', 'FC', '0001-00001369', 91, 'ZABEDRA JOSE ', '2020202020', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"24-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-09-24', '', '', 0, '2025-09-24 19:52:54'),
(228, '2025-09-24', 'FC', '0001-00001370', 49, 'PAULINA BAñAGASTA', '2020202020', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"2\",\"precio\":\"1600.00\",\"descuento\":\"200.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"24-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-24', '', '', 0, '2025-09-24 19:53:27'),
(229, '2025-09-25', 'FC', '0001-00001371', 90, 'FERNANDO KAENEL ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"2000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"25-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-25', '', '', 0, '2025-09-25 21:14:59'),
(230, '2025-09-25', 'FC', '0001-00001372', 84, 'QINIELA MARCONI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"25-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-25', '', '', 0, '2025-09-25 21:15:49'),
(231, '2025-09-25', 'FC', '0001-00001373', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"25-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9100\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-25', '', '', 0, '2025-09-25 21:16:13'),
(232, '2025-09-25', 'FC', '0001-00001374', 64, 'ALEJANDRO OJEDA', '43616707', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"25-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-25', '', '', 0, '2025-09-25 21:16:46'),
(234, '2025-09-25', 'FC', '0001-00001376', 106, 'LOCAL WOD SPORT ', '1111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"25-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-25', '', '', 0, '2025-09-25 23:40:09'),
(235, '2025-09-26', 'FC', '0001-00001377', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"2500.00\",\"total\":\"12500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-26', '', '', 0, '2025-09-26 14:49:32'),
(236, '2025-09-26', 'FC', '0001-00001378', 92, 'CORPORACIóN EVANGELICA MISIONERA HERMANOS DE CRISTO ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"2000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-26', '', '', 0, '2025-09-26 14:50:08'),
(237, '2025-09-26', 'FC', '0001-00001379', 128, 'GIMENEZ ANA', '1111111111', 65, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"4\",\"precio\":\"1600.00\",\"descuento\":\"0.00\",\"total\":\"6400.00\"}]', 0, 0, 6400, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6400\",\"referencia\":\"EFECTIVO\"}]', '2025-09-26', '', '', 0, '2025-09-26 16:15:30'),
(239, '2025-09-26', 'FC', '0001-00001381', 63, 'VERONICA BERLINI', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"17\",\"precio\":\"1300.00\",\"descuento\":\"-1700.00\",\"total\":\"23800.00\"}]', 0, 0, 23800, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"23800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-26', '', '', 0, '2025-09-26 16:24:02'),
(240, '2025-09-26', 'FC', '0001-00001382', 133, 'CLIENTE RAMDON DE LA CALLE ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"1\",\"precio\":\"10000.00\",\"descuento\":\"-2000.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-26', '', '', 0, '2025-09-26 16:25:06'),
(241, '2025-09-26', 'FC', '0001-00001383', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"200\",\"precio\":\"1300.00\",\"descuento\":\"60000.00\",\"total\":\"200000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"100\",\"precio\":\"1200.00\",\"descuento\":\"30000.00\",\"total\":\"90000.00\"}]', 0, 0, 290000, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"290000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-26', '', '', 0, '2025-09-26 16:31:26'),
(242, '2025-09-26', 'FC', '0001-00001384', 75, 'PABLO ANDRES RIVAS', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"3000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"26-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-26', '', '', 0, '2025-09-26 23:42:25'),
(243, '2025-09-27', 'FC', '0001-00001385', 134, 'GUSTAVO QUINTANA ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"30\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"36000.00\"}]', 0, 0, 36000, 0, '[{\"id\":\"1\",\"fecha\":\"27-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"36000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-27', '', '', 0, '2025-09-27 16:02:59'),
(244, '2025-09-27', 'FC', '0001-00001386', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 7800, '[{\"id\":\"1\",\"fecha\":\"27-09-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"7800\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-09-27', '', '', 0, '2025-09-27 16:09:47'),
(245, '2025-09-27', 'FC', '0001-00001387', 48, 'KIOSKO MARCELO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"2400.00\",\"total\":\"8000.00\"}]', 0, 0, 8000, 0, '[{\"id\":\"1\",\"fecha\":\"27-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"8000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-27', '', '', 0, '2025-09-27 16:10:59'),
(247, '2025-09-27', 'FC', '0001-00001389', 135, 'CRISAL SUPERMERCADO ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"51\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"61200.00\"}]', 0, 0, 61200, 0, '[{\"id\":\"1\",\"fecha\":\"01-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"61200\",\"referencia\":\"EFECTIVO\"}]', '2025-09-27', '', '', 0, '2025-10-01 23:13:27'),
(248, '2025-09-27', 'FC', '0001-00001390', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"2700.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"27-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-27', '', '', 0, '2025-09-27 22:54:03'),
(249, '2025-09-27', 'FC', '0001-00001391', 5, 'SUPER CHINO MARCONI.', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"13\",\"precio\":\"1300.00\",\"descuento\":\"3900.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"27-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-27', '', '', 0, '2025-09-27 22:55:13'),
(250, '2025-09-30', 'FC', '0001-00001392', 135, 'CRISAL SUPERMERCADO ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"2000.00\",\"total\":\"24000.00\"}]', 0, 0, 24000, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"24000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 16:06:26'),
(251, '2025-09-30', 'FC', '0001-00001393', 136, 'SUPERMERCADO ALEX', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 16:10:25'),
(252, '2025-09-30', 'FC', '0001-00001394', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 16:11:02'),
(253, '2025-09-30', 'FC', '0001-00001395', 115, 'TORRES MIRNA KISOKO ATREVIDA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 9100, '[{\"id\":\"2\",\"fecha\":\"30-09-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"9100\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-09-30', '', '', 0, '2025-09-30 16:14:16'),
(254, '2025-09-30', 'FC', '0001-00001396', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"-600.00\",\"total\":\"7800.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"2100.00\",\"total\":\"7000.00\"}]', 0, 0, 14800, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"14800\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 16:19:36'),
(255, '2025-09-30', 'FC', '0001-00001397', 66, 'JESICA VILAKI ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 23:24:56'),
(256, '2025-09-30', 'FC', '0001-00001398', 20, 'VERDULERIA ', '29777888', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 23:25:25'),
(257, '2025-09-30', 'FC', '0001-00001399', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"11700.00\"}]', 0, 0, 11700, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11700\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 23:25:45'),
(258, '2025-09-30', 'FC', '0001-00001400', 122, 'MARISEL AYALA ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"2\",\"fecha\":\"30-09-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-09-30', '', '', 0, '2025-09-30 23:26:20'),
(259, '2025-09-30', 'FC', '0001-00001401', 69, 'MARGARITA LESCANO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"30-09-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-09-30', '', '', 0, '2025-09-30 23:27:55'),
(260, '2025-10-01', 'FC', '0001-00001402', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"01-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-01', '', '', 0, '2025-10-01 15:27:16'),
(261, '2025-10-01', 'FC', '0001-00001403', 137, 'CASTRO CARLOS NEGOCIO ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"30\",\"precio\":\"1300.00\",\"descuento\":\"-3000.00\",\"total\":\"42000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"30\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"36000.00\"}]', 0, 0, 78000, 0, '[{\"id\":\"1\",\"fecha\":\"01-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"78000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-01', '', '', 0, '2025-10-01 15:29:26'),
(262, '2025-10-02', 'FC', '0001-00001404', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-02', '', '', 0, '2025-10-02 15:24:19'),
(263, '2025-10-02', 'FC', '0001-00001405', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"8\",\"precio\":\"3000.00\",\"descuento\":\"4000.00\",\"total\":\"20000.00\"}]', 0, 0, 20000, 20000, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"20000\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-10-02', '', '', 0, '2025-10-02 15:25:20'),
(264, '2025-10-02', 'FC', '0001-00001406', 123, 'SEBASTIAN BINAGUI OBRAS PUBLICAS ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-02', '', '', 0, '2025-10-02 15:26:10'),
(265, '2025-10-02', 'FC', '0001-00001407', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"4\",\"precio\":\"10000.00\",\"descuento\":\"34800.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-02', '', '', 0, '2025-10-03 00:13:15'),
(266, '2025-10-02', 'FC', '0001-00001408', 135, 'CRISAL SUPERMERCADO ', '1111111111', 2, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"5\",\"precio\":\"6500.00\",\"descuento\":\"-5000.00\",\"total\":\"37500.00\"}]', 0, 0, 37500, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"37500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-02', '', '', 0, '2025-10-03 00:14:25'),
(267, '2025-10-02', 'FC', '0001-00001409', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-02', '', '', 0, '2025-10-03 00:14:56'),
(268, '2025-10-02', 'FC', '0001-00001410', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"02-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-02', '', '', 0, '2025-10-03 00:15:45'),
(269, '2025-10-03', 'FC', '0001-00001411', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"200\",\"precio\":\"1300.00\",\"descuento\":\"60000.00\",\"total\":\"200000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"3000.00\",\"total\":\"9000.00\"}]', 0, 0, 209000, 0, '[{\"id\":\"1\",\"fecha\":\"03-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"209000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-03', '', '', 0, '2025-10-04 01:39:41'),
(270, '2025-10-03', 'FC', '0001-00001412', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"6\",\"descripcion\":\"RECARGA BIDON DE AGUA MAYOR\",\"codigo\":\"RECARGA\",\"cantidad\":\"20\",\"precio\":\"1600.00\",\"descuento\":\"2000.00\",\"total\":\"30000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 43000, 0, '[{\"id\":\"1\",\"fecha\":\"03-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"43000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-03', '', '', 0, '2025-10-04 01:43:38'),
(271, '2025-10-03', 'FC', '0001-00001413', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"03-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-03', '', '', 0, '2025-10-04 01:44:27'),
(272, '2025-10-03', 'FC', '0001-00001414', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"03-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-03', '', '', 0, '2025-10-04 01:45:12'),
(273, '2025-10-03', 'FC', '0001-00001415', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"03-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-03', '', '', 0, '2025-10-04 01:46:57'),
(274, '2025-10-04', 'FC', '0001-00001416', 138, 'CARLOS HARDY', '29777666', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"-4000.00\",\"total\":\"30000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"04-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"30000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-04', '', '', 0, '2025-10-04 12:42:36'),
(275, '2025-10-06', 'FC', '0001-00001417', 130, 'NOELIA 6TO PISO ', '1111111111', 2, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"06-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-06', '', '', 0, '2025-10-06 15:27:37'),
(276, '2025-10-06', 'FC', '0001-00001418', 129, 'ESTEBAN TOFFALETTI', '1111111111', 2, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"},{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"06-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"30000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-06', '', '', 0, '2025-10-06 15:29:55'),
(277, '2025-10-06', 'FC', '0001-00001419', 132, 'JOSE SAVEEDRA ', '1111111111', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"-600.00\",\"total\":\"7800.00\"}]', 0, 0, 16900, 0, '[{\"id\":\"1\",\"fecha\":\"06-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"16900\",\"referencia\":\"EFECTIVO\"}]', '2025-10-06', '', '', 0, '2025-10-06 15:30:42'),
(278, '2025-10-07', 'FC', '0001-00001420', 108, 'BARBARA LOURDES EVELIN ', '43616705', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"07-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-07', '', '', 0, '2025-10-07 14:11:54'),
(279, '2025-10-07', 'FC', '0001-00001421', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"7500.00\",\"descuento\":\"1000.00\",\"total\":\"6500.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"07-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-10-07', '', '', 0, '2025-10-07 15:17:26'),
(280, '2025-10-07', 'FC', '0001-00001422', 72, 'PRISILA BARRANQUERAS', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"07-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-07', '', '', 0, '2025-10-07 15:25:06'),
(281, '2025-10-07', 'FC', '0001-00001423', 89, 'KIOSKO JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"07-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-07', '', '', 0, '2025-10-07 15:29:55'),
(282, '2025-10-08', 'FC', '0001-00001424', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"12\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"15600.00\"}]', 0, 0, 15600, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15600\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-08 15:30:04'),
(283, '2025-10-08', 'FC', '0001-00001425', 86, 'KIOSKO LOVATO LOVATO ERICA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-08 15:30:40'),
(284, '2025-10-08', 'FC', '0001-00001426', 110, 'MIRIAN RAMOS OBRAS PUBLICAS', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-08 15:32:36'),
(285, '2025-10-08', 'FC', '0001-00001427', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"7500.00\",\"descuento\":\"500.00\",\"total\":\"7000.00\"}]', 0, 0, 7000, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-08 15:41:43'),
(286, '2025-10-08', 'FC', '0001-00001428', 98, 'MONTERO CAEROLINA', '365069201', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-08', '', '', 0, '2025-10-09 00:08:27'),
(287, '2025-10-08', 'FC', '0001-00001429', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9100\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-08', '', '', 0, '2025-10-09 00:09:47'),
(288, '2025-10-08', 'FC', '0001-00001430', 140, 'KAREN MARCONI QUINIELA', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-09 00:11:37'),
(289, '2025-10-08', 'FC', '0001-00001431', 17, 'MEGAMUNDO', '2002022000', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-09 00:12:41'),
(290, '2025-10-08', 'FC', '0001-00001432', 141, 'CHI SAN MARTIN ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"19\",\"precio\":\"1300.00\",\"descuento\":\"1900.00\",\"total\":\"22800.00\"}]', 0, 0, 34800, 0, '[{\"id\":\"1\",\"fecha\":\"08-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"34800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-08', '', '', 0, '2025-10-09 00:18:09'),
(291, '2025-10-10', 'FC', '0001-00001433', 142, 'BELEN ', '1111111111', 65, 0, '[{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"2\",\"precio\":\"12000.00\",\"descuento\":\"0.00\",\"total\":\"24000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 34400, 0, '[{\"id\":\"1\",\"fecha\":\"10-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"34400\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-10', '', '', 0, '2025-10-10 12:05:47'),
(292, '2025-10-10', 'FC', '0001-00001434', 144, 'KIOSCO FONTANA AL FONDO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"13\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"16900.00\"},{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"15\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"22500.00\"}]', 0, 0, 39400, 0, '[{\"id\":\"1\",\"fecha\":\"10-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"39400\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-10', '', '', 0, '2025-10-10 12:42:29'),
(293, '2025-10-10', 'FC', '0001-00001435', 143, 'KIOSCO JOSE', '1111111111', 65, 2, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"20\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"30000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"10-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"30000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-10', '', '', 0, '2025-11-19 13:04:27'),
(294, '2025-10-10', 'FC', '0001-00001436', 145, 'CHINO DIAGONAL BARRANQUERAS ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"2000.00\",\"total\":\"24000.00\"}]', 0, 0, 24000, 0, '[{\"id\":\"1\",\"fecha\":\"10-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"24000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-10', '', '', 0, '2025-10-10 12:53:35'),
(295, '2025-10-11', 'FC', '0001-00001437', 147, 'CHINO SUPER SOL ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"1000.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 14:38:07'),
(296, '2025-10-11', 'FC', '0001-00001438', 148, 'KIOSCO AV BOGOTA', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"50\",\"precio\":\"1500.00\",\"descuento\":\"-10000.00\",\"total\":\"85000.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 88000, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"88000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 14:50:38'),
(297, '2025-10-11', 'FC', '0001-00001439', 149, 'PARRILLA ', '1111111111', 65, 0, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"},{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"30\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"45000.00\"}]', 0, 0, 48000, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"48000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-11', '', '', 0, '2025-10-11 14:57:48'),
(298, '2025-10-11', 'FC', '0001-00001440', 150, 'MIGUEL VERDULERIA GRANDE ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"-600.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 15:01:35'),
(299, '2025-10-11', 'FC', '0001-00001441', 151, 'NEGOCIO MAC LEAN 2000', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 15:37:58'),
(300, '2025-10-11', 'FC', '0001-00001442', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 2, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"100\",\"precio\":\"1200.00\",\"descuento\":\"30000.00\",\"total\":\"90000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"100\",\"precio\":\"1300.00\",\"descuento\":\"30000.00\",\"total\":\"100000.00\"}]', 0, 0, 190000, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"190000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-11', '', '', 0, '2025-10-11 17:29:46'),
(301, '2025-10-11', 'FC', '0001-00001443', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 17:30:47'),
(302, '2025-10-11', 'FC', '0001-00001444', 1, 'CONSUMIDOR FINAL', '0', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"1\",\"precio\":\"1200.00\",\"descuento\":\"-1800.00\",\"total\":\"3000.00\"}]', 0, 0, 9500, 0, '[{\"id\":\"1\",\"fecha\":\"11-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-11', '', '', 0, '2025-10-11 17:31:25'),
(303, '2025-10-14', 'FC', '0001-00001445', 15, 'FRANCO BISTOLETTI', '22222222', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"14-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-14', '', '', 0, '2025-10-14 11:27:51'),
(304, '2025-10-14', 'FC', '0001-00001446', 152, 'VERDUKERIA BERTACA CALLE 8', '1111111111', 65, 0, '[{\"id\":\"11\",\"descripcion\":\"AZUCAR\",\"codigo\":\"ALI10\",\"cantidad\":\"3\",\"precio\":\"6200.00\",\"descuento\":\"600.00\",\"total\":\"18000.00\"},{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"30\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"45000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 76000, 0, '[{\"id\":\"1\",\"fecha\":\"14-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"76000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-14', '', '', 0, '2025-10-14 11:38:59'),
(305, '2025-10-14', 'FC', '0001-00001447', 153, 'GASTON PICEDA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"14-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-14', '', '', 0, '2025-10-14 11:44:04'),
(306, '2025-10-14', 'FC', '0001-00001448', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"7\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"10500.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 17000, 0, '[{\"id\":\"1\",\"fecha\":\"14-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-14', '', '', 0, '2025-10-14 11:48:20'),
(307, '2025-10-14', 'FC', '0001-00001449', 33, 'ROMINA JANET CODUTTI', '43616709', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"14-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-14', '', '', 0, '2025-10-14 11:53:46'),
(308, '2025-10-15', 'FC', '0001-00001450', 157, 'CHINO', '1111111111', 65, 0, '[{\"id\":\"11\",\"descripcion\":\"AZUCAR\",\"codigo\":\"ALI10\",\"cantidad\":\"100\",\"precio\":\"6200.00\",\"descuento\":\"30000.00\",\"total\":\"590000.00\"},{\"id\":\"12\",\"descripcion\":\"YERBA\",\"codigo\":\"ALI11\",\"cantidad\":\"5\",\"precio\":\"18000.00\",\"descuento\":\"0.00\",\"total\":\"90000.00\"}]', 0, 0, 680000, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"680000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-15', '', '', 0, '2025-10-15 11:36:36'),
(309, '2025-10-15', 'FC', '0001-00001451', 113, 'FLORENCIA CASASOLA', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-15', '', '', 0, '2025-10-15 11:46:19'),
(310, '2025-10-15', 'FC', '0001-00001452', 158, 'MANUEL SOTELO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"11700.00\"}]', 0, 0, 11700, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"11700\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-15', '', '', 0, '2025-10-15 11:51:02'),
(311, '2025-10-15', 'FC', '0001-00001453', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"7500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"}]', 0, 0, 20500, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"20500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-15', '', '', 0, '2025-10-15 11:59:54'),
(312, '2025-10-15', 'FC', '0001-00001454', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-15', '', '', 0, '2025-10-15 15:44:39'),
(313, '2025-10-15', 'FC', '0001-00001455', 159, 'GREEN MARKET FONTANA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"15-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-10-15', '', '', 0, '2025-10-15 15:52:05'),
(314, '2025-10-17', 'FC', '0001-00001456', 160, ' KIOSCO AV SOBERANIA Y CALLE 16', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 153000, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"153000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:38:47'),
(315, '2025-10-17', 'FC', '0001-00001457', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:39:47'),
(316, '2025-10-17', 'FC', '0001-00001458', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"13000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:40:51'),
(317, '2025-10-17', 'FC', '0001-00001459', 4, 'SUPER CHINO DON BOSCO ', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"300.00\",\"total\":\"3600.00\"}]', 0, 0, 3600, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"-300\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:43:32'),
(318, '2025-10-17', 'FC', '0001-00001460', 161, 'YANINE KOLCHESKY', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"1500.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:47:37'),
(319, '2025-10-17', 'FC', '0001-00001461', 162, 'KIOSCO JONAS', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 11:52:29'),
(320, '2025-10-17', 'FC', '0001-00001462', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 12:13:36'),
(321, '2025-10-17', 'FC', '0001-00001463', 163, 'CORRENTINO VALLEJOS', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"700\",\"precio\":\"1500.00\",\"descuento\":\"70000.00\",\"total\":\"980000.00\"}]', 0, 0, 980000, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"980000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 12:37:21'),
(322, '2025-10-17', 'FC', '0001-00001464', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 12:43:06'),
(323, '2025-10-17', 'FC', '0001-00001465', 155, 'POLICONSULTORIO', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"17-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-17', '', '', 0, '2025-10-17 12:44:45'),
(324, '2025-10-18', 'FC', '0001-00001466', 165, 'CHI ITALIA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"26000.00\"}]', 0, 0, 26000, 0, '[{\"id\":\"1\",\"fecha\":\"18-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"26000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-18', '', '', 0, '2025-10-18 12:31:44'),
(325, '2025-10-18', 'FC', '0001-00001467', 135, 'CRISAL SUPERMERCADO ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"16\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"20800.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"25\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"30000.00\"}]', 0, 0, 50800, 0, '[{\"id\":\"1\",\"fecha\":\"18-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"50800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-18', '', '', 0, '2025-10-18 17:03:18'),
(326, '2025-10-20', 'FC', '0001-00001468', 86, 'KIOSKO LOVATO LOVATO ERICA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 12:54:09'),
(327, '2025-10-20', 'FC', '0001-00001469', 167, 'OJEDA ANTONIETA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 12:58:04'),
(328, '2025-10-20', 'FC', '0001-00001470', 168, 'LEA ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 13:02:01');
INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(329, '2025-10-20', 'FC', '0001-00001471', 143, 'KIOSCO JOSE', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"5\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 17900, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17900\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 13:04:39'),
(330, '2025-10-20', 'FC', '0001-00001472', 169, 'NELI SOLAR', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 13:06:14'),
(331, '2025-10-20', 'FC', '0001-00001473', 170, 'LOS NIETOS KIOSCO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 13:06:54'),
(332, '2025-10-20', 'FC', '0001-00001474', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"},{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"10\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 20200, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"20200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-20', '', '', 0, '2025-10-20 13:08:51'),
(333, '2025-10-20', 'FC', '0001-00001475', 142, 'BELEN ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"10400\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-20', '', '', 0, '2025-10-20 16:47:37'),
(334, '2025-10-20', 'FC', '0001-00001476', 171, 'EVA VILLA ITATI', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"50\",\"precio\":\"1200.00\",\"descuento\":\"-5000.00\",\"total\":\"65000.00\"}]', 0, 0, 65000, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"65000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 16:50:48'),
(335, '2025-10-20', 'FC', '0001-00001477', 140, 'KAREN MARCONI QUINIELA', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"20-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-20', '', '', 0, '2025-10-20 17:23:14'),
(336, '2025-10-21', 'FC', '0001-00001478', 104, 'RODRIGO SAVEDRA MINI MARKET JOSE', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9100\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-21', '', '', 0, '2025-10-21 11:48:04'),
(337, '2025-10-21', 'FC', '0001-00001479', 172, 'VICTORIA VALLI ', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-21', '', '', 0, '2025-10-21 12:00:39'),
(338, '2025-10-21', 'FC', '0001-00001480', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"10\",\"precio\":\"1500.00\",\"descuento\":\"-2000.00\",\"total\":\"17000.00\"}]', 0, 0, 17000, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-21', '', '', 0, '2025-10-21 12:08:00'),
(339, '2025-10-21', 'FC', '0001-00001481', 62, 'MAYORISTA FONTANA  VICTOR GAS', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-21', '', '', 0, '2025-10-21 12:14:21'),
(340, '2025-10-21', 'FC', '0001-00001482', 130, 'NOELIA 6TO PISO ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-21', '', '', 0, '2025-10-21 12:15:18'),
(341, '2025-10-21', 'FC', '0001-00001483', 163, 'CORRENTINO VALLEJOS', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"500\",\"precio\":\"1500.00\",\"descuento\":\"50000.00\",\"total\":\"700000.00\"}]', 0, 0, 700000, 0, '[{\"id\":\"1\",\"fecha\":\"21-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"700000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-21', '', '', 0, '2025-10-21 20:02:25'),
(342, '2025-10-22', 'FC', '0001-00001484', 173, 'RITO ANTONIO', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"50\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"75000.00\"}]', 0, 0, 75000, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"75000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 12:51:49'),
(343, '2025-10-22', 'FC', '0001-00001485', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"12\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"15600.00\"}]', 0, 0, 15600, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15600\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:00:08'),
(344, '2025-10-22', 'FC', '0001-00001486', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"10\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:01:56'),
(345, '2025-10-22', 'FC', '0001-00001487', 174, 'MARKTING MAXI ', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:13:50'),
(346, '2025-10-22', 'FC', '0001-00001488', 37, 'ALICIA SABUGO', '42986923', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"60\",\"precio\":\"1300.00\",\"descuento\":\"-6000.00\",\"total\":\"84000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"20\",\"precio\":\"1200.00\",\"descuento\":\"-2000.00\",\"total\":\"26000.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"3\",\"precio\":\"7500.00\",\"descuento\":\"0.00\",\"total\":\"22500.00\"}]', 0, 0, 132500, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"132500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:17:34'),
(347, '2025-10-22', 'FC', '0001-00001489', 175, 'MENDES VERDULERIA SM', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"13\",\"precio\":\"1300.00\",\"descuento\":\"-6500.00\",\"total\":\"23400.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"6\",\"precio\":\"7500.00\",\"descuento\":\"3000.00\",\"total\":\"42000.00\"}]', 0, 0, 65400, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"65400\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:21:27'),
(348, '2025-10-22', 'FC', '0001-00001490', 176, 'CAFI SM', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"40\",\"precio\":\"1300.00\",\"descuento\":\"-20000.00\",\"total\":\"72000.00\"}]', 0, 0, 72000, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"72000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:23:46'),
(349, '2025-10-22', 'FC', '0001-00001491', 177, 'JUAN SM', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"18\",\"precio\":\"1300.00\",\"descuento\":\"-12600.00\",\"total\":\"36000.00\"}]', 0, 0, 36000, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"36000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-22', '', '', 0, '2025-10-22 13:24:58'),
(350, '2025-10-22', 'FC', '0001-00001492', 178, 'LOA TRES HERMANOS ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"22-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-22', '', '', 0, '2025-10-22 14:52:22'),
(351, '2025-10-23', 'FC', '0001-00001493', 179, 'BAYRON ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"23-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-23', '', '', 0, '2025-10-23 11:52:28'),
(352, '2025-10-23', 'FC', '0001-00001494', 98, 'MONTERO CAEROLINA', '365069201', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"23-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-23', '', '', 0, '2025-10-23 12:32:56'),
(353, '2025-10-23', 'FC', '0001-00001495', 180, 'JUAN LAS HERAS ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"23-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-23', '', '', 0, '2025-10-23 12:37:00'),
(354, '2025-10-23', 'FC', '0001-00001496', 127, 'OFICINA DE OBRAS PUBLICAS (JUNTA DE EVALUACION) VIVIANA MIEREZ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"23-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-23', '', '', 0, '2025-10-23 12:38:20'),
(355, '2025-10-23', 'FC', '0001-00001497', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"23-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-23', '', '', 0, '2025-10-23 12:41:13'),
(356, '2025-10-24', 'FC', '0001-00001498', 181, 'MAURICIO INSAURRALDE', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 10:52:25'),
(357, '2025-10-24', 'FC', '0001-00001499', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 11:08:07'),
(358, '2025-10-24', 'FC', '0001-00001500', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 11:22:11'),
(359, '2025-10-24', 'FC', '0001-00001501', 171, 'EVA VILLA ITATI', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"50\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"60000.00\"}]', 0, 0, 60000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"60000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 11:24:55'),
(360, '2025-10-24', 'FC', '0001-00001502', 183, 'WALTER GRANDOTTI ', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 40000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"40000\",\"referencia\":\"tranferencia\"}]', '2025-10-24', '', '', 0, '2025-10-24 11:46:40'),
(361, '2025-10-24', 'FC', '0001-00001503', 17, 'MEGAMUNDO', '2002022000', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 13:14:40'),
(362, '2025-10-24', 'FC', '0001-00001504', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-24', '', '', 0, '2025-10-24 15:09:13'),
(363, '2025-10-24', 'FC', '0001-00001505', 184, 'MARCELO CABRAL MRK ESTUDIO', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 15:32:38'),
(364, '2025-10-24', 'FC', '0001-00001506', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"24-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-24', '', '', 0, '2025-10-24 15:35:30'),
(365, '2025-10-25', 'FC', '0001-00001507', 185, 'JESSICA MARTINA', '2020202020', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-25', '', '', 0, '2025-10-25 17:14:06'),
(366, '2025-10-25', 'FC', '0001-00001508', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"6\",\"precio\":\"1200.00\",\"descuento\":\"-600.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-10-25', '', '', 0, '2025-10-25 17:20:57'),
(367, '2025-10-25', 'FC', '0001-00001509', 186, 'VERDULERIA Y FRUTERIA ESQUINA 5 (MARCONI)', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"15\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"}]', 0, 0, 19500, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"19500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-25', '', '', 0, '2025-10-25 17:56:21'),
(368, '2025-10-25', 'FC', '0001-00001510', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"300\",\"precio\":\"1300.00\",\"descuento\":\"360000.00\",\"total\":\"30000.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"100\",\"precio\":\"1200.00\",\"descuento\":\"30000.00\",\"total\":\"90000.00\"}]', 0, 0, 120000, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"120000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-25', '', '', 0, '2025-10-25 21:35:59'),
(369, '2025-10-25', 'FC', '0001-00001511', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-25', '', '', 0, '2025-10-25 21:38:00'),
(370, '2025-10-25', 'FC', '0001-00001512', 187, 'OLGA FRANCO', '43616709', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-25', '', '', 0, '2025-10-25 22:14:41'),
(372, '2025-10-25', 'FC', '0001-00001514', 188, 'CHEFU TATTOO', '43616705', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"25-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-25', '', '', 0, '2025-10-25 23:19:14'),
(373, '2025-10-27', 'FC', '0001-00001515', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"27-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-27', '', '', 0, '2025-10-27 15:46:51'),
(374, '2025-10-27', 'FC', '0001-00001516', 66, 'JESICA VILAKI ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"27-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-27', '', '', 0, '2025-10-27 15:47:15'),
(375, '2025-10-28', 'FC', '0001-00001517', 167, 'OJEDA ANTONIETA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-28', '', '', 0, '2025-10-28 13:25:58'),
(376, '2025-10-28', 'FC', '0001-00001518', 189, 'GUSTAVO ', '1111111111', 65, 0, '[{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"1\",\"precio\":\"7500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"},{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 10500, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-28', '', '', 0, '2025-10-28 13:36:34'),
(377, '2025-10-28', 'FC', '0001-00001519', 190, 'CARLOS SHENONE', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-28', '', '', 0, '2025-10-28 13:38:16'),
(378, '2025-10-28', 'FC', '0001-00001520', 191, 'MARIO AGLIORI ', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"20\",\"precio\":\"1500.00\",\"descuento\":\"-4000.00\",\"total\":\"34000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 43100, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"43100\",\"referencia\":\"EFECTIVO\"}]', '2025-10-28', '', '', 0, '2025-10-28 13:43:44'),
(379, '2025-10-28', 'FC', '0001-00001521', 64, 'ALEJANDRO OJEDA', '43616707', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-28', '', '', 0, '2025-10-28 13:44:19'),
(380, '2025-10-28', 'FC', '0001-00001522', 128, 'GIMENEZ ANA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-28', '', '', 0, '2025-10-28 15:48:04'),
(381, '2025-10-28', 'FC', '0001-00001523', 192, 'MARIA ELENA MONSEÑOR ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"1000.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"28-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-28', '', '', 0, '2025-10-28 15:50:15'),
(382, '2025-10-29', 'FC', '0001-00001524', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-10-29 15:22:41'),
(383, '2025-10-29', 'FC', '0001-00001525', 193, 'ALFONSO WALTER', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-10-29 15:24:23'),
(384, '2025-10-29', 'FC', '0001-00001526', 62, 'MAYORISTA FONTANA  VICTOR GAS', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-10-29 15:24:44'),
(386, '2025-10-29', 'FC', '0001-00001528', 194, 'SUPER DON COCO ', '2020202020', 65, 1, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"22\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"26400.00\"}]', 0, 0, 26400, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"26400\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-11-19 13:07:26'),
(388, '2025-10-29', 'FC', '0001-00001530', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"11\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"14300.00\"}]', 0, 0, 14300, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"14300\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-10-29 15:39:18'),
(389, '2025-10-29', 'FC', '0001-00001531', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"6\",\"precio\":\"3000.00\",\"descuento\":\"3000.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"29-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-29', '', '', 0, '2025-10-29 15:39:52'),
(390, '2025-10-30', 'FC', '0001-00001532', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-10-30', '', '', 0, '2025-10-30 14:41:02'),
(391, '2025-10-30', 'FC', '0001-00001533', 195, 'VERDULERIA ROSS', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-30', '', '', 0, '2025-10-30 14:42:44'),
(392, '2025-10-30', 'FC', '0001-00001534', 196, 'KIOSCO  EL PELADO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-30', '', '', 0, '2025-10-30 14:45:12'),
(393, '2025-10-30', 'FC', '0001-00001535', 1, 'CONSUMIDOR FINAL', '0', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"17000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"},{\"id\":\"2\",\"fecha\":\"30-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"-17000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-30', '', '', 0, '2025-10-30 19:24:15'),
(394, '2025-10-30', 'FC', '0001-00001536', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-30', '', '', 0, '2025-10-30 19:45:09'),
(395, '2025-10-30', 'FC', '0001-00001537', 198, 'HEDY INGENIERA QUIMICA', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"30-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-30', '', '', 0, '2025-10-30 19:53:13'),
(396, '2025-10-31', 'FC', '0001-00001538', 199, 'MARLY TABOADA', '2020202020', 2, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-31', '', '', 0, '2025-10-31 12:03:48'),
(397, '2025-10-31', 'FC', '0001-00001539', 140, 'KAREN MARCONI QUINIELA', '1111111111', 2, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-10-31', '', '', 0, '2025-10-31 12:07:13'),
(398, '2025-10-31', 'FC', '0001-00001540', 197, 'LILIANA SANCHEZ ', '1111111111', 2, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"17000.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"10000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-31', '', '', 0, '2025-10-31 12:07:40'),
(399, '2025-10-31', 'FC', '0001-00001541', 147, 'CHINO SUPER SOL ', '1111111111', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"600.00\",\"total\":\"7200.00\"}]', 0, 0, 7200, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-31', '', '', 0, '2025-10-31 12:10:01'),
(400, '2025-10-31', 'FC', '0001-00001542', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 2, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-10-31', '', '', 0, '2025-10-31 14:15:56'),
(401, '2025-10-31', 'FC', '0001-00001543', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-10-31', '', '', 0, '2025-10-31 15:59:20'),
(402, '2025-10-31', 'FC', '0001-00001544', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"10\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"31-10-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"15000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-10-31', '', '', 0, '2025-10-31 16:00:27'),
(403, '2025-11-01', 'FC', '0001-00001545', 111, 'NORMA RIOS ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"01-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5200\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-01', '', '', 0, '2025-11-01 12:08:58'),
(404, '2025-11-01', 'FC', '0001-00001546', 45, 'VIVIANA DE MIGUEL GLAVAS', '43616705', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"01-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-01', '', '', 0, '2025-11-01 12:09:45'),
(405, '2025-11-01', 'FC', '0001-00001547', 159, 'GREEN MARKET FONTANA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"},{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"15\",\"precio\":\"1500.00\",\"descuento\":\"-3000.00\",\"total\":\"25500.00\"}]', 0, 0, 32000, 0, '[{\"id\":\"1\",\"fecha\":\"01-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"32000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-01', '', '', 0, '2025-11-01 12:12:03'),
(406, '2025-11-01', 'FC', '0001-00001548', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"01-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-01', '', '', 0, '2025-11-01 12:12:46'),
(408, '2025-11-01', 'FC', '0001-00001550', 44, 'EMILY GUTIERREZ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"01-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-01', '', '', 0, '2025-11-01 14:23:08'),
(409, '2025-11-03', 'FC', '0001-00001551', 69, 'MARGARITA LESCANO', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-03', '', '', 0, '2025-11-03 11:59:59'),
(410, '2025-11-03', 'FC', '0001-00001552', 200, 'DESPENSA LEO', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"9\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"10800.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 23800, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"23800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-03', '', '', 0, '2025-11-03 12:04:54'),
(413, '2025-11-03', 'FC', '0001-00001555', 130, 'NOELIA 6TO PISO ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:00:58'),
(414, '2025-11-03', 'FC', '0001-00001556', 64, 'ALEJANDRO OJEDA', '43616707', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"25000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:38:50'),
(415, '2025-11-03', 'FC', '0001-00001557', 180, 'JUAN LAS HERAS ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:40:03'),
(416, '2025-11-03', 'FC', '0001-00001558', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"14\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"18200.00\"}]', 0, 0, 18200, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"18200\",\"referencia\":\"EFECTIVO\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:41:17'),
(417, '2025-11-03', 'FC', '0001-00001559', 86, 'KIOSKO LOVATO LOVATO ERICA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:45:29'),
(418, '2025-11-03', 'FC', '0001-00001560', 170, 'LOS NIETOS KIOSCO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"5200.00\"}]', 0, 0, 5200, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5200\",\"referencia\":\"EFECTIVO\"}]', '2025-11-03', '', '', 0, '2025-11-03 15:49:25'),
(419, '2025-11-03', 'FC', '0001-00001561', 202, 'CARNICERIA LA MATILDE', '0', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"}]', 0, 0, 150000, 0, '[{\"id\":\"2\",\"fecha\":\"03-11-2025\",\"tipo\":\"CHEQUE\",\"importe\":\"150000\",\"referencia\":\"CHEQUE\"}]', '2025-11-03', '', '', 0, '2025-11-03 21:55:35'),
(420, '2025-11-03', 'FC', '0001-00001562', 129, 'ESTEBAN TOFFALETTI', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"},{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 33000, 0, '[{\"id\":\"1\",\"fecha\":\"03-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"33000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-03', '', '', 0, '2025-11-03 22:00:09'),
(421, '2025-11-04', 'FC', '0001-00001563', 204, 'VICENTE ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"04-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-04', '', '', 0, '2025-11-04 11:59:46'),
(422, '2025-11-04', 'FC', '0001-00001564', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"50\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"75000.00\"}]', 0, 0, 75000, 0, '[{\"id\":\"2\",\"fecha\":\"04-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"75000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-04', '', '', 0, '2025-11-04 14:00:11'),
(425, '2025-11-04', 'FC', '0001-00001567', 184, 'MARCELO CABRAL MRK ESTUDIO', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"04-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-04', '', '', 0, '2025-11-04 19:50:48'),
(426, '2025-11-04', 'FC', '0001-00001568', 205, 'NADIA EVELYN VALLEJOS ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"04-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-04', '', '', 0, '2025-11-04 21:07:47'),
(427, '2025-11-04', 'FC', '0001-00001569', 113, 'FLORENCIA CASASOLA', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"04-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-04', '', '', 0, '2025-11-04 21:52:13'),
(428, '2025-11-05', 'FC', '0001-00001570', 96, 'MONTERO CAROLINA', '365069201', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"15000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-05', '', '', 0, '2025-11-05 12:39:40'),
(429, '2025-11-05', 'FC', '0001-00001571', 167, 'OJEDA ANTONIETA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-05', '', '', 0, '2025-11-05 12:48:53'),
(431, '2025-11-05', 'FC', '0001-00001573', 179, 'BAYRON ', '2020202020', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 19:54:47'),
(432, '2025-11-05', 'FC', '0001-00001574', 210, 'CAFE GATO NEGRO', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 19:55:29'),
(433, '2025-11-05', 'FC', '0001-00001575', 153, 'GASTON PICEDA ', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"12\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"15600.00\"}]', 0, 0, 15600, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-17 22:54:25'),
(434, '2025-11-05', 'FC', '0001-00001576', 212, 'IVET JHOANA KIOSCO AMEGUINO', '2020202020', 65, 0, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 20:05:29'),
(435, '2025-11-05', 'FC', '0001-00001577', 211, 'FELIX VALLEJOS ', '1111111111', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 20:06:36'),
(437, '2025-11-05', 'FC', '0001-00001579', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"16\",\"descripcion\":\"CARBON 5KG MIN\",\"codigo\":\"INSU41\",\"cantidad\":\"20\",\"precio\":\"1700.00\",\"descuento\":\"0.00\",\"total\":\"34000.00\"}]', 0, 0, 34000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"34000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-05', '', '', 0, '2025-11-05 20:21:14'),
(438, '2025-11-05', 'FC', '0001-00001580', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 20:21:31'),
(440, '2025-11-05', 'FC', '0001-00001582', 17, 'MEGAMUNDO', '2002022000', 65, 0, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 21:33:52'),
(441, '2025-11-05', 'FC', '0001-00001583', 193, 'ALFONSO WALTER', '2020202020', 65, 0, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 22:08:00'),
(442, '2025-11-05', 'FC', '0001-00001584', 213, 'CARNICERIA EL CHULETAZO', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"70\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"105000.00\"}]', 0, 0, 105000, 0, '[{\"id\":\"1\",\"fecha\":\"05-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"105000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-05', '', '', 0, '2025-11-05 22:19:38'),
(443, '2025-11-06', 'FC', '0001-00001585', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 12:37:47'),
(444, '2025-11-06', 'FC', '0001-00001586', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 0, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"20\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"30000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"2600.00\"}]', 0, 0, 32600, 0, '[{\"id\":\"2\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"32600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 13:32:41');
INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(445, '2025-11-06', 'FC', '0001-00001587', 166, 'ERIKA LOVATO', '1111111111', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 13:39:04'),
(446, '2025-11-06', 'FC', '0001-00001588', 214, 'FERNANDEZ B° JORGE NEWBERY', '1111111111', 65, 0, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 15:15:27'),
(447, '2025-11-06', 'FC', '0001-00001589', 65, 'KIOSKO BETO ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 15:18:59'),
(448, '2025-11-06', 'FC', '0001-00001590', 215, 'KIOSCO PAULINA ', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 21:26:21'),
(449, '2025-11-06', 'FC', '0001-00001591', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 22:34:10'),
(450, '2025-11-06', 'FC', '0001-00001592', 216, 'NEUTRO BROWN 1510 DISPENSER', '1111111111', 65, 0, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"06-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-06', '', '', 0, '2025-11-06 22:49:29'),
(451, '2025-11-07', 'FC', '0001-00001593', 187, 'OLGA FRANCO', '43616709', 65, 0, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"07-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-07', '', '', 0, '2025-11-07 12:51:14'),
(452, '2025-11-07', 'FC', '0001-00001594', 217, 'ADITA POGGI FALCON ', '1111111111', 65, 0, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"07-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-07', '', '', 0, '2025-11-07 13:22:24'),
(453, '2025-11-07', 'FC', '0001-00001595', 219, 'RAMON KIOSCO EL PORTE', '1111111111', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"07-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-07', '', '', 0, '2025-11-14 20:09:43'),
(455, '2025-11-07', 'FC', '0001-00001597', 220, 'EDITH MINIMARKET ', '1111111111', 65, 0, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"4\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"4800.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 17800, 0, '[{\"id\":\"1\",\"fecha\":\"07-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"17800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-07', '', '', 0, '2025-11-07 20:46:11'),
(456, '2025-11-07', 'FC', '0001-00001598', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 0, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"15\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"}]', 0, 0, 19500, 0, '[{\"id\":\"1\",\"fecha\":\"07-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"19500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-07', '', '', 0, '2025-11-07 22:34:10'),
(457, '2025-11-08', 'FC', '0001-00001599', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 1, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:14:55'),
(458, '2025-11-08', 'FC', '0001-00001600', 207, 'LORENA LARRAñAGA ', '1111111111', 65, 1, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:16:00'),
(459, '2025-11-08', 'FC', '0001-00001601', 221, 'RIVERO FRANCISCO', '2020202020', 65, 1, '[{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:20:11'),
(460, '2025-11-08', 'FC', '0001-00001602', 13, 'DISTRIBUIDORA COLONIAS UNIDAS', '20-20202020-2', 65, 3, '[{\"id\":\"17\",\"descripcion\":\"BIDON AGUA 20 L DISTRIBUIDORA COL UNI\",\"codigo\":\"ALI132\",\"cantidad\":\"200\",\"precio\":\"1000.00\",\"descuento\":\"0.00\",\"total\":\"200000.00\"}]', 0, 0, 200000, 200000, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"CTA.CORRIENTE\",\"importe\":\"200000\",\"referencia\":\"CTA.CORRIENTE\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:23:49'),
(461, '2025-11-08', 'FC', '0001-00001603', 161, 'YANINE KOLCHESKY', '2020202020', 65, 1, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:26:37'),
(462, '2025-11-08', 'FC', '0001-00001603', 161, 'YANINE KOLCHESKY', '2020202020', 65, 1, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"5000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:26:38'),
(463, '2025-11-08', 'FC', '0001-00001604', 222, 'LILIANA - REVENDEDORA', '1111111111', 65, 1, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"20\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"24000.00\"}]', 0, 0, 24000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"24000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:28:28'),
(464, '2025-11-08', 'FC', '0001-00001605', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 3, '[{\"id\":\"19\",\"descripcion\":\"COMBO 5 Y 5\",\"codigo\":\"ALI151\",\"cantidad\":\"1\",\"precio\":\"13000.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:32:15'),
(465, '2025-11-08', 'FC', '0001-00001606', 65, 'KIOSKO BETO ', '43616705', 65, 2, '[{\"id\":\"16\",\"descripcion\":\"CARBON 5KG MIN\",\"codigo\":\"INSU41\",\"cantidad\":\"6\",\"precio\":\"1700.00\",\"descuento\":\"0.00\",\"total\":\"10200.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"11700.00\"}]', 0, 0, 21900, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10200\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"08-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"11700\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-08', '', '', 0, '2025-11-08 16:53:22'),
(467, '2025-11-08', 'FC', '0001-00001608', 223, 'LAURA ESCOBAR ', '1111111111', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"08-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-08', '', '', 0, '2025-11-08 17:01:35'),
(468, '2025-11-10', 'FC', '0001-00001609', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 1, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 14:59:37'),
(469, '2025-11-10', 'FC', '0001-00001610', 224, 'DELFA REVENDEDORA FONTANA ', '1111111111', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 15:12:09'),
(470, '2025-11-10', 'FC', '0001-00001611', 225, 'LUCI BARBER REVENDEDOR FONTANA ', '1111111111', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 15:16:33'),
(471, '2025-11-10', 'FC', '0001-00001612', 226, 'ARACELI REVENDEDORA FONTANA', '1111111111', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 15:20:18'),
(472, '2025-11-10', 'FC', '0001-00001613', 227, 'DIRECCIóN DE TRABAJO 1ER PISO', '2020202020', 65, 2, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"6\",\"precio\":\"3000.00\",\"descuento\":\"15000.00\",\"total\":\"3000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"10000\",\"referencia\":\"TRANSFERENCIA\"},{\"id\":\"2\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"20000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 20:06:46'),
(473, '2025-11-10', 'FC', '0001-00001614', 37, 'ALICIA SABUGO', '42986923', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"60\",\"precio\":\"1300.00\",\"descuento\":\"-6000.00\",\"total\":\"84000.00\"}]', 0, 0, 84000, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"84000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 20:10:48'),
(474, '2025-11-10', 'FC', '0001-00001615', 228, 'ARQ AMELIA OBRAS PUBLICAS 1ER PISO', '1111111111', 65, 3, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"2500.00\",\"total\":\"12500.00\"}]', 0, 0, 12500, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 20:13:32'),
(475, '2025-11-10', 'FC', '0001-00001616', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 21:30:25'),
(476, '2025-11-10', 'FC', '0001-00001617', 186, 'VERDULERIA Y FRUTERIA ESQUINA 5 (MARCONI)', '2020202020', 65, 2, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"11\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"14300.00\"}]', 0, 0, 14300, 0, '[{\"id\":\"1\",\"fecha\":\"10-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"14300\",\"referencia\":\"EFECTIVO\"}]', '2025-11-10', '', '', 0, '2025-11-10 21:50:36'),
(477, '2025-11-11', 'FC', '0001-00001618', 143, 'KIOSCO JOSE', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 13:04:01'),
(478, '2025-11-11', 'FC', '0001-00001619', 229, 'VERDULERIA HUGO', '1111111111', 65, 5, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"}]', 0, 0, 150000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"150000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 13:40:57'),
(479, '2025-11-11', 'FC', '0001-00001620', 230, 'NOELIA MARTINEZ OBRAS PUBLICAS ', '1111111111', 65, 5, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"3\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-11', '', '', 0, '2025-11-11 13:42:58'),
(480, '2025-11-11', 'FC', '0001-00001621', 231, 'NATALIA MENDEZ ', '2020202020', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"},{\"id\":\"5\",\"descripcion\":\"ENVASE DE 20LTS\",\"codigo\":\"B\",\"cantidad\":\"2\",\"precio\":\"12000.00\",\"descuento\":\"0.00\",\"total\":\"24000.00\"}]', 0, 0, 30000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"30000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 13:54:40'),
(481, '2025-11-11', 'FC', '0001-00001622', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 13:55:36'),
(482, '2025-11-11', 'FC', '0001-00001623', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 14:17:31'),
(483, '2025-11-11', 'FC', '0001-00001624', 147, 'CHINO SUPER SOL ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 14:24:34'),
(484, '2025-11-11', 'FC', '0001-00001625', 193, 'ALFONSO WALTER', '2020202020', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 14:26:16'),
(485, '2025-11-11', 'FC', '0001-00001626', 232, 'FLORENCIA CRESPO ', '1111111111', 65, 3, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-11', '', '', 0, '2025-11-11 19:06:28'),
(486, '2025-11-11', 'FC', '0001-00001627', 233, 'LAURA DE ACEBAL ', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 19:24:35'),
(487, '2025-11-11', 'FC', '0001-00001628', 65, 'KIOSKO BETO ', '43616705', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"15\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"}]', 0, 0, 19500, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"19500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 20:29:08'),
(488, '2025-11-11', 'FC', '0001-00001629', 185, 'JESSICA MARTINA', '2020202020', 65, 4, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-11', '', '', 0, '2025-11-11 20:30:59'),
(489, '2025-11-11', 'FC', '0001-00001630', 140, 'KAREN MARCONI QUINIELA', '1111111111', 65, 3, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 21:09:20'),
(490, '2025-11-11', 'FC', '0001-00001631', 234, 'ADRIAN', '2020202020', 65, 5, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"}]', 0, 0, 150000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"150000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 21:57:17'),
(491, '2025-11-11', 'FC', '0001-00001632', 223, 'LAURA ESCOBAR ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3900\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-11', '', '', 0, '2025-11-11 22:24:17'),
(492, '2025-11-11', 'FC', '0001-00001633', 235, 'NICOLAS FERNANDEZ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"11-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-11', '', '', 0, '2025-11-11 22:58:09'),
(493, '2025-11-12', 'FC', '0001-00001634', 205, 'NADIA EVELYN VALLEJOS ', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"12-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"3000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-12', '', '', 0, '2025-11-12 11:16:44'),
(494, '2025-11-12', 'FC', '0001-00001635', 147, 'CHINO SUPER SOL ', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"4\",\"precio\":\"1300.00\",\"descuento\":\"400.00\",\"total\":\"4800.00\"}]', 0, 0, 4800, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"4800\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 14:11:13'),
(495, '2025-11-12', 'FC', '0001-00001636', 236, 'ERICA RODRIGUEZ', '2020202020', 65, 1, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"26000.00\"}]', 0, 0, 26000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"26000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:46:15'),
(496, '2025-11-12', 'FC', '0001-00001637', 194, 'SUPER DON COCO ', '2020202020', 65, 1, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"20\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"24000.00\"}]', 0, 0, 24000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"24000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:47:07'),
(497, '2025-11-12', 'FC', '0001-00001638', 237, 'CARO TOMEI ', '1111111111', 65, 1, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:49:29'),
(498, '2025-11-12', 'FC', '0001-00001639', 1, 'CONSUMIDOR FINAL', '0', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:51:09'),
(499, '2025-11-12', 'FC', '0001-00001640', 238, 'BENJAMIN DIAZ', '1111111111', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"},{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 50000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:54:55'),
(500, '2025-11-12', 'FC', '0001-00001641', 239, 'GABRIEL PEREZ', '2020202020', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 19:58:07'),
(501, '2025-11-12', 'FC', '0001-00001642', 240, 'AYRTON OJEDA ', '2020202020', 65, 1, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"},{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 39000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 20:00:25'),
(502, '2025-11-12', 'FC', '0001-00001643', 64, 'ALEJANDRO OJEDA', '43616707', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 20:01:04'),
(503, '2025-11-12', 'FC', '0001-00001644', 159, 'GREEN MARKET FONTANA ', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 20:21:31'),
(504, '2025-11-12', 'FC', '0001-00001645', 242, 'PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-12', '', '', 0, '2025-11-12 20:50:33'),
(505, '2025-11-12', 'FC', '0001-00001646', 184, 'MARCELO CABRAL MRK ESTUDIO', '1111111111', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"12-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-12', '', '', 0, '2025-11-12 22:17:02'),
(506, '2025-11-13', 'FC', '0001-00001647', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 4, '[{\"id\":\"16\",\"descripcion\":\"CARBON 5KG MIN\",\"codigo\":\"INSU41\",\"cantidad\":\"10\",\"precio\":\"1700.00\",\"descuento\":\"0.00\",\"total\":\"17000.00\"}]', 0, 0, 17000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 12:57:50'),
(507, '2025-11-13', 'FC', '0001-00001648', 192, 'MARIA ELENA VALLEJOS ', '1111111111', 65, 5, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"2\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"5000.00\"}]', 0, 0, 5000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"5000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-13', '', '', 0, '2025-11-13 13:00:21'),
(509, '2025-11-13', 'FC', '0001-00001649', 243, 'VERDULERIA LOS HERMANOS ', '2020202020', 65, 6, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 14:28:44'),
(510, '2025-11-13', 'FC', '0001-00001650', 166, 'ERIKA LOVATO', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 14:52:44'),
(511, '2025-11-13', 'FC', '0001-00001651', 73, 'ARQUITECTA CLARA OBRAS PUBLICAS', '43616705', 65, 5, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"4\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"10000.00\"}]', 0, 0, 10000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 20:01:41'),
(512, '2025-11-13', 'FC', '0001-00001652', 123, 'SEBASTIAN BINAGUI OBRAS PUBLICAS ', '1111111111', 65, 5, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"3\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"7500.00\"}]', 0, 0, 7500, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 20:05:14'),
(513, '2025-11-13', 'FC', '0001-00001653', 106, 'LOCAL WOD SPORT ', '1111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 20:06:50'),
(514, '2025-11-13', 'FC', '0001-00001654', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 20:14:41'),
(515, '2025-11-13', 'FC', '0001-00001655', 244, 'GARCIA MAIDA MARLEN', '1111111111', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-14 21:35:40'),
(516, '2025-11-13', 'FC', '0001-00001656', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"13\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"16900.00\"}]', 0, 0, 16900, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"16900\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 22:20:20'),
(517, '2025-11-13', 'FC', '0001-00001657', 154, 'NARANJA VERDULERIA ', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"13-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"}]', '2025-11-13', '', '', 0, '2025-11-13 23:01:11'),
(518, '2025-11-14', 'FC', '0001-00001658', 245, 'CLAUDIA ', '1111111111', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"-1000.00\",\"total\":\"26000.00\"}]', 0, 0, 26000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"26000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-14', '', '', 0, '2025-11-14 13:02:59'),
(519, '2025-11-14', 'FC', '0001-00001659', 246, 'RAQUEL VILLALBA', '2020202020', 65, 3, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 13:04:11'),
(520, '2025-11-14', 'FC', '0001-00001660', 130, 'NOELIA 6TO PISO ', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-14', '', '', 0, '2025-11-14 13:46:24'),
(521, '2025-11-14', 'FC', '0001-00001661', 167, 'OJEDA ANTONIETA ', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 13:48:37'),
(522, '2025-11-14', 'FC', '0001-00001662', 241, 'MARIA JUAREZ', '2020202020', 65, 1, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"19\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"24700.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 36700, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"36700\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 20:04:28'),
(523, '2025-11-14', 'FC', '0001-00001663', 209, 'MARTA MEDINA ', '1111111111', 65, 1, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 20:05:29'),
(524, '2025-11-14', 'FC', '0001-00001664', 209, 'MARTA MEDINA ', '1111111111', 65, 1, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 20:07:59'),
(525, '2025-11-14', 'FC', '0001-00001665', 211, 'FELIX VALLEJOS ', '1111111111', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 20:15:01'),
(526, '2025-11-14', 'FC', '0001-00001666', 61, 'DARIO BARTOLI ', '2020202020', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 21:51:33'),
(527, '2025-11-14', 'FC', '0001-00001667', 191, 'MARIO AGLIORI ', '1111111111', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 21:55:37'),
(528, '2025-11-14', 'FC', '0001-00001668', 62, 'MAYORISTA FONTANA  VICTOR GAS', '43616705', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"14-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-14', '', '', 0, '2025-11-14 22:30:17'),
(529, '2025-11-15', 'FC', '0001-00001669', 143, 'KIOSCO JOSE', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"15-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-15', '', '', 0, '2025-11-15 14:06:31'),
(530, '2025-11-15', 'FC', '0001-00001670', 248, 'ADITA ', '2020202020', 65, 5, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"}]', 0, 0, 150000, 0, '[{\"id\":\"1\",\"fecha\":\"15-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"150000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-15', '', '', 0, '2025-11-15 14:12:39'),
(531, '2025-11-17', 'FC', '0001-00001671', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 12:28:15'),
(532, '2025-11-17', 'FC', '0001-00001672', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"2600.00\"}]', 0, 0, 2600, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 12:29:23'),
(533, '2025-11-17', 'FC', '0001-00001673', 164, 'PABLO MAC LEAN VERDULERIA ', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"3\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"3900.00\"}]', 0, 0, 3900, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3900\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 12:30:26'),
(534, '2025-11-17', 'FC', '0001-00001674', 186, 'VERDULERIA Y FRUTERIA ESQUINA 5 (MARCONI)', '2020202020', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 12:30:58'),
(535, '2025-11-17', 'FC', '0001-00001675', 39, 'KIOSCO GONZA GALEANO B CARPINCHO MACHO', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 12:56:37'),
(536, '2025-11-17', 'FC', '0001-00001676', 249, 'DAIANA GISEL LOPEZ ', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-17', '', '', 0, '2025-11-17 14:13:31'),
(537, '2025-11-17', 'FC', '0001-00001677', 187, 'OLGA FRANCO', '43616709', 65, 3, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"5\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 15000, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"15000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-17', '', '', 0, '2025-11-17 22:55:03'),
(538, '2025-11-17', 'FC', '0001-00001678', 153, 'GASTON PICEDA ', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"12\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"15600.00\"}]', 0, 0, 15600, 0, '[{\"id\":\"1\",\"fecha\":\"17-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"15600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-17', '', '', 0, '2025-11-17 22:55:53'),
(539, '2025-11-18', 'FC', '0001-00001679', 65, 'KIOSKO BETO ', '43616705', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"15\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"}]', 0, 0, 19500, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"19500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 11:34:44'),
(540, '2025-11-18', 'FC', '0001-00001680', 193, 'ALFONSO WALTER', '2020202020', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 11:55:18'),
(541, '2025-11-18', 'FC', '0001-00001681', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 6, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 12:11:30'),
(542, '2025-11-18', 'FC', '0001-00001682', 205, 'NADIA EVELYN VALLEJOS ', '1111111111', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 12:33:43'),
(543, '2025-11-18', 'FC', '0001-00001683', 192, 'MARIA ELENA VALLEJOS ', '1111111111', 65, 5, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"1\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"2500.00\"}]', 0, 0, 2500, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"2500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-18', '', '', 0, '2025-11-18 14:14:50'),
(544, '2025-11-18', 'FC', '0001-00001684', 179, 'BAYRON ', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"3\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"9000.00\"}]', 0, 0, 9000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 14:15:38'),
(545, '2025-11-18', 'FC', '0001-00001685', 113, 'FLORENCIA CASASOLA', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"2\",\"fecha\":\"18-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"6000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-18', '', '', 0, '2025-11-18 14:17:31'),
(546, '2025-11-18', 'FC', '0001-00001686', 172, 'VICTORIA VALLI ', '1111111111', 65, 4, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"27000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 14:22:17'),
(547, '2025-11-18', 'FC', '0001-00001687', 184, 'MARCELO CABRAL MRK ESTUDIO', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 15:04:25'),
(548, '2025-11-18', 'FC', '0001-00001688', 102, 'DIEGO MINIMARKET PREMIUM', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 15:05:01'),
(549, '2025-11-18', 'FC', '0001-00001689', 242, 'PANADERIA ESPIGA DE CIELO (LAURA DE ACEBAL)', '2020202020', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 15:23:27'),
(550, '2025-11-18', 'FC', '0001-00001690', 35, 'JESSICA JOHANNA VILAQUI ', '340335150', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-18', '', '', 0, '2025-11-18 15:33:40'),
(551, '2025-11-18', 'FC', '0001-00001691', 132, 'JOSE SAVEEDRA ', '1111111111', 65, 6, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 19:24:26'),
(552, '2025-11-18', 'FC', '0001-00001692', 184, 'MARCELO CABRAL MRK ESTUDIO', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 19:35:08'),
(553, '2025-11-18', 'FC', '0001-00001693', 244, 'GARCIA MAIDA MARLEN', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"},{\"id\":\"4\",\"descripcion\":\"DISPENSER DE MESA\",\"codigo\":\"ALI4\",\"cantidad\":\"2\",\"precio\":\"7500.00\",\"descuento\":\"0.00\",\"total\":\"15000.00\"}]', 0, 0, 25400, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"25400\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-18', '', '', 0, '2025-11-18 21:13:47');
INSERT INTO `ventas` (`id`, `fecha`, `tipo`, `codigo`, `id_cliente`, `nombre`, `documento`, `id_vendedor`, `id_vendedor_venta`, `productos`, `impuesto`, `neto`, `total`, `adeuda`, `metodo_pago`, `fechapago`, `referenciapago`, `observaciones`, `seleccionado`, `fechacreacion`) VALUES
(554, '2025-11-18', 'FC', '0001-00001694', 210, 'CAFE GATO NEGRO', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 21:29:09'),
(555, '2025-11-18', 'FC', '0001-00001695', 196, 'KIOSCO  EL PELADO', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 22:11:26'),
(556, '2025-11-18', 'FC', '0001-00001696', 72, 'PRISILA BARRANQUERAS', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 22:38:41'),
(557, '2025-11-18', 'FC', '0001-00001697', 250, 'SEBASTIAN CARLEVARIS', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 22:49:40'),
(558, '2025-11-18', 'FC', '0001-00001698', 251, 'JULIO CESAR AGRONOMO', '43616705', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"18-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-18', '', '', 0, '2025-11-18 23:15:36'),
(559, '2025-11-19', 'FC', '0001-00001699', 252, 'SANDRA CARDOZO', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 12:47:06'),
(560, '2025-11-19', 'FC', '0001-00001700', 85, 'ACOSTA JOSE RAMON FRUTERIA ', '43616705', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 12:56:42'),
(561, '2025-11-19', 'FC', '0001-00001701', 235, 'NICOLAS FERNANDEZ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-19', '', '', 0, '2025-11-19 12:57:35'),
(562, '2025-11-19', 'FC', '0001-00001702', 166, 'ERIKA LOVATO', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 13:32:17'),
(563, '2025-11-19', 'FC', '0001-00001703', 121, 'GRACIELA DESPENSA CARLITO ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 14:13:08'),
(564, '2025-11-19', 'FC', '0001-00001704', 17, 'MEGAMUNDO', '2002022000', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 14:42:43'),
(565, '2025-11-19', 'FC', '0001-00001705', 253, 'DEBORA MARIEL', '2020202020', 65, 6, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"9100\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-19', '', '', 0, '2025-11-19 14:58:00'),
(566, '2025-11-19', 'FC', '0001-00001706', 140, 'KAREN MARCONI QUINIELA', '1111111111', 65, 3, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 22:47:22'),
(567, '2025-11-19', 'FC', '0001-00001707', 141, 'CHI SAN MARTIN ', '1111111111', 65, 3, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"19-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-19', '', '', 0, '2025-11-19 22:53:38'),
(569, '2025-11-20', 'FC', '0001-00001709', 115, 'TORRES MIRNA KISOKO ATREVIDA', '1111111111', 65, 3, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"1000.00\",\"total\":\"11000.00\"}]', 0, 0, 11000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"11000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 11:16:01'),
(570, '2025-11-20', 'FC', '0001-00001710', 145, 'CHINO DIAGONAL BARRANQUERAS ', '1111111111', 65, 3, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 14:07:22'),
(571, '2025-11-20', 'FC', '0001-00001711', 25, 'CAMILO TEVEZ (ABERNORT)', '29999888', 65, 3, '[{\"id\":\"18\",\"descripcion\":\"BIDON 20 L DIFERENCIAL\",\"codigo\":\"ALI142\",\"cantidad\":\"7\",\"precio\":\"2500.00\",\"descuento\":\"0.00\",\"total\":\"17500.00\"}]', 0, 0, 17500, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"17500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 14:21:35'),
(572, '2025-11-20', 'FC', '0001-00001712', 62, 'MAYORISTA FONTANA  VICTOR GAS', '43616705', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 14:45:27'),
(573, '2025-11-20', 'FC', '0001-00001713', 236, 'ERICA RODRIGUEZ', '2020202020', 65, 4, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"8\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"10400.00\"}]', 0, 0, 10400, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"10400\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 21:14:14'),
(574, '2025-11-20', 'FC', '0001-00001714', 96, 'MONTERO CAROLINA', '365069201', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"4\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"12000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-20', '', '', 0, '2025-11-20 21:24:01'),
(575, '2025-11-20', 'FC', '0001-00001715', 135, 'CRISAL SUPERMERCADO ', '1111111111', 65, 4, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"30\",\"precio\":\"1200.00\",\"descuento\":\"3000.00\",\"total\":\"33000.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"20\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"26000.00\"}]', 0, 0, 59000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"59000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 21:48:11'),
(576, '2025-11-20', 'FC', '0001-00001716', 256, 'ALBERTO ANTONIO KIOSCO EL BARTO ', '2020202020', 65, 1, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"-1000.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 22:09:53'),
(577, '2025-11-20', 'FC', '0001-00001717', 221, 'RIVERO FRANCISCO', '2020202020', 65, 4, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"2\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"6000.00\"}]', 0, 0, 6000, 0, '[{\"id\":\"1\",\"fecha\":\"20-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-20', '', '', 0, '2025-11-20 22:50:32'),
(578, '2025-11-21', 'FC', '0001-00001718', 107, 'ARON JUAN GUERRA LOCAL LA NARANJA', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"2\",\"fecha\":\"21-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"7800\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-21', '', '', 0, '2025-11-21 11:09:17'),
(579, '2025-11-21', 'FC', '0001-00001719', 257, 'JESSICA EDIT ZARZA ', '2020202020', 65, 3, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"100\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"150000.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"-2000.00\",\"total\":\"5000.00\"}]', 0, 0, 155000, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"155000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-21', '', '', 0, '2025-11-21 11:11:29'),
(580, '2025-11-21', 'FC', '0001-00001720', 167, 'OJEDA ANTONIETA ', '1111111111', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"6\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"7800.00\"}]', 0, 0, 7800, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"7800\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 12:00:41'),
(581, '2025-11-21', 'FC', '0001-00001721', 11, 'KIOSCO GEMA', '00-00000000-0', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 13:21:15'),
(582, '2025-11-21', 'FC', '0001-00001722', 254, 'PUERTO GRACIELA ', '1111111111', 65, 3, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 13:36:18'),
(583, '2025-11-21', 'FC', '0001-00001723', 159, 'GREEN MARKET FONTANA ', '1111111111', 65, 5, '[{\"id\":\"16\",\"descripcion\":\"CARBON 5KG MIN\",\"codigo\":\"INSU41\",\"cantidad\":\"15\",\"precio\":\"1700.00\",\"descuento\":\"0.00\",\"total\":\"25500.00\"},{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 37600, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"37600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 14:09:48'),
(584, '2025-11-21', 'FC', '0001-00001724', 200, 'DESPENSA LEO', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"9\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"11700.00\"},{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"20\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"24000.00\"}]', 0, 0, 35700, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"35700\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 14:54:14'),
(585, '2025-11-21', 'FC', '0001-00001725', 65, 'KIOSKO BETO ', '43616705', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"15\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"19500.00\"}]', 0, 0, 19500, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"19500\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-21', '', '', 0, '2025-11-21 15:07:44'),
(586, '2025-11-21', 'FC', '0001-00001726', 258, 'ESTELA ALMIRON', '2020202020', 65, 7, '[{\"id\":\"9\",\"descripcion\":\"CARBON 5KG\",\"codigo\":\"001\",\"cantidad\":\"200\",\"precio\":\"1500.00\",\"descuento\":\"0.00\",\"total\":\"300000.00\"},{\"id\":\"10\",\"descripcion\":\"ENVIO A DOMICILIO\",\"codigo\":\"3000\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"-5000.00\",\"total\":\"8000.00\"}]', 0, 0, 308000, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"308000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 15:09:56'),
(587, '2025-11-21', 'FC', '0001-00001727', 170, 'LOS NIETOS KIOSCO', '1111111111', 65, 3, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"5\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"6500.00\"}]', 0, 0, 6500, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"6500\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 21:49:13'),
(588, '2025-11-21', 'FC', '0001-00001728', 259, 'ANTONELA ', '2020202020', 65, 3, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 21:49:08'),
(589, '2025-11-21', 'FC', '0001-00001729', 145, 'CHINO DIAGONAL BARRANQUERAS ', '1111111111', 65, 3, '[{\"id\":\"7\",\"descripcion\":\"BIDON DE 6 LTS\",\"codigo\":\"ALI7\",\"cantidad\":\"10\",\"precio\":\"1200.00\",\"descuento\":\"0.00\",\"total\":\"12000.00\"}]', 0, 0, 12000, 0, '[{\"id\":\"1\",\"fecha\":\"21-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"12000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-21', '', '', 0, '2025-11-21 21:48:58'),
(590, '2025-11-22', 'FC', '0001-00001730', 211, 'FELIX VALLEJOS ', '1111111111', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"},{\"id\":\"2\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"0\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 11:43:04'),
(591, '2025-11-22', 'FC', '0001-00001731', 233, 'LAURA DE ACEBAL ', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 12:44:27'),
(592, '2025-11-22', 'FC', '0001-00001732', 193, 'ALFONSO WALTER', '2020202020', 65, 5, '[{\"id\":\"2\",\"descripcion\":\"RECARGA BIDON AGUA DOMICILIO\",\"codigo\":\"ALI2\",\"cantidad\":\"1\",\"precio\":\"3000.00\",\"descuento\":\"0.00\",\"total\":\"3000.00\"}]', 0, 0, 3000, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"3000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 12:45:29'),
(593, '2025-11-22', 'FC', '0001-00001733', 7, 'CAROLINA MAIDANA', '20-20202020-2', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"2\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"2600.00\"}]', 0, 0, 2600, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"2600\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 14:40:42'),
(594, '2025-11-22', 'FC', '0001-00001734', 260, 'TREBOL MINIMARKET BARRANQUERAS', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"10\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"13000.00\"}]', 0, 0, 13000, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"13000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 14:42:24'),
(595, '2025-11-22', 'FC', '0001-00001735', 134, 'GUSTAVO HECTOR SUPER EL PAPERITO', '1111111111', 65, 5, '[{\"id\":\"13\",\"descripcion\":\"COMBO 10Y10\",\"codigo\":\"ALI122\",\"cantidad\":\"1\",\"precio\":\"25000.00\",\"descuento\":\"0.00\",\"total\":\"25000.00\"}]', 0, 0, 25000, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"25000\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 14:44:46'),
(596, '2025-11-22', 'FC', '0001-00001736', 215, 'KIOSCO PAULINA ', '2020202020', 65, 5, '[{\"id\":\"3\",\"descripcion\":\"RECARGA BIDóN DE AGUA MAYORISTA\",\"codigo\":\"ALI3\",\"cantidad\":\"7\",\"precio\":\"1300.00\",\"descuento\":\"0.00\",\"total\":\"9100.00\"}]', 0, 0, 9100, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"EFECTIVO\",\"importe\":\"9100\",\"referencia\":\"EFECTIVO\"}]', '2025-11-22', '', '', 0, '2025-11-22 15:37:23'),
(597, '2025-11-22', 'FC', '0001-00001737', 190, 'CARLOS SHENONE', '1111111111', 65, 5, '[{\"id\":\"8\",\"descripcion\":\"DISPENSER MENSUAL\",\"codigo\":\"dism\",\"cantidad\":\"1\",\"precio\":\"27000.00\",\"descuento\":\"0.00\",\"total\":\"27000.00\"}]', 0, 0, 27000, 0, '[{\"id\":\"1\",\"fecha\":\"22-11-2025\",\"tipo\":\"TRANSFERENCIA\",\"importe\":\"27000\",\"referencia\":\"TRANSFERENCIA\"}]', '2025-11-22', '', '', 0, '2025-11-22 16:16:06');

--
-- Disparadores `ventas`
--
DELIMITER $$
CREATE TRIGGER `tr_ventas_insert_caja` AFTER INSERT ON `ventas` FOR EACH ROW BEGIN
  DECLARE n INT DEFAULT 0;
  DECLARE i INT DEFAULT 0;
  DECLARE v_tipo VARCHAR(30);
  DECLARE v_importe DECIMAL(10,2);
  DECLARE v_ref TEXT;

  /* Si hay JSON válido en metodo_pago */
  IF NEW.metodo_pago IS NOT NULL AND JSON_VALID(NEW.metodo_pago) THEN
    SET n = JSON_LENGTH(NEW.metodo_pago);

    WHILE i < n DO
      /* tipo del ítem i */
      SET v_tipo = JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].tipo')));

      IF UPPER(v_tipo) = 'EFECTIVO' THEN
        /* importe (normaliza coma por punto por si viene "1,50") */
        SET v_importe = CAST(
          REPLACE(JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].importe'))), ',', '.')
          AS DECIMAL(10,2)
        );

        /* referencia/comprobante del ítem */
        SET v_ref = JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].referencia')));

        INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
        VALUES (
          NOW(),
          'INGRESO',
          v_importe,
          CONCAT(
            'Ingreso x Venta nro: ', NEW.id,
            CASE WHEN NEW.codigo IS NOT NULL AND NEW.codigo <> '' THEN CONCAT(' - Comprobante: ', NEW.codigo) ELSE '' END,
            CASE WHEN v_ref IS NOT NULL AND v_ref <> '' THEN CONCAT(' - ', v_ref) ELSE '' END
          )
        );
      END IF;

      SET i = i + 1;
    END WHILE;
  END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_caja_fecha` (`fecha`);

--
-- Indices de la tabla `caja_movimientos`
--
ALTER TABLE `caja_movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicioniva`
--
ALTER TABLE `condicioniva`
  ADD PRIMARY KEY (`idcondicioniva`);

--
-- Indices de la tabla `datostitular`
--
ALTER TABLE `datostitular`
  ADD PRIMARY KEY (`iddatostitular`),
  ADD UNIQUE KEY `iddatostitular` (`iddatostitular`);

--
-- Indices de la tabla `descripcion_productos`
--
ALTER TABLE `descripcion_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modificacion_precios`
--
ALTER TABLE `modificacion_precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nrocomprobante`
--
ALTER TABLE `nrocomprobante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vales`
--
ALTER TABLE `vales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `caja_movimientos`
--
ALTER TABLE `caja_movimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT de la tabla `condicioniva`
--
ALTER TABLE `condicioniva`
  MODIFY `idcondicioniva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `descripcion_productos`
--
ALTER TABLE `descripcion_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `modificacion_precios`
--
ALTER TABLE `modificacion_precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nrocomprobante`
--
ALTER TABLE `nrocomprobante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `vales`
--
ALTER TABLE `vales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

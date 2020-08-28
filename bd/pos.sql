-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2020 a las 20:02:30
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Ejemplo', '2020-08-28 17:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(14, 'Cliente General', 1, 'cliente@gmail.com', '(722) 548-7152', 'Mexico', '1997-08-05', 9, '2020-08-28 12:41:14', '2020-08-28 17:41:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 1, '101', 'Producto de ejemplo', 'vistas/img/productos/101/353.jpg', 15, 35, 40, 5, '2020-08-28 17:37:29'),
(62, 1, '102', 'Producto de ejemplo 2', 'vistas/img/productos/default/anonymous.png', 5, 50, 70, 0, '2020-08-28 17:36:53'),
(63, 1, '103', 'Producto de ejemplo 3', 'vistas/img/productos/default/anonymous.png', 50, 15, 21, 0, '2020-08-28 17:38:26'),
(64, 1, '104', 'Producto de ejemplo 4', 'vistas/img/productos/default/anonymous.png', 12, 21, 29.4, 0, '2020-08-28 17:38:39'),
(65, 1, '105', 'Producto de ejemplo 5', 'vistas/img/productos/default/anonymous.png', 58, 25, 35, 0, '2020-08-28 17:39:33'),
(66, 1, '106', 'Producto de ejemplo 6', 'vistas/img/productos/default/anonymous.png', 31, 20, 28, 1, '2020-08-28 17:41:14'),
(67, 1, '107', 'Producto de ejemplo 7', 'vistas/img/productos/default/anonymous.png', 3, 100, 140, 0, '2020-08-28 17:39:57'),
(68, 1, '108', 'Producto de ejemplo 8', 'vistas/img/productos/default/anonymous.png', 19, 25, 35, 1, '2020-08-28 17:41:14'),
(69, 1, '109', 'Producto de ejemplo 9', 'vistas/img/productos/default/anonymous.png', 35, 24, 33.6, 1, '2020-08-28 17:41:14'),
(70, 1, '110', 'Producto de ejemplo 10', 'vistas/img/productos/default/anonymous.png', 14, 50, 70, 1, '2020-08-28 17:41:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auia1mVQcfGnHbxgvsMbUgrxcI9fwgAFS', 'Administrador', 'vistas/img/usuarios/admin/110.jpg', 1, '2020-08-28 12:32:55', '2020-08-28 17:32:55'),
(60, 'Jordi Ayala', 'jordi', '$2a$07$asxx54ahjppf45sd87a5auwylxJbTsp59W1dx3hL2E82/6xIJf9u2', 'Administrador', 'vistas/img/usuarios/jordi/518.jpg', 1, '2020-08-28 13:01:37', '2020-08-28 18:01:37'),
(61, 'Operador', 'operador', '$2a$07$asxx54ahjppf45sd87a5au/5NrFyOVsHpbETWTMKPHrsTVXzsmeOO', 'Especial', 'vistas/img/usuarios/operador/384.jpg', 0, '2020-08-27 12:38:29', '2020-08-28 17:55:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(40, 10001, 14, 1, '[{\"id\":\"61\",\"descripcion\":\"Producto de ejemplo\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"40\",\"total\":\"200\"}]', 0, 200, 200, 'Efectivo', '2020-08-28 17:37:29'),
(41, 10002, 14, 1, '[{\"id\":\"69\",\"descripcion\":\"Producto de ejemplo 9\",\"cantidad\":\"1\",\"stock\":\"35\",\"precio\":\"33.6\",\"total\":\"33.6\"},{\"id\":\"70\",\"descripcion\":\"Producto de ejemplo 10\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"68\",\"descripcion\":\"Producto de ejemplo 8\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"35\",\"total\":\"35\"},{\"id\":\"66\",\"descripcion\":\"Producto de ejemplo 6\",\"cantidad\":\"1\",\"stock\":\"31\",\"precio\":\"28\",\"total\":\"28\"}]', 0, 166.6, 166.6, 'Efectivo', '2020-08-28 17:41:14');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

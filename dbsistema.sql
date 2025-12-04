-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2025 a las 17:55:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afectacion_tipos`
--

CREATE TABLE `afectacion_tipos` (
  `codigo` char(2) NOT NULL,
  `nombre` char(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `letra` char(1) NOT NULL,
  `porcentaje` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `afectacion_tipos`
--

INSERT INTO `afectacion_tipos` (`codigo`, `nombre`, `descripcion`, `letra`, `porcentaje`) VALUES
('10', 'IGV', 'OP. GRAVADAS', 'S', 0.18),
('20', 'EXO', 'OP. EXONERADAS', 'E', 0.00),
('30', 'INA', 'OP. INAFECTAS', 'O', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('sistema-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:44:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"unidades_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"unidades_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:13:\"unidades_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"unidades_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:21:\"afectacion_tipos_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:23:\"afectacion_tipos_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:21:\"afectacion_tipos_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:23:\"afectacion_tipos_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"clientes_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"clientes_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"clientes_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"clientes_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:20:\"documento_tipos_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:22:\"documento_tipos_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:20:\"documento_tipos_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:22:\"documento_tipos_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"productos_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"productos_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"productos_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"productos_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"ventas_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:13:\"ventas_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"ventas_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:13:\"ventas_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:22:\"comprobante_tipos_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:24:\"comprobante_tipos_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:22:\"comprobante_tipos_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:24:\"comprobante_tipos_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:10:\"users_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:12:\"users_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:10:\"users_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:12:\"users_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:19:\"roles_permisos_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:21:\"roles_permisos_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:19:\"roles_permisos_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"roles_permisos_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"compras_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:14:\"compras_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"compras_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:14:\"compras_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:16:\"proveedores_list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:18:\"proveedores_create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"proveedores_edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"proveedores_delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"almacenero\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:8:\"vendedor\";s:1:\"c\";s:3:\"web\";}}}', 1764863766);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documento_tipo_codigo` char(2) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `documento_tipo_codigo`, `numero_documento`, `razon_social`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(2, '01', '82836645', 'Akiva Pinto', 'San Borja', '969587423', 'akiva.pinto@gmail.com', '2025-11-18 16:11:16', '2025-11-18 16:11:16'),
(3, '06', '10727366411', 'Jholby Samamé Segura', 'Puente Piedra', '972017585', 'jholby1996@outlook.com.pe', '2025-11-19 06:49:27', '2025-11-19 06:49:27'),
(4, '01', '76784529', 'Janáh Levy', 'Miraflores', NULL, 'janahlevy@gmail.com', '2025-11-19 06:51:14', '2025-11-22 21:58:11'),
(5, '01', '77777555', 'Eithan Kohan', 'San Isidro', NULL, 'eithankaplan@hotmail.com', '2025-11-22 12:06:55', '2025-11-22 21:58:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comprobante_tipo_codigo` char(2) NOT NULL,
  `proveedor_id` bigint(20) UNSIGNED NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `forma_pago` varchar(7) NOT NULL,
  `fecha` date NOT NULL,
  `op_gravada` decimal(8,2) NOT NULL,
  `op_exonerada` decimal(8,2) NOT NULL,
  `op_inafecta` decimal(8,2) NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `user_id`, `comprobante_tipo_codigo`, `proveedor_id`, `serie`, `correlativo`, `forma_pago`, `fecha`, `op_gravada`, `op_exonerada`, `op_inafecta`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(2, 1, '01', 1, 'F01', 100, 'contado', '2025-11-19', 35423.73, 0.00, 0.00, 6376.27, 41800.00, 'registrado', '2025-11-20 04:34:13', '2025-11-20 04:38:27'),
(3, 1, '01', 3, 'F02', 101, 'contado', '2025-11-22', 14406.78, 0.00, 0.00, 2593.22, 17000.00, 'registrado', '2025-11-22 12:09:58', '2025-11-22 12:09:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_detalles`
--

CREATE TABLE `compra_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compra_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `porcentaje_impuesto` decimal(4,2) NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `precio_unitario` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compra_detalles`
--

INSERT INTO `compra_detalles` (`id`, `compra_id`, `producto_id`, `cantidad`, `valor_unitario`, `porcentaje_impuesto`, `impuesto`, `precio_unitario`, `total`) VALUES
(9, 2, 1, 10.00, 1694.92, 0.18, 3050.85, 2000.00, 20000.00),
(10, 2, 2, 10.00, 152.54, 0.18, 274.58, 180.00, 1800.00),
(11, 2, 3, 10.00, 593.22, 0.18, 1067.80, 700.00, 7000.00),
(12, 2, 5, 10.00, 1101.69, 0.18, 1983.05, 1300.00, 13000.00),
(13, 3, 1, 10.00, 1440.68, 0.18, 2593.22, 1700.00, 17000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_series`
--

CREATE TABLE `comprobante_series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comprobante_tipo_codigo` char(2) NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `comprobante_series`
--

INSERT INTO `comprobante_series` (`id`, `comprobante_tipo_codigo`, `serie`, `correlativo`, `created_at`, `updated_at`) VALUES
(1, '00', 'X001', 1, NULL, NULL),
(2, '01', 'F001', 3, NULL, '2025-11-23 04:07:52'),
(3, '03', 'B001', 1, NULL, NULL),
(4, '07', 'NC01', 1, NULL, NULL),
(5, '08', 'ND01', 1, NULL, NULL),
(6, '09', 'GR01', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_tipos`
--

CREATE TABLE `comprobante_tipos` (
  `codigo` char(2) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `comprobante_tipos`
--

INSERT INTO `comprobante_tipos` (`codigo`, `descripcion`, `created_at`, `updated_at`) VALUES
('00', 'Otros', NULL, NULL),
('01', 'Factura', NULL, NULL),
('03', 'Boleta de Venta', NULL, NULL),
('07', 'Nota de Crédito', NULL, NULL),
('08', 'Nota de Débito', NULL, NULL),
('09', 'Guía de Remisión - Remitente', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_tipos`
--

CREATE TABLE `documento_tipos` (
  `codigo` char(2) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `documento_tipos`
--

INSERT INTO `documento_tipos` (`codigo`, `descripcion`) VALUES
('00', 'Doc. Tributario no domiciliado'),
('01', 'DNI'),
('04', 'Carnet de extranjería'),
('06', 'RUC'),
('07', 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_16_045416_create_unidades_table', 2),
(5, '2025_11_16_045857_create_afectacion_tipos_table', 2),
(6, '2025_11_16_050320_create_productos_table', 2),
(7, '2025_11_17_061901_create_permission_tables', 3),
(8, '2025_11_17_082605_add_activo_to_users_table', 4),
(9, '2025_11_18_094234_create_documento_tipos_table', 5),
(10, '2025_11_18_094828_create_clientes_table', 6),
(11, '2025_11_18_223447_create_comprobante_tipos_table', 7),
(12, '2025_11_18_223756_create_ventas_table', 7),
(13, '2025_11_18_224213_create_venta_detalles_table', 7),
(14, '2025_11_19_091126_create_comprobante_series_table', 8),
(15, '2025_11_19_101733_create_proveedores_table', 9),
(16, '2025_11_19_102040_create_compras_table', 9),
(17, '2025_11_19_102319_create_compra_detalles_table', 9),
(18, '2025_11_19_102900_add_stock_to_productos_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'unidades_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(2, 'unidades_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(3, 'unidades_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(4, 'unidades_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(5, 'afectacion_tipos_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(6, 'afectacion_tipos_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(7, 'afectacion_tipos_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(8, 'afectacion_tipos_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(9, 'clientes_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(10, 'clientes_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(11, 'clientes_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(12, 'clientes_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(13, 'documento_tipos_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(14, 'documento_tipos_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(15, 'documento_tipos_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(16, 'documento_tipos_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(17, 'productos_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(18, 'productos_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(19, 'productos_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(20, 'productos_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(21, 'ventas_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(22, 'ventas_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(23, 'ventas_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(24, 'ventas_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(25, 'comprobante_tipos_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(26, 'comprobante_tipos_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(27, 'comprobante_tipos_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(28, 'comprobante_tipos_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(29, 'users_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(30, 'users_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(31, 'users_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(32, 'users_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(33, 'roles_permisos_list', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(34, 'roles_permisos_create', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(35, 'roles_permisos_edit', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(36, 'roles_permisos_delete', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(37, 'compras_list', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(38, 'compras_create', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(39, 'compras_edit', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(40, 'compras_delete', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(41, 'proveedores_list', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(42, 'proveedores_create', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(43, 'proveedores_edit', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42'),
(44, 'proveedores_delete', 'web', '2025-11-19 15:48:42', '2025-11-19 15:48:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidad_codigo` char(3) NOT NULL,
  `afectacion_tipo_codigo` char(2) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `precio_unitario` decimal(6,2) NOT NULL,
  `stock` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `unidad_codigo`, `afectacion_tipo_codigo`, `codigo`, `nombre`, `descripcion`, `imagen`, `precio_unitario`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'UNI', '10', 'PRO0001', 'Procesador Ryzen 9', 'PROCESADOR AMD RYZEN 9 9950X 4.30GHz/5.7GHz 80MB 16 CORE AM5 (PN:100-100001277W0F)', '1763373324_ryzen9.jpg', 2200.00, 13.00, '2025-11-17 08:50:10', '2025-11-23 04:07:52'),
(2, 'UNI', '10', 'PRO0002', 'Memoria RAM HP', 'Memoria RAM DDR4 16Gb 3200Mhz marca HP V6 Series Black para PC', '1763373585_ram16hp.jpg', 200.00, 58.00, '2025-11-17 09:53:54', '2025-11-20 04:40:47'),
(3, 'UNI', '10', 'PRO0003', 'Disco sólido HP', 'Unidad en estado solido HP EX950, 2TB, M.2, 2280, PCIe Gen 3x4, NVMe 1.3.', '1763373862_solido2tb.jpg', 780.00, 58.00, '2025-11-17 10:01:51', '2025-11-20 04:40:47'),
(5, 'UNI', '10', 'PRO0004', 'La tarjeta NVIDIA GeForce', 'La RTX 4060 es una opción de gama media diseñada principalmente para juegos fluidos en resolución 1080p', '1763566973_S7sLMTmkHj.jpg', 1500.00, 58.00, '2025-11-19 15:42:53', '2025-11-20 04:40:47'),
(19, 'UNI', '10', 'PRO0005', 'Windows Server 2022', 'Presenta seguridad multicapa avanzada, las capacidades híbridas con Azure y una plataforma de aplicación flexible', '1763871365_759Um5VodD.jpg', 3600.00, 20.00, '2025-11-22 22:13:22', '2025-11-23 04:16:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documento_tipo_codigo` char(2) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `documento_tipo_codigo`, `numero_documento`, `razon_social`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, '06', '20212331377', 'GRUPO DELTRON S.A', 'RAUL REBAGLIATI NRO. 170', '(01)415-0101', 'infodeltron@deltron.com.pe', '2025-11-19 16:14:58', '2025-11-19 16:15:23'),
(3, '06', '20254507874', 'Intcomex Perú SAC', NULL, NULL, NULL, '2025-11-19 16:24:34', '2025-11-19 16:24:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(2, 'vendedor', 'web', '2025-11-17 11:41:45', '2025-11-17 11:41:45'),
(3, 'almacenero', 'web', '2025-11-17 13:05:27', '2025-11-17 13:05:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AV4C8Sc4SXjMBsQmDDCMSAHVZZovYpMm9HXQzQEg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFAxRzNlYjdndVhmSFlQRGpSMVBjMHJ6Z3FQMGpsUUFUd0Fac1VUdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wcm9iYW50ZS10aXBvcy9zZWxlY3QiO3M6NToicm91dGUiO3M6MjQ6ImNvbXByb2JhbnRlLXRpcG9zLnNlbGVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1764780643);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `codigo` char(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`codigo`, `descripcion`, `created_at`, `updated_at`) VALUES
('CAJ', 'CAJA (VARIAS UNIDADES)', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('DIA', 'DÍA DE SERVICIO / SOPORTE', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('GB', 'GIGABYTE (CAPACIDAD DE ALMACENAMIENTO)', '2025-11-17 06:53:33', '2025-11-17 06:53:33'),
('HRA', 'HORA DE SERVICIO TÉCNICO', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('KIT', 'KIT (TECLADO + MOUSE +  AUDÍFONOS.)', '2025-11-16 11:57:16', '2025-11-19 02:30:54'),
('LIC', 'LICENCIA DE SOFTWARE', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('MES', 'MES DE SERVICIO / SUSCRIPCIÓN', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('PAQ', 'PAQUETE / PACK', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('PAR', 'PAR (EJ. PARLANTES)', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('ROL', 'ROLLO (CABLES, MANGUERAS, ETC.)', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('TB', 'TERABYTE (CAPACIDAD DE ALMACENAMIENTO)', '2025-11-16 11:57:16', '2025-11-16 11:57:16'),
('UNI', 'UNIDAD (EQUIPO / ACCESORIO)', '2025-11-16 11:57:16', '2025-11-16 11:57:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `activo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jholby Segura (Administrador)', 'admin@admin.com.pe', 1, NULL, '$2y$12$roGKGDifVCKKnZM.gj2zyuaI3KMVpXyn23hs0HziMEsUWboCZo5vK', NULL, '2025-11-17 11:41:46', '2025-11-18 10:09:08'),
(2, 'Janáh Levy (Vendedor)', 'janah.levy@gmail.com', 1, NULL, '$2y$12$VNo2t0O8VGg9cWLdKEJliOX/wmupDCbthKvp0L00OrHVbI6dBKEp.', NULL, '2025-11-17 18:14:07', '2025-11-17 18:14:07'),
(3, 'Iosef Kaplan (Almacenero)', 'yossikaplan@gmail.com', 1, NULL, '$2y$12$sgbFB5XoFbMGzcAMD/XXq.yj8Blmys5JVIoiabIWhOpFINg7wvH3e', NULL, '2025-11-17 18:15:17', '2025-11-17 18:21:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comprobante_tipo_codigo` char(2) NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `serie` varchar(4) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `forma_pago` varchar(7) NOT NULL,
  `fecha` date NOT NULL,
  `op_gravada` decimal(8,2) NOT NULL,
  `op_exonerada` decimal(8,2) NOT NULL,
  `op_inafecta` decimal(8,2) NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `user_id`, `comprobante_tipo_codigo`, `cliente_id`, `serie`, `correlativo`, `forma_pago`, `fecha`, `op_gravada`, `op_exonerada`, `op_inafecta`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(8, 1, '01', 3, 'F001', 1, 'contado', '2025-11-19', 7932.20, 0.00, 0.00, 1427.80, 9360.00, 'registrado', '2025-11-20 04:40:47', '2025-11-20 04:40:47'),
(11, 1, '01', 3, 'F001', 2, 'contado', '2025-11-22', 102542.37, 0.00, 0.00, 18457.63, 121000.00, 'registrado', '2025-11-23 04:07:52', '2025-11-23 04:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalles`
--

CREATE TABLE `venta_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venta_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `porcentaje_impuesto` decimal(4,2) NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `precio_unitario` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `venta_detalles`
--

INSERT INTO `venta_detalles` (`id`, `venta_id`, `producto_id`, `cantidad`, `valor_unitario`, `porcentaje_impuesto`, `impuesto`, `precio_unitario`, `total`) VALUES
(16, 8, 1, 2.00, 1864.41, 0.18, 671.19, 2200.00, 4400.00),
(17, 8, 2, 2.00, 169.49, 0.18, 61.02, 200.00, 400.00),
(18, 8, 3, 2.00, 661.02, 0.18, 237.97, 780.00, 1560.00),
(19, 8, 5, 2.00, 1271.19, 0.18, 457.63, 1500.00, 3000.00),
(22, 11, 1, 55.00, 1864.41, 0.18, 18457.63, 2200.00, 121000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afectacion_tipos`
--
ALTER TABLE `afectacion_tipos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_documento_tipo_codigo_foreign` (`documento_tipo_codigo`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_user_id_foreign` (`user_id`),
  ADD KEY `compras_proveedor_id_foreign` (`proveedor_id`),
  ADD KEY `compras_comprobante_tipo_codigo_foreign` (`comprobante_tipo_codigo`);

--
-- Indices de la tabla `compra_detalles`
--
ALTER TABLE `compra_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_detalles_compra_id_foreign` (`compra_id`),
  ADD KEY `compra_detalles_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `comprobante_series`
--
ALTER TABLE `comprobante_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comprobante_series_comprobante_tipo_codigo_foreign` (`comprobante_tipo_codigo`);

--
-- Indices de la tabla `comprobante_tipos`
--
ALTER TABLE `comprobante_tipos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `documento_tipos`
--
ALTER TABLE `documento_tipos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_unidad_codigo_foreign` (`unidad_codigo`),
  ADD KEY `productos_afectacion_tipo_codigo_foreign` (`afectacion_tipo_codigo`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_documento_tipo_codigo_foreign` (`documento_tipo_codigo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_user_id_foreign` (`user_id`),
  ADD KEY `ventas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `ventas_comprobante_tipo_codigo_foreign` (`comprobante_tipo_codigo`);

--
-- Indices de la tabla `venta_detalles`
--
ALTER TABLE `venta_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_detalles_venta_id_foreign` (`venta_id`),
  ADD KEY `venta_detalles_producto_id_foreign` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compra_detalles`
--
ALTER TABLE `compra_detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `comprobante_series`
--
ALTER TABLE `comprobante_series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `venta_detalles`
--
ALTER TABLE `venta_detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_documento_tipo_codigo_foreign` FOREIGN KEY (`documento_tipo_codigo`) REFERENCES `documento_tipos` (`codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_comprobante_tipo_codigo_foreign` FOREIGN KEY (`comprobante_tipo_codigo`) REFERENCES `comprobante_tipos` (`codigo`),
  ADD CONSTRAINT `compras_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `compra_detalles`
--
ALTER TABLE `compra_detalles`
  ADD CONSTRAINT `compra_detalles_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compra_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `comprobante_series`
--
ALTER TABLE `comprobante_series`
  ADD CONSTRAINT `comprobante_series_comprobante_tipo_codigo_foreign` FOREIGN KEY (`comprobante_tipo_codigo`) REFERENCES `comprobante_tipos` (`codigo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_afectacion_tipo_codigo_foreign` FOREIGN KEY (`afectacion_tipo_codigo`) REFERENCES `afectacion_tipos` (`codigo`),
  ADD CONSTRAINT `productos_unidad_codigo_foreign` FOREIGN KEY (`unidad_codigo`) REFERENCES `unidades` (`codigo`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_documento_tipo_codigo_foreign` FOREIGN KEY (`documento_tipo_codigo`) REFERENCES `documento_tipos` (`codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_comprobante_tipo_codigo_foreign` FOREIGN KEY (`comprobante_tipo_codigo`) REFERENCES `comprobante_tipos` (`codigo`),
  ADD CONSTRAINT `ventas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `venta_detalles`
--
ALTER TABLE `venta_detalles`
  ADD CONSTRAINT `venta_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta_detalles_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

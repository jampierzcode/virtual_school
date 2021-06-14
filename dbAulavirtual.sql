-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2021 a las 01:39:21
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intranet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nombres` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `edad` date NOT NULL,
  `dni` int(8) NOT NULL,
  `sexo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `us_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `nombres`, `apellidos`, `edad`, `dni`, `sexo`, `foto`, `password`, `us_tipo`) VALUES
(1, 'Jampier Smith', 'Vasquez Mija', '2001-06-15', 74421968, 'Hombre', '5f01127a06435-jampier.jpg', '280918', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `nombres` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `edad` date NOT NULL,
  `dni` int(8) NOT NULL,
  `sexo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salon_id` int(11) NOT NULL,
  `us_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `nombres`, `apellidos`, `edad`, `dni`, `sexo`, `foto`, `password`, `salon_id`, `us_tipo`) VALUES
(1, 'Donakeit Yoselyn', 'Cori Curo', '2009-08-12', 62031766, 'Mujer', 'avataralumna.jpg', '62031766%', 31, 3),
(2, 'Milagros Montserrat', 'Vargas Chavez', '2009-06-12', 60685103, 'Mujer', 'avataralumna.jpg', '60685103%', 31, 3),
(3, 'Luis Fabiano', 'Mamani Machaca', '2009-05-12', 61504104, 'Hombre', 'avataralumno.jpg', '61504104', 31, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `asistencias_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `clases_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `libros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(11) NOT NULL,
  `nombre_cat` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorias`, `nombre_cat`) VALUES
(1, 'Inicial'),
(2, 'Primaria'),
(3, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `clases_id` int(11) NOT NULL,
  `salon_id` int(11) NOT NULL,
  `docente_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`clases_id`, `salon_id`, `docente_id`, `curso_id`) VALUES
(21, 31, 1, 2),
(22, 32, 1, 2),
(23, 31, 2, 1),
(24, 31, 2, 3),
(26, 31, 1, 4),
(27, 37, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nombre_curso` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nombre_curso`) VALUES
(1, 'MATEMATICA'),
(2, 'COMUNICACION'),
(3, 'CTA'),
(4, 'PFRH'),
(5, 'FCC'),
(6, 'RELIGION'),
(7, 'INGLES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libros` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `link_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libros`, `nombre`, `descripcion`, `link_ref`, `archivo`, `imagen`, `categoria`) VALUES
(1, 'Matematica 1ero de Secundaria', 'Unidades Geometricas, poligonos, la recta, teoria de conjuntos...', 'https://drive.google.com/file/d/1B-25_gJv0uf8mdxhJRFZj18I8UgcUjic/view?usp=sharing', NULL, 'matematica.png', 3),
(2, 'Comunicacion 2do de Secundaria', 'Cuentos, analogias, comprension lectora, la noticia, la novela, el teatro...', 'https://drive.google.com/file/d/1wjARXs5RfsKMjjVuFDGSlSHKi917exzb/view?usp=sharing', NULL, 'comunicacion.jpg', 3),
(3, 'Ingles Inicial', 'Verbo tobe, canciones en ingles, aprendo a aprender...', 'https://docs.google.com/presentation/d/1gjiQ81XZS6UWXO3PLTo-SZqensVu4TQ8TsrvIMIt-ro/edit?usp=sharing', NULL, 'ingles.png', 1),
(13, 'MATEMATICA', 'lo que sea', 'https://drive.google.com/file/d/1yrOTwlToDGZNM8C-WzbEbpenLcaMotST/view?usp=sharing', NULL, 'matematicaprim.jpg', 2),
(14, 'HGE para 3ero de Secundaria', 'blablablabla...', 'https://drive.google.com/file/d/1wjARXs5RfsKMjjVuFDGSlSHKi917exzb/view?usp=sharing', NULL, 'hge3eros.jpg', 3),
(16, 'Programacion Digital', 'Somos los mejores', 'https://docs.google.com/presentation/d/16g7o4-RS3iGWFQRAT_o4Tq63xAsfO57P4Izcuq-rDgs/edit?usp=sharing', NULL, '5ee57265dd9a2-digitales.jpg', 2),
(17, 'PILARES', 'LIBRO DE INGLES    ', 'https://docs.google.com/presentation/d/16g7o4-RS3iGWFQRAT_o4Tq63xAsfO57P4Izcuq-rDgs/edit?usp=sharing', NULL, '5f03a926471ce-doctorito.png', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id_material` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `archivo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id_niveles` int(11) NOT NULL,
  `nombre_nivel` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_niveles`, `nombre_nivel`) VALUES
(1, 'Inicial'),
(2, 'Primaria'),
(3, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `nombres` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `edad` date NOT NULL,
  `dni` int(8) NOT NULL,
  `sexo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `us_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombres`, `apellidos`, `edad`, `dni`, `sexo`, `foto`, `password`, `us_tipo`) VALUES
(1, 'Carmen Luisa', 'Perez Gamboa', '1995-05-14', 12345678, 'Mujer', '6081aef5b7502-carmen.jpg', 'carmen20%', 2),
(2, 'Jorge Luis', 'Gutierrez', '1995-06-15', 1056156, 'Hombre', '6081af8edc51e-jorgeluis.png', '5289196', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `id_salon` int(11) NOT NULL,
  `nombre_salon` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nivel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`id_salon`, `nombre_salon`, `nivel_id`) VALUES
(21, 'INICIAL DE 3 AÑOS', 1),
(22, 'INICIAL DE 4 AÑOS', 1),
(23, 'INICIAL DE 5 AÑOS', 1),
(24, '1ERO DE PRIMARIA', 2),
(25, '2DO DE PRIMARIA', 2),
(27, '3ERO DE PRIMARIA', 2),
(28, '4TO DE PRIMARIA', 2),
(29, '5TO DE PRIMARIA', 2),
(30, '6TO DE PRIMARIA', 2),
(31, '1ERO DE SECUNDARIA', 3),
(32, '2DO DE SECUNDARIA', 3),
(33, '3ERO DE SECUNDARIA', 3),
(34, '4TO DE SECUNDARIA', 3),
(37, '5TO DE SECUNDARIA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id_tarea` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `tipo_tarea` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `puntos` decimal(4,0) NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archivo_entrega` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_entrega` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id_tarea`, `id_clase`, `tipo_tarea`, `fecha_creacion`, `titulo`, `descripcion`, `puntos`, `url`, `archivo_entrega`, `fecha_entrega`) VALUES
(1, 21, 'TAREA', '2021-04-13 19:15:07', 'RAZONAMIENTO VERBAL', 'hola que tal', '20', NULL, '../archivos/6076421be4680-FICHA INFORMATIVA Y ACTIVIDADES_4grado_S28_web.pdf', '2021-04-20 19:15:00'),
(2, 21, 'MATERIAL', '2021-04-13 19:32:21', 'Material 1', 'Ojala se pueda tmre XD', '20', NULL, '../archivos/6076462557625-s30-sec-4-guia-matematica.pdf', '2021-04-22 19:32:00'),
(3, 21, 'TAREA', '2021-04-13 19:41:09', 'Tarea 2', 'Escribir bien las palabras', '20', NULL, '../archivos/60764835c851c-ESTRES ACADEMICO.docx', '2021-04-30 19:40:00'),
(4, 21, 'MATERIAL', '2021-04-13 22:08:23', 'awdawda', 'gvgvgjmgvmjvg', '20', NULL, '../archivos/60766ab71203f-COMUNICADO IIEEPRIV.docx', '2021-04-23 22:08:00'),
(5, 21, 'TAREA', '2021-04-15 21:16:07', 'RAZONAMIENTO matematico', 'Resolver el siguiente ejercicio matematico prueba.', '20', NULL, '../archivos/6079017710ab7-documento de frases para la primavera 2020.pdf', '2021-04-15 22:15:00'),
(7, 21, 'TAREA', '2021-04-16 16:29:55', 'TAREA PARA MAS TARDE OJALA SE PUEDA', 'Hola que tal espero que se pues ahhahaaas', '20', NULL, 'null', '2021-04-16 16:35:00'),
(8, 21, 'MATERIAL', '2021-04-19 12:06:01', 'Prueba asincrona', 'esto es un material de prueba asincrona', '20', NULL, 'null', '2021-04-19 12:05:00'),
(9, 21, 'MATERIAL', '2021-04-19 12:11:10', 'afawfaf', 'awfawfawfawf', '0', NULL, 'null', '0000-00-00 00:00:00'),
(10, 21, 'TAREA', '2021-04-19 12:15:00', 'RAZONAMIENTO VERBAL', '2515615', '20', NULL, 'null', '2021-04-21 12:14:00'),
(11, 21, 'TAREA', '2021-04-19 12:16:56', 'awdawdawd', 'awdawdawdwa', '20', NULL, 'null', '2021-04-22 12:16:00'),
(12, 21, 'TAREA', '2021-04-19 12:20:05', 'effvegergrg b', 'th6h6th6ht6ht6ion ww aowdi wjdiajw wd wjd iawjdiawjdaiwjd w waijdawijdiawjd widjw iaiojd waijd aiwjd awijdao wdjiaow idjaow daw wd', '20', NULL, '../archivos/607dc9d5453c3-Doc1.docx', '2021-04-28 12:20:00'),
(13, 27, 'TAREA', '2021-04-23 15:59:07', 'TAREA PARA RAQUEL', 'Resolver las siguientes operaciones matemáticas, y problemas de factorización.', '20', NULL, '../archivos/6083432bca18e-Curriculum vitae.pdf', '2021-04-24 15:58:00'),
(14, 21, 'TAREA', '2021-05-31 18:44:37', 'TAREA DE PRUEBA', 'hola mundo', '20', NULL, '../archivos/60b582f5761fb-CRISTO SALVADOR.docx', '2021-06-01 20:44:00'),
(15, 21, 'TAREA', '2021-06-07 18:01:31', 'TAREA DE PRUBA DEL 07 DE JUNIO', 'CASO DE USO PARA TAREA', '20', NULL, '../archivos/60beb35b056a8-', '2021-06-08 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea_subida`
--

CREATE TABLE `tarea_subida` (
  `id_tarea_subida` int(11) NOT NULL,
  `estado_entrega` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `tarea_id` int(11) NOT NULL,
  `archivo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calificacion` int(2) DEFAULT NULL,
  `fecha_subida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarea_subida`
--

INSERT INTO `tarea_subida` (`id_tarea_subida`, `estado_entrega`, `alumno_id`, `tarea_id`, `archivo`, `calificacion`, `fecha_subida`) VALUES
(1, 'Entregado', 3, 3, '../archivos/60764835c851c-ESTRES ACADEMICO.docx', NULL, '2021-04-19 11:05:45'),
(2, 'Entregado', 3, 7, '../archivos/60764835c851c-ESTRES ACADEMICO.docx', 0, '2021-04-19 11:05:45'),
(3, 'Entregado', 3, 5, '', NULL, '2021-04-19 11:47:36'),
(4, 'Entegado', 3, 12, '../tareas_alumnos/60832f61b482d-RHE10744219685E0012.pdf', 0, '2021-04-23 14:34:41'),
(5, 'Entegado', 3, 1, '../tareas_alumnos/60833be4361ae-WEB.docx', 18, '2021-04-23 15:28:04'),
(6, 'Entegado', 3, 10, '../tareas_alumnos/60833ecea2436-constancias modelo.docx', 0, '2021-04-23 15:40:30'),
(7, 'Entegado', 3, 11, '../tareas_alumnos/60833fe8ce22e-NOTAS FINALES DE PRIMARIA.xlsx', 0, '2021-04-23 15:45:12'),
(8, 'Entegado', 5, 13, '../tareas_alumnos/6083437fefb68-NOTAS FINALES DE PRIMARIA.xlsx', 20, '2021-04-23 16:00:31'),
(9, 'Entegado', 1, 12, '../tareas_alumnos/60a0115e97db1-NOTAS FINALES DE PRIMARIA.xlsx', 0, '2021-05-15 12:22:22'),
(10, 'Entegado', 1, 14, '../tareas_alumnos/60b583b41a5cc-ESTRES ACADEMICO.docx', 0, '2021-05-31 18:47:48'),
(11, 'Entegado', 1, 15, '../tareas_alumnos/60beb3cf14e03-COMPETENCIAS TRANSVERSALES A LAS ÁREAS.pdf', 0, '2021-06-07 18:03:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `us_tipo` (`us_tipo`),
  ADD KEY `salon_id` (`salon_id`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`asistencias_id`),
  ADD KEY `clases_id` (`clases_id`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`),
  ADD KEY `libros` (`libros`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`clases_id`),
  ADD KEY `salon_id` (`salon_id`,`docente_id`),
  ADD KEY `docente_id` (`docente_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libros`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_niveles`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `us_tipo` (`us_tipo`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`id_salon`),
  ADD KEY `nivel_id` (`nivel_id`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id_tarea`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indices de la tabla `tarea_subida`
--
ALTER TABLE `tarea_subida`
  ADD PRIMARY KEY (`id_tarea_subida`),
  ADD KEY `alumno_id` (`alumno_id`,`tarea_id`),
  ADD KEY `tarea_id` (`tarea_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `asistencias_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `clases_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_niveles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `id_salon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id_tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tarea_subida`
--
ALTER TABLE `tarea_subida`
  MODIFY `id_tarea_subida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`salon_id`) REFERENCES `salon` (`id_salon`);

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`clases_id`) REFERENCES `clases` (`clases_id`);

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`libros`) REFERENCES `libros` (`id_libros`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `profesor` (`id_profesor`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`salon_id`) REFERENCES `salon` (`id_salon`),
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id_cursos`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id_categorias`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`clases_id`);

--
-- Filtros para la tabla `salon`
--
ALTER TABLE `salon`
  ADD CONSTRAINT `salon_ibfk_1` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id_niveles`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`clases_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

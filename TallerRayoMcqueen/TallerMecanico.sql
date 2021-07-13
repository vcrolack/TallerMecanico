-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla tallerrayo.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.auth_permission: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add especialidad', 7, 'add_especialidad'),
	(26, 'Can change especialidad', 7, 'change_especialidad'),
	(27, 'Can delete especialidad', 7, 'delete_especialidad'),
	(28, 'Can view especialidad', 7, 'view_especialidad'),
	(29, 'Can add mecanico', 8, 'add_mecanico'),
	(30, 'Can change mecanico', 8, 'change_mecanico'),
	(31, 'Can delete mecanico', 8, 'delete_mecanico'),
	(32, 'Can view mecanico', 8, 'view_mecanico'),
	(33, 'Can add vehiculo', 9, 'add_vehiculo'),
	(34, 'Can change vehiculo', 9, 'change_vehiculo'),
	(35, 'Can delete vehiculo', 9, 'delete_vehiculo'),
	(36, 'Can view vehiculo', 9, 'view_vehiculo'),
	(37, 'Can add trabajo realizado', 10, 'add_trabajorealizado'),
	(38, 'Can change trabajo realizado', 10, 'change_trabajorealizado'),
	(39, 'Can delete trabajo realizado', 10, 'delete_trabajorealizado'),
	(40, 'Can view trabajo realizado', 10, 'view_trabajorealizado'),
	(41, 'Can add imagen', 11, 'add_imagen'),
	(42, 'Can change imagen', 11, 'change_imagen'),
	(43, 'Can delete imagen', 11, 'delete_imagen'),
	(44, 'Can view imagen', 11, 'view_imagen'),
	(45, 'Can add servicio', 12, 'add_servicio'),
	(46, 'Can change servicio', 12, 'change_servicio'),
	(47, 'Can delete servicio', 12, 'delete_servicio'),
	(48, 'Can view servicio', 12, 'view_servicio');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.auth_user: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$HkWRiP1lngPVAvIc1yJyEW$u2n90rh+qpGxgvDwXKMpewBjfpRlaJZPGF9oAubs/qo=', '2021-07-13 06:49:38.326795', 1, 'rolack', '', '', 'victorolack@gmail.com', 1, 1, '2021-07-01 22:25:56.000000'),
	(2, 'pbkdf2_sha256$260000$CFUWcLtL9afRLg4EU9H1g4$E+jKR1e5ENwSjVzZ+wZ95/TPvk5XlbASBbDextYNflo=', NULL, 0, 'Aurora', '', '', '', 0, 1, '2021-07-11 02:19:10.363778'),
	(3, 'pbkdf2_sha256$260000$7SpZQ8svJCGB0hgEtQC2P6$d3kz5CnJs5v4W7n5rX83sUryfTZ1qTjtrzoL05LIHvY=', '2021-07-11 21:21:06.759813', 0, 'claudia', '', '', '', 0, 1, '2021-07-11 02:34:00.360524'),
	(4, 'pbkdf2_sha256$260000$bMrexBPNNUwMVlYVS1f0Ql$rERLyheXs7evc8gbna81oQZw77FxDbZMX1kxcS9fecE=', '2021-07-11 04:33:08.232558', 0, 'pedrito', '', '', 'pedrito@gmail.com', 0, 1, '2021-07-11 04:33:08.108401'),
	(5, 'pbkdf2_sha256$260000$fFy7FfTpN6yqChnNjzwEgz$g6/J1Z2zEs2LZUggAx7+xHzXIq8BW7d4Ek2xs07A9vw=', '2021-07-13 06:49:08.165317', 0, 'auri', '', '', 'auri@gmail.com', 0, 1, '2021-07-11 04:42:23.425447'),
	(6, 'pbkdf2_sha256$260000$oVrWB4v2c5CExdGhTNx2Rc$QQVJ8Y49PQ0Piiolp7JbxdTucbPnlznWjw2e3fdQk6o=', '2021-07-11 06:01:58.880800', 0, 'john', '', '', 'john@gmail.com', 0, 1, '2021-07-11 05:12:04.087436'),
	(7, 'pbkdf2_sha256$260000$JmrEW4Gd3O9lLyqdsIcH29$JCPicnj9q3zLzfYl0GmbRW7sdRrPO7xygb6/010pyCM=', NULL, 0, 'profe_giova', '', '', '', 1, 1, '2021-07-11 23:01:29.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.auth_user_user_permissions: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 7, 25),
	(2, 7, 26),
	(3, 7, 27),
	(4, 7, 28),
	(5, 7, 29),
	(6, 7, 30),
	(7, 7, 31),
	(8, 7, 32),
	(9, 7, 33),
	(10, 7, 34),
	(11, 7, 35),
	(12, 7, 36),
	(13, 7, 37),
	(14, 7, 38),
	(15, 7, 39),
	(16, 7, 40),
	(17, 7, 45),
	(18, 7, 46),
	(19, 7, 47),
	(20, 7, 48);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_especialidad: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `core_especialidad` DISABLE KEYS */;
INSERT INTO `core_especialidad` (`id_especialidad`, `nombre_especialidad`) VALUES
	(1, 'Electricista'),
	(2, 'Vidrería'),
	(3, 'Vestidura'),
	(4, 'Llantas'),
	(5, 'Escáner');
/*!40000 ALTER TABLE `core_especialidad` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_imagen: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `core_imagen` DISABLE KEYS */;
INSERT INTO `core_imagen` (`id_imagen`, `nombre_imagen`, `imagen`) VALUES
	(1, 'Quienes somos', 'imagenesDB/quienesSomos.jpg'),
	(2, 'Nuestros mecanicos', 'imagenesDB/nuestrosMecanicos.jpg'),
	(3, 'Contacto', 'imagenesDB/contacto.jpg'),
	(4, 'Busqueda', 'imagenesDB/busquedas.jpg');
/*!40000 ALTER TABLE `core_imagen` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_mecanico: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `core_mecanico` DISABLE KEYS */;
INSERT INTO `core_mecanico` (`id_mecanico`, `nombre_mecanico`, `apellido_mecanico`, `descripcion_mecanico`, `foto_mecanico`, `especialidad_id`) VALUES
	(1, 'Jean', 'Dimter', 'Jean es quien revisa, repara o cambia todos los componentes del sistema eléctrico de tu vehículo, desde lo más sencillo como un foco hasta uno de los alternadores.', 'fotosMecanicosDB/AndyPrueba.jpg', 1),
	(2, 'David', 'Luzuriaga', 'David se especializa en todo lo que incumba vidrios, desde los más dañados hasta cambios estéticos de los mismos. Y si tan solo tienes una raya que afecta en la estética, David lo pule para ti.', 'fotosMecanicosDB/David.jpg', 2),
	(3, 'Jorge', 'Moforte', 'Jorge tiene un gran sentido de la estética de tu vehículo, por lo que si quieres cambiar el color de tu vehículo o embellecer el interior del mismo, este grandioso mecánico es lo que buscas.', 'fotosMecanicosDB/Jorge.jpg', 3),
	(4, 'Tomás', 'Faúndez', 'Tomás es todo un erudito en lo que neumáticos se refiere, por lo que él encantado te asesorará a escoger neumáticos y equiparlos en tu auto.', 'fotosMecanicosDB/PruebaTomas.jpg', 4),
	(5, 'Antonia', 'Romero', 'Antonia se centra en el software del auto, por lo que si tienes problemas con el sistema operativo o si necesitas que escaneen tu carro, detén tu búsqueda porque has hallado la solución.', 'fotosMecanicosDB/Antonia.jpg', 5),
	(6, 'Cristina', 'Fernández', 'Cristina es una experta en la mantención de hidráulicos, alineación y balanceo de tu vehículo. Si no encuentras solución en otros centros, es porque Cristina la tiene.', 'fotosMecanicosDB/Pamela.jpg', 4);
/*!40000 ALTER TABLE `core_mecanico` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_servicio: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `core_servicio` DISABLE KEYS */;
INSERT INTO `core_servicio` (`id_servicio`, `nombre_servicio`, `descripcion_servicio`) VALUES
	(1, 'Mecánica', 'El correcto funcionamiento de tu vehículo es nuestro objetivo, por lo que contamos con una gran variedad de servicios en mecánica express, general y mayor van desde alineación de ruedas hasta reparaciones de motor.'),
	(2, 'Estética automotriz', 'Un automóvil con buen rendimiento y un correcto funcionamiento es bueno, pero que tenga una excelente imagen es mucho mejor. En El Rayo McQueen nos encargamos del lavado de interiores y exteriores, pulido y encerado y hasta lavado de motor.'),
	(3, 'Electricidad  automotriz', 'Es de sumamente importancia que el sistema eléctrico de tu vehículo esté siempre en buen estado, por eso, nos ocupamos de diagnosticar fallos y hacer reemplazo de las partes necesarias para que tu auto funcione a su mejor nivel.');
/*!40000 ALTER TABLE `core_servicio` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_trabajorealizado: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `core_trabajorealizado` DISABLE KEYS */;
INSERT INTO `core_trabajorealizado` (`id_trabajo`, `tipo_trabajo`, `mas_informacion`, `foto_trabajo`, `mecanico_id`, `vehiculo_id`) VALUES
	(1, 'Cambio de radiador', 'Al encontrarse en mal estado, Tomás ha cambiado el radiador del Mazda 4.', 'fotosTrabajosDB/foto1.jpg', 4, 'XH5639'),
	(2, 'Cambio de pistónes', 'El Kia traído al taller poseía un desgaste por parte de los pistónes, por lo que Jorge los cambia.', 'fotosTrabajosDB/foto2.jpg', 3, 'GG33WP'),
	(3, 'Lubricación', 'David lubricando con éxito la carrocería.', 'fotosTrabajosDB/foto3.jpg', 2, 'GGEZ45'),
	(4, 'Limpieza de parachoques', 'Limpió el parachoques con mucha diligencia. Se porta bien.', 'fotosTrabajosDB/motor-limpieza.jpg', 1, 'AU23RI');
/*!40000 ALTER TABLE `core_trabajorealizado` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.core_vehiculo: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `core_vehiculo` DISABLE KEYS */;
INSERT INTO `core_vehiculo` (`patente`, `marca`, `modelo`, `annio`) VALUES
	('AU23RI', 'Honda', 'Civic', 1998),
	('GG33WP', 'Kia', 'Kia rio', 2019),
	('GGEZ45', 'Toyota', 'Toyota Yaris', 2016),
	('HEXX12', 'Mercedez Benz', 'XR892', 2015),
	('HU4HU4', 'Jeep', 'Cherooke', 1998),
	('XH5639', 'Mazda', 'Mazda 4', 2015),
	('XXH12', 'Mercedez Benz', 'XR892', 2015);
/*!40000 ALTER TABLE `core_vehiculo` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.django_admin_log: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-07-01 22:27:28.360628', '1', 'Electricista', 1, '[{"added": {}}]', 7, 1),
	(2, '2021-07-01 22:29:22.099518', '2', 'Vidrería', 1, '[{"added": {}}]', 7, 1),
	(3, '2021-07-01 22:29:39.693243', '3', 'Vestidura', 1, '[{"added": {}}]', 7, 1),
	(4, '2021-07-01 22:29:56.489745', '4', 'Llantas', 1, '[{"added": {}}]', 7, 1),
	(5, '2021-07-01 22:30:33.700810', '5', 'Escáner', 1, '[{"added": {}}]', 7, 1),
	(6, '2021-07-01 22:32:36.477485', '1', 'Jean', 1, '[{"added": {}}]', 8, 1),
	(7, '2021-07-01 22:32:58.831530', '1', 'Jean', 2, '[]', 8, 1),
	(8, '2021-07-01 22:34:04.933265', '2', 'David', 1, '[{"added": {}}]', 8, 1),
	(9, '2021-07-01 22:34:48.127492', '3', 'Jorge', 1, '[{"added": {}}]', 8, 1),
	(10, '2021-07-01 22:35:33.884063', '4', 'Tomás', 1, '[{"added": {}}]', 8, 1),
	(11, '2021-07-01 22:36:11.865908', '5', 'Antonia', 1, '[{"added": {}}]', 8, 1),
	(12, '2021-07-01 22:37:03.361019', '6', 'Cristina', 1, '[{"added": {}}]', 8, 1),
	(13, '2021-07-01 22:41:00.361299', 'XH5639', 'Mazda 4', 1, '[{"added": {}}]', 9, 1),
	(14, '2021-07-01 22:41:28.308322', 'GGEZ45', 'Toyota Yaris', 1, '[{"added": {}}]', 9, 1),
	(15, '2021-07-01 22:42:03.492519', 'GG33WP', 'Kia rio', 1, '[{"added": {}}]', 9, 1),
	(16, '2021-07-03 05:31:49.431606', '1', 'Cambio de radiador', 1, '[{"added": {}}]', 10, 1),
	(17, '2021-07-03 05:36:07.872797', '2', 'Cambio de pistónes', 1, '[{"added": {}}]', 10, 1),
	(18, '2021-07-03 05:40:30.605318', '3', 'Lubricación', 1, '[{"added": {}}]', 10, 1),
	(19, '2021-07-06 22:22:26.782165', '1', 'Quienes somos', 1, '[{"added": {}}]', 11, 1),
	(20, '2021-07-06 22:45:11.578570', '1', 'Mecánica', 1, '[{"added": {}}]', 12, 1),
	(21, '2021-07-06 22:47:32.942126', '2', 'Estética <br>automotriz</br>', 1, '[{"added": {}}]', 12, 1),
	(22, '2021-07-06 22:47:56.963098', '3', 'Electricidad <br> automotriz</br>', 1, '[{"added": {}}]', 12, 1),
	(23, '2021-07-06 22:56:13.082029', '3', 'Electricidad  automotriz', 2, '[{"changed": {"fields": ["Nombre servicio"]}}]', 12, 1),
	(24, '2021-07-06 22:56:19.840598', '2', 'Estética automotriz', 2, '[{"changed": {"fields": ["Nombre servicio"]}}]', 12, 1),
	(25, '2021-07-06 22:57:28.573026', '2', 'Estética automotriz', 2, '[{"changed": {"fields": ["Nombre servicio"]}}]', 12, 1),
	(26, '2021-07-06 23:09:28.908417', '2', 'Nuestros mecanicos', 1, '[{"added": {}}]', 11, 1),
	(27, '2021-07-06 23:10:20.250169', '2', 'Nuestros mecanicos', 2, '[]', 11, 1),
	(28, '2021-07-06 23:51:48.698140', '3', 'Contacto', 1, '[{"added": {}}]', 11, 1),
	(29, '2021-07-07 00:08:11.709204', '4', 'Busqueda', 1, '[{"added": {}}]', 11, 1),
	(30, '2021-07-11 02:19:10.486778', '2', 'Aurora', 1, '[{"added": {}}]', 4, 1),
	(31, '2021-07-11 02:34:00.485207', '3', 'claudia', 1, '[{"added": {}}]', 4, 1),
	(32, '2021-07-11 23:01:29.648495', '7', 'profe_giova', 1, '[{"added": {}}]', 4, 1),
	(33, '2021-07-11 23:02:37.245112', '7', 'profe_giova', 2, '[{"changed": {"fields": ["Staff status", "User permissions"]}}]', 4, 1),
	(34, '2021-07-11 23:03:42.563824', '1', 'rolack', 2, '[]', 4, 1),
	(35, '2021-07-13 06:19:13.576139', '4', 'Limpieza de motor', 1, '[{"added": {}}]', 10, 1),
	(36, '2021-07-13 20:31:36.029840', '4', 'Limpieza de motor', 1, '[{"added": {}}]', 10, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.django_content_type: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'core', 'especialidad'),
	(11, 'core', 'imagen'),
	(8, 'core', 'mecanico'),
	(12, 'core', 'servicio'),
	(10, 'core', 'trabajorealizado'),
	(9, 'core', 'vehiculo'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.django_migrations: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'core', '0001_initial', '2021-07-01 22:22:50.230810'),
	(2, 'contenttypes', '0001_initial', '2021-07-01 22:25:16.034923'),
	(3, 'auth', '0001_initial', '2021-07-01 22:25:16.323926'),
	(4, 'admin', '0001_initial', '2021-07-01 22:25:16.382928'),
	(5, 'admin', '0002_logentry_remove_auto_add', '2021-07-01 22:25:16.388927'),
	(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-01 22:25:16.394925'),
	(7, 'contenttypes', '0002_remove_content_type_name', '2021-07-01 22:25:16.431926'),
	(8, 'auth', '0002_alter_permission_name_max_length', '2021-07-01 22:25:16.449924'),
	(9, 'auth', '0003_alter_user_email_max_length', '2021-07-01 22:25:16.467925'),
	(10, 'auth', '0004_alter_user_username_opts', '2021-07-01 22:25:16.472928'),
	(11, 'auth', '0005_alter_user_last_login_null', '2021-07-01 22:25:16.491478'),
	(12, 'auth', '0006_require_contenttypes_0002', '2021-07-01 22:25:16.493477'),
	(13, 'auth', '0007_alter_validators_add_error_messages', '2021-07-01 22:25:16.501477'),
	(14, 'auth', '0008_alter_user_username_max_length', '2021-07-01 22:25:16.518478'),
	(15, 'auth', '0009_alter_user_last_name_max_length', '2021-07-01 22:25:16.536476'),
	(16, 'auth', '0010_alter_group_name_max_length', '2021-07-01 22:25:16.552478'),
	(17, 'auth', '0011_update_proxy_permissions', '2021-07-01 22:25:16.561478'),
	(18, 'auth', '0012_alter_user_first_name_max_length', '2021-07-01 22:25:16.578478'),
	(19, 'sessions', '0001_initial', '2021-07-01 22:25:16.602507'),
	(20, 'core', '0002_imagen', '2021-07-06 22:18:25.258709'),
	(21, 'core', '0003_servicio', '2021-07-06 22:40:44.698692'),
	(22, 'core', '0004_alter_servicio_nombre_servicio', '2021-07-06 22:46:58.667733');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando datos para la tabla tallerrayo.django_session: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('261oozydzbbpxyagy4kv3x9or7q0b9n9', '.eJxVjDsOwjAQBe_iGll24t9S0nMGa71r4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZaHH63RLSI7cd8B3bbZY0t3WZktwVedAurzPn5-Vw_w4q9vqty6AJXTLBJ0PgrfPJgQXWnMkXNuhGLCNgcZYVM3EYVNAKLELWzEW8P_ZnOKY:1m1VKS:YcG-__R6DQugy9O9KuFMs6ytVEZHBc7YN9BDmI4Tgrw', '2021-07-22 14:48:40.954817'),
	('j2ke6en4rv7t9tn9odmplgipfoiuv8pg', '.eJxVjDsOwjAQBe_iGll24t9S0nMGa71r4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZaHH63RLSI7cd8B3bbZY0t3WZktwVedAurzPn5-Vw_w4q9vqty6AJXTLBJ0PgrfPJgQXWnMkXNuhGLCNgcZYVM3EYVNAKLELWzEW8P_ZnOKY:1m3CEc:OsCV2NxNHjwkahwrXO_ZceZOtTXMdC0GA4I--2i7wTY', '2021-07-27 06:49:38.327765'),
	('kerx7klj3jg6mg1o5y3szeioanaoy6az', '.eJxVjDsOwjAQBe_iGll24t9S0nMGa71r4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZaHH63RLSI7cd8B3bbZY0t3WZktwVedAurzPn5-Vw_w4q9vqty6AJXTLBJ0PgrfPJgQXWnMkXNuhGLCNgcZYVM3EYVNAKLELWzEW8P_ZnOKY:1lz58c:gEi6vGoSW2MRy0QSzRna8XDk4udVdXWy8dtZykAnwl4', '2021-07-15 22:26:26.083607');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

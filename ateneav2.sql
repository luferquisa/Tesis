-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2016 at 03:04 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ateneav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `competencias`
--

CREATE TABLE `competencias` (
  `id` int(11) NOT NULL,
  `competencia` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `competencias`
--

INSERT INTO `competencias` (`id`, `competencia`, `descripcion`) VALUES
(1, 'Lectura', 'Capacidad de un individuo para comprender, utilizar, y reflexionar sobre los textos escritos y comprometerse con ellos para alcanzar sus propios objetivos, desarrollar sus conocimientos y su potencial, y participar en la socidad');

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `genero` enum('Femenino','Masculino') COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_nacimiento` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estrato` enum('1','2','3','4','5','6') COLLATE utf8_spanish_ci NOT NULL,
  `composicion_familiar` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `colegio_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `colegio_grado` enum('publico','privado') COLLATE utf8_spanish_ci NOT NULL,
  `trabaja` tinyint(4) NOT NULL,
  `hijos` tinyint(4) NOT NULL,
  `direccion_residencia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `grupo_programacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `repitente` tinyint(4) NOT NULL,
  `numero_repitente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`, `lugar_nacimiento`, `estrato`, `composicion_familiar`, `colegio_nombre`, `colegio_grado`, `trabaja`, `hijos`, `direccion_residencia`, `grupo_programacion`, `repitente`, `numero_repitente`) VALUES
(18, 'Luisa Quiroga', 'lfquiroga04@ucatolica.edu.co', 'Femenino', '1986-08-30', 'Barranquilla', '3', '3', 'Adventista Emmanuel', 'privado', 0, 0, 'Carrera 50 N  31 26 Sur', '1', 0, 0),
(19, 'Edwin Hurtado', 'ehurtado@ucatolica.edu.co', 'Masculino', '2016-09-16', 'Bogota', '3', '3', 'Industrial piloto', 'publico', 0, 0, 'Carrrera', 'uno', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `niveles`
--

CREATE TABLE `niveles` (
  `id` int(11) NOT NULL,
  `nivel` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8,
  `limite_inferior` int(11) NOT NULL,
  `compentencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `niveles`
--

INSERT INTO `niveles` (`id`, `nivel`, `descripcion`, `limite_inferior`, `compentencia`) VALUES
(1, '1a', 'Las tareas en este nivel requieren que el lector localice una sola infor- mación presentada de manera explícita y en una posición destacada en un texto breve, de sintaxis sencilla con un tema y tipo de texto conocidos, como una narrativa sencilla o una lista simple. El texto generalmente brinda apoyo al lector, mediante repetición de información, imágenes o símbolos conocidos. Hay una cantidad mínima de información que com- pite. En las tareas que requieren interpretación, el lector puede necesitar hacer conexiones simples informaciones adyacentes', 0, 1),
(2, '1b', 'Las tareas en este nivel requieren que el lector localice una o más in- formaciones presentadas de manera explícita, para reconocer el tema principal o la intención del autor en un texto de tema conocido o que haga una conexión simple entre la información del texto y el conocimiento co- tidiano común. Generalmente la información se destaca en el texto y hay poca o ninguna información que compite. El lector es dirigido explícita- mente para que considere factores relevantes en la tarea y en el texto.', 335, 1),
(3, '2', 'Algunas tareas en este nivel requieren que el lector localice una o más informaciones que deben ser inferidas y deben cumplir con diversas condiciones. Otras implican reconocer la idea principal de un texto, comprender relaciones o construir significados dentro de una parte limitada del texto cuando la información no destaca y el lector debe hacer inferencias de bajo nivel. Las tareas en este nivel pueden involucrar comparaciones o contrastaciones basadas en una sola característica del texto. Las tareas típicas de reflexionar en este nivel requieren que los lectores hagan una comparación o diversas conexiones entre el texto y conocimiento externo al texto, recurriendo a la experiencia y actitudes personales.', 407, 1),
(4, '3', 'Las tareas en este nivel requieren que el lector localice diversa información que debe cumplir con múltiples condiciones y en algunos casos que reconozca la relación entre la información. Las tareas de interpretación requieren que el lector integre distintas partes del texto para identificar la idea principal, comprender una relación o construir el significado de una palabra o una frase. Ellos deben tener en cuenta muchas características para comparar, contrastar o categorizar. A menudo, la información requerida no destaca o hay mucha información que compite; o existen otros obstáculos en el texto, como ideas contrarias a lo que se espera o formuladas como negaciones. Las tareas de reflexión en este nivel pueden requerir establecer conexiones, comparaciones y explicaciones, o requerir que el lector evalúe una característica del texto. Algunas tareas de reflexionar requieren de los lectores una comprensión exacta de textos relacionados con conocimientos que son familiares o cotidianos. Otras tareas no demandan una comprensión detallada, pero sí que el lector use conocimientos menos comunes.', 480, 1),
(5, '4', 'Las tareas en este nivel que requieren obtener información demandan al lector localizar y organizar información de difícil acceso. Algunas tareas en este nivel requieren interpretar sutilezas del lenguaje de una sección del texto, teniendo en cuenta el texto como un todo. Otras tareas interpretativas requieren\r\ncomprender y aplicar categorías en\r\nun contexto desconocido. Las tareas de reflexionar requieren que los lectores usen conocimiento formal o informal para elaborar hipótesis o realizar una evaluación crítica de un texto. Los lectores deben demostrar una comprensión exacta de textos largos y complejos cuyo contenido o forma puede no ser familiar.', 553, 1),
(6, '5', 'Las tareas en este nivel que requieren obtener información demandan al lector localizar y organizar diversa información de muy difícil acceso, infiriendo cuál información es relevante. Las tareas de reflexión demandan que el lector recurra a conocimientos específicos, para realizar una evaluación crítica o elaborar hipótesis. Tanto las tareas de interpretación como las de reflexión requieren una comprensión global y detallada de un texto cuyo contenido o forma no es familiar. Para todos los aspectos de lectura, las tareas en este nivel implican manejar conceptos que pueden ser contrarios a las expectativas', 626, 1),
(7, '6', 'Las tareas en este nivel requieren que el lector haga inferencias múltiples, comparaciones y contrastaciones que sean detalladas y precisas. Requieren la demostración de una comprensión completa y detallada de uno o más textos y pueden requerir la integración de información de más de un texto. Las tareas pueden requerir que el lector trabaje con ideas que no son familiares para él, con información destacada que compite, y que genere categorías abstractas de interpretación. Las tareas de reflexión y evaluación pueden requerir que el lector, a partir de un texto complejo sobre un tema que no le es familiar, elabore hipótesis o haga una evaluación crítica, teniendo en cuenta diversos criterios o perspectivas, y aplicando una interpretación sofisticada que vaya más allá del texto. Una característica que destaca en las tareas de acceder y obtener en este nivel es la precisión de análisis y la atención a detalles no destacados en los textos.', 698, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nivel_estudiante`
--

CREATE TABLE `nivel_estudiante` (
  `id` int(11) NOT NULL,
  `estudiante` int(11) DEFAULT NULL,
  `competencia` int(11) DEFAULT NULL,
  `nivel` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `a` varchar(200) CHARACTER SET utf8 NOT NULL,
  `b` varchar(200) CHARACTER SET utf8 NOT NULL,
  `c` varchar(200) CHARACTER SET utf8 NOT NULL,
  `d` varchar(200) CHARACTER SET utf8 NOT NULL,
  `puntaje` int(11) NOT NULL,
  `correcta` enum('a','b','c','d') CHARACTER SET utf8 NOT NULL,
  `tarea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `a`, `b`, `c`, `d`, `puntaje`, `correcta`, `tarea`) VALUES
(5, '¿Cuál es la relación entre "El camino del futuro" y "Un desastre que viene"?', 'Usan argumentos diferentes para llegar a la misma conclusión general.', 'Están escritos en el mismo estilo, pero tratan de temas totalmente diferentes.', 'Expresan el mismo punto de vista general, pero llegan a conclusiones diferentes.', 'Expresan puntos de vista diferentes sobre el mismo tema.', 537, 'd', 2),
(6, '¿Qué tipo de trabajo es difícil realizar a distancia?', 'Construcción. Por que no se puede hacer lejos del sitio de la obra', 'Cavar zanjas, por que es difícil', 'Necesidad de estar allí', 'Gerente, igual nadie se da cuenta si estas ahí o no', 514, 'a', 2),
(7, '¿Qué estaban haciendo los personajes de la obra inmediatamente antes de que subiera el telón?', 'Acababan de cenar y de tomar champaña.', 'Conversan en voz alta detrás de la puerta', 'Se prepararon para salir al escenario', 'Hablando de teatro.', 730, 'a', 3),
(8, '“Es una eternidad, a veces pasa hasta un cuarto de hora...” (líneas 34-35) Según Turai, ¿por qué un cuarto de hora es “una eternidad”?', 'Es mucho tiempo para esperar que el público se quede quieto en un teatro lleno.', 'Parece que pasarán años antes de que, al principio de una obra, se aclare la situación.', 'Siempre parece que le toma mucho tiempo al dramaturgo escribir el principio de una obra.', 'Parece que el tiempo avanza lentamente cuando sucede un acontecimiento importante en una obra.', 474, 'b', 3),
(9, 'En general, ¿qué está haciendo el dramaturgo Molnár en este extracto?', 'Está mostrando la forma en que cada personaje resolverá sus propios problemas', 'Está haciendo que sus personajes demuestren cómo es una eternidad en una obra de teatro', 'Está dando un ejemplo de una típica y tradicional escena inicial de una obra de teatro.', 'Está utilizando a los personajes para que representen uno de sus propios problemas creativos', 556, 'd', 3),
(10, 'El texto dice: “Los instrumentos para sacar la sangre están esterilizados y se usan una sola vez …” ¿Por qué se incluye esta información en el texto?', 'Para enfatizar que la donación de sangre es esencial.', 'Para asegurar que la donación de sangre es segura.', 'Para explicar qué uso se le da a la sangre.', 'Para dar detalles sobre los análisis y controles.', 368, 'b', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `numeral` varchar(10) CHARACTER SET utf8 NOT NULL,
  `pregunta` int(11) DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `estudiante` int(11) DEFAULT NULL,
  `pregunta` int(11) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tareas`
--

CREATE TABLE `tareas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `texto` text CHARACTER SET utf8,
  `competencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tareas`
--

INSERT INTO `tareas` (`id`, `titulo`, `texto`, `competencia`) VALUES
(2, 'Trabajo a distancia', '<p lang="es-ES" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt"><b>El\r\ncamino del futuro</b></font></font></font></p>\r\n<p lang="es-ES" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt">Imagínate\r\nlo maravilloso que serí­a trabajar a distancia*, desplazándote\r\na través de la carretera electrónica con todo tu trabajo hecho en\r\nun computador o por teléfono! Ya no tendrías que viajar en buses o\r\ntrenes llenos de gente o pasar horas y horas trasladándote desde y\r\nhacia el trabajo. Podrías trabajar cuando lo desees; Sólo piensa en\r\ntodas las oportunidades de trabajo que tendrías!</font></font></font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="right" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt">Mariana</font></font></font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt"><b>Un\r\ndesastre que viene</b></font></font></font></p>\r\n<p lang="es-ES" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt">Reducir\r\nlas horas de traslado y reducir el consumo de energía que ello\r\nimplica es obviamente una buena idea. Pero dicho objetivo debería\r\nlograrse mejorando el sistema de transporte público o procurando que\r\nlos lugares de trabajo estén ubicados cerca de donde vive la gente.\r\nLa ambiciosa idea de que el trabajo a distancia debería ser parte de\r\nla vida de toda la gente sólo lograrí­a que las personas se\r\nvolvieran cada vez más ensimismadas. ¿Realmente queremos que\r\nnuestro sentido de ser parte de una comunidad se deteriore aún más?</font></font></font></p>\r\n<p lang="es-ES" align="right" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="right" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt">Ricardo</font></font></font></p>\r\n<p lang="es-ES" style="margin-bottom: 0in; line-height: 100%;">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%;">\r\n<font color="#000000"><font face="Arial, sans-serif"><font style="font-size: 11pt">*"Trabajo\r\na distancia" es un concepto atribuido a Jack Nilles, a\r\nprincipios de los años 70 para describir la situación de los\r\nempleados que trabajan en un computador lejos de la oficina central\r\n(por ejemplo, desde casa) y transmiten datos o documentos hacia la\r\noficina central a través de las líneas telefónicas</font></font></font></p>', 1),
(3, 'Lo que importa es la obra', '<p lang="es-ES"><i>Se desarrolla en un castillo junto a la playa en\r\nItalia</i></p>\r\n<p lang="es-ES"><b>Primer acto</b></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Un\r\ncuarto de huéspedes ornamentado en un precioso castillo a la\r\norilla del mar. Puertas a la derecha y a la izquierda. Sala de estar\r\na la mitad del escenario: sofá, mesa y dos sillones. Grandes\r\nventanas en la parte posterior. Noche estrellada. El escenario está\r\noscuro. Cuando sube el telón, se oye que unos hombres conversan en\r\nvoz alta detrás de la puerta, a la izquierda. La puerta se abre y\r\nentran tres señores de esmoquin. Uno de ellos enciende la luz de\r\ninmediato. Caminan al centro en silencio y se paran alrededor de la\r\nmesa. Se sientan a la vez, Gál en el sillón de la izquierda, Turai\r\nen el que está a la derecha y Ádám en el sofá, en medio. Se hace\r\nun silencio muy largo, casi incómodo. Se\r\nestiran cómodamente. Silencio. Y luego:</font></font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">¿Por\r\nqué estás tan pensativo?</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">TURAI</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Estoy\r\npensando en lo difícil que es empezar una obra. Presentar a todos\r\nlos personajes principales al principio, cuando todo comienza.</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">ÁDÁM</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Supongo\r\nque debe de ser difícil.</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">TURAI</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Lo\r\nes -endiabladamente difícil. La obra comienza. El público se calla.\r\nLos actores entran en el escenario y el tormento comienza. Es una\r\neternidad, a veces pasa hasta un cuarto de hora antes de que el\r\npúblico descubra quién es quién y qué están por hacer. </font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">¡Qué\r\ncerebro tan peculiar tienes! ¿No puedes olvidarte de tu profesión\r\nni por un solo momento?</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">TURAI</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">No\r\npuedo hacer eso. </font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">No\r\npasa ni media hora sin que hables de teatro, de actores, de obras.\r\nHay otras cosas en el mundo. </font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">TURAI</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">No,\r\nno las hay. Soy un dramaturgo. Ésa es mi maldición.</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">No\r\ndebes convertirte en un esclavo de tu profesión. </font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">TURAI</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Si\r\nno la dominas, tú eres su esclavo. No hay término medio. Créeme\r\nque no es broma comenzar bien una obra. Es uno de los problemas más\r\narduos de la técnica teatral. Presentar a tus personajes\r\nrápidamente. Veamos esta escena de nosotros tres aquí. Tres señores\r\nen traje de esmoquin. Digamos que entran no en este cuarto en este\r\ncastillo señorial, sino más bien en un escenario, justo cuando\r\nempieza una obra. Tendrían que hablar sobre una gran cantidad de\r\ntemas poco interesantes hasta que saliera a la luz quiénes somos.\r\n¿No sería mucho más fácil empezar todo esto parándonos y\r\npresentándonos? Se para . Buenas noches. Nosotros tres somos\r\ninvitados en este castillo. Acabamos de llegar del comedor donde\r\ntuvimos una cena excelente y nos bebimos dos botellas de champaña.\r\nMe llamo Sándor Turai, soy dramaturgo, he estado escribiendo obras\r\nde teatro durante treinta años, ésa es mi profesión. Punto aparte.\r\nTu turno. </font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Se\r\npara . Me llamo Gál, también soy dramaturgo. También escribo obras\r\nde teatro, todas en colaboración con este caballero aquí presente.\r\nSomos un dúo de famosos dramaturgos. Todos los programas de teatro\r\nde buenas comedias y operetas dicen: escrita por Gál y Turai.\r\nEvidentemente, ésta también es mi profesión.</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">GÁL\r\ny TURAI</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Juntos.\r\nY este muchacho …</font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">ÁDÁM</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif">Se\r\npara. Este muchacho, si me lo permiten, es Albert Ádám, compositor\r\nde veinticinco años. Escribí la música para estos señores, para\r\nsu última opereta. Éste es mi primer trabajo para el teatro. Estos\r\ndos ángeles de avanzada edad me han descubierto y ahora, con su\r\nayuda, me gustaría volverme famoso. Hicieron que me invitaran a este\r\ncastillo. Me mandaron hacer mi frac y mi traje de etiqueta. En otras\r\npalabras, por ahora soy pobre y desconocido. Además, soy huérfano y\r\nmi abuela me crió. Mi abuela ya murió. Estoy solo en este mundo. No\r\ntengo nombre ni dinero.</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">TURAI</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Pero\r\neres joven.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">GÁL</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Y\r\ntalentoso.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">ÁDÁM</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Y\r\nestoy enamorado de la solista.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">TURAI</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">No\r\ndebiste haber agregado eso. Todos en el público lo habrían deducido\r\nde todas formas. Todos se sientan.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">TURAI</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Ahora\r\nbien, ¿no sería ésta la forma más fácil de comenzar una obra?</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">GÁL</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Si\r\nse nos permitiera hacer esto, sería fácil escribir obras.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">TURAI</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Créanme\r\nque no es tan arduo. Sólo piensen en todo esto como … </font></font>\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">GÁL</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 11pt">Muy\r\nbien, muy bien, muy bien, no empiecen a hablar del teatro otra vez.\r\nEstoy harto. Hablaremos mañana, si ustedes quieren.</font></font></p>\r\n<p lang="es-ES" align="left" style="margin-bottom: 0in; line-height: 100%">\r\n<br>\r\n\r\n</p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n“<font face="Arial, sans-serif">Lo\r\nque importa es la obra” es el comienzo de una obra del dramaturgo\r\nhúngaro Ferenc Molnár.</font></p>\r\n<p lang="es-ES" align="justify" style="margin-bottom: 0in; line-height: 100%">\r\n<font face="Arial, sans-serif"><font style="font-size: 10pt">Usa\r\ninformación de “Lo que importa es la obra” de las páginas\r\nanteriores para responder las siguientes preguntas. (Fíjate que los\r\nnúmeros de línea facilitados en el margen del texto te </font><font style="font-size: 10pt">ayudarán\r\na localizar los fragmentos a los que se hace referencia en las\r\npreguntas).</font></font></p>', 1),
(4, 'LA DONACIÓN DE SANGRE', '<div style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal; text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">La donación de sangre es esencial.&nbsp;</span></font></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">No existe ningún producto que pueda&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">sustituir la sangre humana completamente.</span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">La donación de sangre es, por lo tanto,&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">irremplazable y escencial para salvar vidas.</span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">En Francia, cada año, 500.000 pacientes se&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">benefician de una transfusión de sangre.</span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Los instrumentos para sacar la sangre&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">están esterilizados y se usan una sola vez&nbsp;</span><span style="font-size: 13.3333px; font-family: Arial, Verdana;">(jeringas, tubos, bolsas).&nbsp;</span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Donar sangre no representa ningún&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">riesgo.</span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px; font-weight: bold;">Donación de sangre:</span></font></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Es la forma de donación más conocida y toma 45 minutos&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">a 1 hora.</span></div><div style="text-align: justify;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Se extrae una bolsa de 450 ml, además de algunas pequeñas muestras&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">sobre las cuales se harán análisis y controles.</span></div><div style="text-align: justify;"><span style="font-size: 13.3333px; font-family: Arial, Verdana;"><br></span></div><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">- Un hombre puede donar sangre cinco veces al año y una mujer tres&nbsp;</span></font><span style="font-size: 13.3333px; font-family: Arial, Verdana;">veces.</span></div><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">- Los donantes pueden tener entre 18 y 65 años de edad.</span></font></div><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div><div style="text-align: justify;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;">Debe haber un intervalo de 8 semanas entre cada donación.</span></font></div></div><div style="text-align: justify; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: normal;"><font face="Arial, Verdana"><span style="font-size: 13.3333px;"><br></span></font></div><div><span style="font-family: Arial, Verdana; font-size: 13.3333px;"><div style="text-align: justify;">El texto “Anuncio sobre la donación de sangre” , ha sido tomado de un sitio web francés.</div><div style="text-align: justify;">Úsalo para responder las siguientes preguntas.</div></span></div>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` enum('Profesor','Estudiante') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `roll`) VALUES
(2, 'lfquiroga04@ucatolica.edu.co', '123456', 'Estudiante'),
(3, 'ehurtado@ucatolica.edu.co', '123456', 'Estudiante');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compentencia` (`compentencia`);

--
-- Indexes for table `nivel_estudiante`
--
ALTER TABLE `nivel_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante` (`estudiante`),
  ADD KEY `competencia` (`competencia`);

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarea` (`tarea`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta` (`pregunta`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante` (`estudiante`),
  ADD KEY `pregunta` (`pregunta`),
  ADD KEY `respuesta` (`respuesta`);

--
-- Indexes for table `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compentencia` (`competencia`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competencias`
--
ALTER TABLE `competencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nivel_estudiante`
--
ALTER TABLE `nivel_estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `niveles`
--
ALTER TABLE `niveles`
  ADD CONSTRAINT `niveles_ibfk_1` FOREIGN KEY (`compentencia`) REFERENCES `competencias` (`id`);

--
-- Constraints for table `nivel_estudiante`
--
ALTER TABLE `nivel_estudiante`
  ADD CONSTRAINT `nivel_estudiante_ibfk_1` FOREIGN KEY (`estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `nivel_estudiante_ibfk_2` FOREIGN KEY (`competencia`) REFERENCES `competencias` (`id`);

--
-- Constraints for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`tarea`) REFERENCES `tareas` (`id`);

--
-- Constraints for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`pregunta`) REFERENCES `preguntas` (`id`);

--
-- Constraints for table `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `resultados_ibfk_2` FOREIGN KEY (`pregunta`) REFERENCES `preguntas` (`id`),
  ADD CONSTRAINT `resultados_ibfk_3` FOREIGN KEY (`respuesta`) REFERENCES `respuestas` (`id`);

--
-- Constraints for table `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`competencia`) REFERENCES `competencias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-06-10 02:02:49 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 1971 (class 0 OID 16431)
-- Dependencies: 175 1977
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: condor
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE temas DISABLE TRIGGER ALL;

INSERT INTO temas (id_temas, nb_temas, descrip_temas) VALUES (2, 'haskjhskd                                                                                           ', 'asdjkahsjdhaskjhasdhaskdhakjdhkjsdhkjsdhkajsdhkjashdkjashdjkahsdjkahsdkjahsd
asjdksdhjkahsjdkahsdkahsdihjakdhajdhajsdhasdhjkhdk');
INSERT INTO temas (id_temas, nb_temas, descrip_temas) VALUES (1, 'Historia de PostgreSQL y su Evolución                                                               ', 'En este tema veremos lo relacionado a la historia de PostgreSQL y las diferentes
evoluciones que a medida del tiempo ha sufrido. Mostraremos porqué es uno de los
mejores manejadores de bases de datos. 

');
INSERT INTO temas (id_temas, nb_temas, descrip_temas) VALUES (3, 'guia debian                                                                                         ', 'Guía de debían 
En este tutorial aprenderemos para que sirve la  y los principales comandos, aunque no todos, que podemos ejecutar con ella, los comandos descritos aquí son iguales para cualquier distribución GNU/Linux a menos que se especifique lo , cabe destacar que algunos de estos comandos se pueden realizar mediante una aplicación gráfica. 

La terminal 

La consola de comandos comunmente llamada terminal siempre será tu mejor amiga cuando uses GNU/Linux, es por ello que es importante  cómo ejecutarla: 

* Gnome: Menú Aplicaciones/Accesorios/Terminal. 
* Xfce:Menú Aplicaciones/Accesorios/Terminal. 
* Kde: KickOff /Aplicaciones/Sistema/Terminal. 

Estas son las terminales que incluyen los principales entornos de escritorio de GNU/Linux, sin embargo no son las unicas existentes. 

Tips 

Esas cadenas de texto que pueden aparecer en las peores pesadillas de algunos usuarios se convertirán en tus mejores amigas a partir de la lectura comprensión de este tutorial, unos buenos tips sobre estos comandos nunca vienen mal: 

* Los "modificadores" de los comandos pueden ser agrupados en una sóla cadena de manera que sólo se escriba el comando más las opciones correspondientes, de está manera se ahorra tiempo y el teclado se desgasta menos ;-) 
* Todos los comandos listados aquí uncluyen un manual (En Inglés) al cual se puede acceder mediante el comando "man", la sintaxis es simple: man + nombre_comando 
* Se puede hacer uso de la tecla "Tabulador" para completar un comando, por ejemplo al navegar entre directorios, si yo escribo cd /ho y pulso tabulador automaticamente la linea se "auto-completara" y quedará cómo cd /home/ en caso de no autocompletarse podemos pulsar tabulador 2 veces para que son muestren las posibles opciones de autocompletado. 
* Para copiar y pegar se puede hacer uso de dos combinaciones de teclas, Ctrl + Shift + C para copiar y Ctrl + Shift + V para pegar. 

Usuarios 

Quiza en diversos tutoriales encontrados por la red o inclusive dentro de SceneBeta han leido acerca del usuario root, y quiza se preguntarán, ¿Que es este usuario? y ¿Que diferencia tiene con mi usuario?, bueno daremos una pequeña introducción a esto. 

El usuario Root es un SuperAdministrador, tiene todos los privilegios y puede hacer cualquier cosa sobre el sistema, sin embargo tal y cómo dice aquella pelicula, "Con grandes poderes vienen grandes responsabilidades", debido a la cantidad de poder que posee sobre nuestro ordenador no debemos trabajar habitualmente logueados cómo el, es por eso que creamos un usuario durante la instalación de nuestra distro. 

Se sabe que se está trabajando cómo root debido a que comunmente se muestra el simbolo "#" en la terminal. 

El usuario "normal" o el creado durante el proceso de instalación no es más que un usuario común y corriente el cuál sólo tiene poderes sobre sus propios documentos, a diferencia de el usuario root, este no tienes poderes de administración sobre el sistema, este tipo de usuario es el que por lo general es usado habitualmente al trabajar con GNU/Linux. 

Se sabe que se está trabajando cómo usuario normal ya que comunmente se muestra el simbolo "$" en la terminal. 

Ejemplo: 
#Trabajando cómo root: 
bash-3.2# 

#Trabajando cómo usuario normal: 
bash-3.2$


Una vez clarificado este punto, estarán conscientes que al encontrar el simbolo "$" en, por ejemplo un tutorial, se trata de decir que el comando debe ejecutarse cómo usuario normal, común y corriente. Lo mismo aplica para el simbolo "#". 
Ver archivos y directorios 

El comando "ls" desplegará los nombres de todos los archivos y carpetas que se encuentran en el directorio que navegamos actualmente o listar archivos archivos y carpetas de un directorio dado. 

1. Mostrar los archivos del directorio actual: $ ls 
2. Mostrar archivos de un directorio especifico: $ ls /directorio_a_mostrar/ 

Ambos comandos pueden ser modificados para mostrar cosas especificas, las opciones más usadas son: 

1. Mostrar todos los archivos y carpetas incluyendo ocultos: $ ls -a 
2. Mostrar las propiedades de los archivos: $ ls -l 
3. Mostrar ordenando por fecha de modificación: $ ls -t 
4. Mostrar en una sóla línea y separados por comas: $ ls -m 

Ejemplo: 
#Listando archivos y directorios de la carpeta /home/ 
usuario@nombrePC:~$ ls /home/ -a 
.Trash-0 .directory Recycled lost+found usuario 


Cambiar de directorio 

Para cambiar de directorio al navegar entre nuestros archivos por medio de la terminal se puede hacer uso del comando "cd". El cambio de directorio sólo se llevará a cabo si el directorio especificado existe, si no es así, nos quedaremos en el mismo directorio desde el que se invoco el comando. 

Si el cambio de directorio se ha dado con exito, el nombre del directorio al cual accedimos se mostrará en la terminal. 

Algunas de las opciones disponibles para el comando cd son: 

* Ir al directorio anterior: cd - 
* Ir al directorio superior: cd .. 
* Ir a la carpeta "home": cd ~ 

Ejemplo: 
#Entrar a un directorio 
usuario@nombrePC:~$ cd NombreDirectorio 


Crear directorios 

Para crear directorios en GNU/Linux, existe un comando simple a la par que útil, se trata de "mkdir" no tiene mayor ciencia que el escribir "mkdir" más el nombre de la carpeta a crear. 

Ejemplo: 
#Crear un directorio 
usuario@nombrePC:~$ mkdir /NombreDirectorio 


Borrar directorios y archivos 

Si se quiere borrar un directorio en Linux, se puede hacer uso del comando "rm" la sintaxis es simple, "rm" más el nombre del fichero/carpeta a eliminar. 

* Para un borrado recuersivo se puede hacer uso del modificador "-r" 
* Para un borrado forzado sin pedir autorización para cada archivo, se hace uso del modificador "-f" 
* Para pedir confirmación por cada archivo borrado se usa el modificador "-i" 

Ejemplo: 
#Borrar una carpeta 
usuario@nombrePC:~$ rm /NombreDirectorio 

#Borrar el contenido de una carpeta 
usuario@nombrePC:~$ rm -r /NombreDirectorio 

#Borrar un archivo especifico 
usuario@nombrePC:~$ rm -r /NombreDirectorio/NombreArchivo.extension 

#EL SIGUIENTE COMANDO FORMATEA LA RAIZ DEL SISTEMA, USALO BAJO SU RESPONSABILIDAD 
usuario@nombrePC:~$ rm -rf /


Copiar directorios y archivos 

Para copiar directorios y archivos se puede usar el comando "cp", este comando viene de la palabra "copy" en Inglés que significa "copiar" 

Ejemplo: 

#Realizar la copia de un archivo y dejar la copia en el mismo directorio que el original. 
usuario@nombrePC:~$ cp ArchivoOriginal ArchivoCopia 
#Para realizar lo mismo pero con directorios y de forma recursiva 
usuario@nombrePC:~$ cp -r CarpetaOriginal/ CarpetaCopia/ 

#Se puede especificar que la copia se ponga en otro lugar distinto al de origen 
usuario@nombrePC:~$ cp ArchivoOriginal /rutacopia/ArchivoCopia 

#Obviamente se puede hacer lo mismo con carpetas 
usuario@nombrePC:~$ cp -r CarpetaOriginal /rutacopia/CarpetaCopia


Mover/Renombrar archivos y directorios 

Mover archivos y directorios bajo terminal equivale a cortar y pegar en modo gráfico, renombrar archivos y directorios equivale a dar click en "Cambiar nombre" en entorno gráfico, nosotros podemos lograr estas dos cosas con un sólo comando, para lograrlo, utilizaremos el comando "mv" este comando no tiene mayor ciencia que teclear "mv" origen destino, funciona tanto con archivos cómo con carpetas. 

Ejemplo: 
#Mover archivo a un directorio especifico 
usuario@nombrePC:~$ mv ArchivoOrigen /LugarDeDestino/ArchivoDestino 

#Renombrar una carpeta y dejarla en el mismo lugar 
usuario@nombrePC:~$ mv NombreOriginal NombreNuevo


Buscar archivos y directorio 

Si deseamos buscar algo, ya sea archivo o directorio, podemos recurrir al comando "find", este comando tiene diversos modificadores, por lo general la busqueda mediante terminal es más rápida y consume menos recursos que la búsqueda mediante una aplicación gráfica, a continuación se explican 2 opciones del comando: 

1. Buscar por nombre: find /lugar_busqueda/ -name nombre_archivo 
2. Buscar por tamaño: find /lugar_busqueda/ -size tamañokb 

Ejemplo: 
#Busqueda por nombre 
usuario@nombrePC:~$ find /home/usuario/ -name Archivo.tar.gz 

#Busqueda por tamaño 
usuario@nombrePC:~$ find /home/usuario/ -size +500 

#NOTA: Lo que hace el último ejemplo es buscar archivos de más de 500 KB


Limpiar la terminal 

Después de usar un buen tiempo la terminal, es probable que nos encontremos confundidos de tanto texto que hay y que no necestiamos, para limpiar la ventana podemos hacer uso del comando "clear", se trata de un comando sencillo a la par que útil 

Ejemplo: 
#Limpiar la terminal 
usuario@nombrePC:~$ clear


Administrador temporal 

Para realizar tareas administrativas del sistema contamos con varias opciones, "sudo" es una de las más usadas e incluida por defecto en distintas distros, al usar sudo se entra en un estado de administrador temporal, donde cada comando que pongamos lo ejecutaremos cómo administrador, sin embargo, pasado un tiempo, perderemos este poder y deberemos activarlo de nuevo. 

Ejemplo: 

#Eliminar un archivo de respaldo del xorg.conf 
usuario@nombrePC:~$ sudo vim 


Cambiar contraseña 

Para cambiar la contraseña de nuestro usuario podemos hacer uso del comando "passwd", este comando nos pedirá la contraseña actual y la nueva contraseña que queramos darle a nuestra cuenta. 

Ejemplo: 
#Cambiando contraseña 
usuario@nombrePC:~$ passwd


Nota: Al teclear la contraseña no se produce nada por pantalla, es decir, no aparecen asteriscos (*) o algún otro simbolo, sin embargo si esta recibiendo lo que tecleamos. 

Loguearse 

En ocasiones necesitamos loguearnos como si fueramos otra persona, el comando "su" nos servirá para esa tarea, puede usarse tanto para loguearse como un usuario normal así como para loguearse como super usuario. 

El super usuario como ya se ha comentado antes tiene todos los permisos sobre el sistema, cuando vamos a hacer muchos cambios es conveniente loguearnos como el en lugar de utilzar sudo, ya que no necesitaremos teclear continuamente el comando para realizar una acción cómo administrador, si no que simplemente se loguea cómo el y automaticamente gana todos los permisos pudiendo trabajar cómo si de un usuario normal se tratase. 

Ejemplo: 
#Login como Invitado 
usuario@nombrePC:~$ su invitado 

#Login cómo Super Usuario 
usuario@nombrePC:~$ su


Nota: Se debe tener especial cuidado al trabajar como super usuario ya que puede hacer cualquier cosa sobre el sistema. 

Trasteando con la terminal 

Una vez visto algunos de los comandos más usados es una buena idea jugar un rato con la terminal. Esta parte es opcional y únicamente sirve para cojer un poco de soltura. 
#Abre la terminal como se indicó al comienzo del tutorial 

usuario@nombrePC:~$ ls 
#Miramos los directorios y archivos que hay en la ruta actual 
... Desktop(Escritorio) ... 

usuario@nombrePC:~$ cd Desktop(Escritorio) 
#Entramos al directorio Escritorio o Desktop según nos haya mostrado el comando ls 

usuario@nombrePC:~/Desktop(Escritorio)$ mkdir PRUEBA 
#Creamos un directorio nuevo llamado PRUEBA en el escritorio 

usuario@nombrePC:~/Desktop(Escritorio)$ cd prueba 
#Accedemos al nuevo directorio 

bash: cd: prueba: No existe el fichero o el directorio 
#Nos informa que el directorio que deseamos no existe 

usuario@nombrePC:~/Desktop(Escritorio)$ dir 
#Utilizamos este comando para ver como se llama el directorio que creamos anteriormente (Se puede usar igualmente el comando ls) 
... PRUEBA ... 

usuario@nombrePC:~/Desktop(Escritorio)$ cd PRUEBA 
#Accedemos al directorio escribiendo su nombre tal y como nos ha mostrado el comando anterior 

usuario@nombrePC:~/Desktop(Escritorio)/PRUEBA$ cd .. 
#Para ir a un nivel superior, es decir, salir del directorio 

usuario@nombrePC:~/Desktop(Escritorio)$ cp -r PRUEBA/ PRUEBA1/ 
#Copiamos el directorio a PRUEBA1 

usuario@nombrePC:~/Desktop(Escritorio)$ ls 
... PRUEBA PRUEBA1 ... 

usuario@nombrePC:~/Desktop(Escritorio)$ mv PRUEBA1 PRUEBA 
#Movemos el directorio PRUEBA1 a dentro del direcotrio PRUEBA 

usuario@nombrePC:~/Desktop(Escritorio)$ rm -r PRUEBA 
#Eliminamos el directorio PRUEBA 

usuario@nombrePC:~/Desktop(Escritorio)$ cd ~ 
#Te dirige al directorio de tu usuario 

usuario@nombrePC:~$ clear 
#Te borra todo lo escrito de la terminal
');
INSERT INTO temas (id_temas, nb_temas, descrip_temas) VALUES (4, 'manual de blender                                                                                   ', '¿Qué es Blender?
Blender es un programa que integra una serie de herramientas para la creación de un amplio
rango de contenidos 3D, con los beneficios añadidos de ser multiplataforma y tener un tamaño
de unos 5MB.
Destinado a artistas y profesionales de multimedia, Blender puede ser usado para crear
visualizaciones 3D, tanto imágenes estáticas como vídeos de alta calidad, mientras que la
incorporación de un motor de 3D en tiempo real permite la creación de contenido interactivo
que puede ser reproducido independientemente.
Originalmente desarrollado por la compañía ''Not a Number'' (NaN), Blender es ahora
desarrollado como ''Software Libre'', con el código fuente disponible bajo la licencia GNU
GPL.
Características principales:
• Paquete de creación totalmente integrado, ofreciendo un amplio rango de herramientas
    esenciales para la creación de contenido 3D, incluyendo modelado, mapeado uv,
    texturizado, rigging, weighting, animación, simulación de partículas y otros, scripting,
      renderizado, composición, post-producción y creación de juegos.
• Multiplataforma, con una interfaz unificada para todas las plataformas basada en
   OpenGL, listo para ser usado en todas las versiones de Windows (98, NT, 2000 y XP),
  Linux, OSX, FreeBSD, Irix y Sun, y otros sistemas operativos.
• Arquitectura 3D de alta calidad permitiendo un rápido y eficiente desarrollo.
• Canales de soporte gratuito vía http://www.blender3d.org .
• Una comunidad mundial de más de 250.000 usuarios.
• Tamaño pequeño de ejecutable para una fácil distribución.
Historia de Blender
En 1988, Ton Roosendaal co-fundó el estudio de animación Holandés NeoGeo. NeoGeo
rápidamente se convirtió en el estudio más grande de animación 3D en Holanda y en una de
las más destacadas casas de animación en Europa. NeoGeo creó producciones que fueron
premiadas (European Corporate Video Awards de 1993 y 1995) para grandes clientes
corporativos tales como la compañía multinacional de electrónica Philips. En NeoGeo, Ton
fue el responsable tanto de la dirección artística como del desarrollo interno del software.
Después de una cuidadosa deliberación, Ton decidió que la actual herramienta 3D utilizada en
el estudio de NeoGeo era demasiado vieja y voluminosa de mantener y actualizar y necesitaba
ser reescrita desde el principio. En 1995, esta reescritura comenzó y estaba destinado a
convertirse en el software de creación 3D que ahora conocemos como Blender. Mientras
-2-
NeoGeo continuaba refinando y mejorando Blender, Ton se dio cuenta que Blender podría ser
utilizado como una herramienta para otros artistas fuera del estudio NeoGeo.
En 1998, Ton decidió crear una nueva compañía llamada Not a Number (NaN) derivada de
NeoGeo para fomentar el mercado y desarrollar Blender. En la base de NaN, estaba el deseo
de crear y distribuir gratuitamente una suite de creación 3D compacta y multiplataforma. En
ese momento, esto fue un concepto revolucionario ya que la mayoría de los programas
comerciales de modelado costaban miles de dólares. NaN esperaba conseguir una herramienta
de modelado y animación de un nivel profesional al alcance del público en general. El modelo
de negocio de NaN consistía en proporcionar productos comerciales y servicios alrededor de
Blender. En 1999, NaN asistió a su primera conferencia en el Siggraph en un esfuerzo aún
mayor para promocionar Blender. La primera convención del Siggraph para Blender en 1999
fue un auténtico éxito y provocó un enorme interés tanto de la prensa como de los asistentes a
la convención. ¡Blender fue un gran éxito y se confirmó su tremendo potencial!
En alas del gran éxito del Siggraph, a principios del año 2000, NaN consiguió una
financiación de 4,5 millones de euros procedente de unos inversores. Este gran aporte de
dinero permitió a NaN expander rápidamente sus operaciones. Pronto NaN alardeó de tener
más de 50 empleados trabajando alrededor del mundo intentando mejorar y promocionar
Blender. En el verano del 2000, Blender 2.0 fue publicado. Esta versión de Blender integraba
un motor de juegos a la suite 3D. Al final del 2000, el número de usuarios registrados en el
sitio web de NaN sobrepasó los 250.000.
Desafortunadamente, las ambiciones y oportunidades de NaN no coincidieron con las
capacidades de la compañía ni con la realidad del mercado de la época. Este
sobredimensionamiento de la empresa condujo a una reestructuración creando una compañia
(NaN) mas pequeña y con nuevos fondos procedentes de los inversores. Seis meses mas tarde,
el primer producto comercial de NaN, Blender Publisher fue lanzado. Este producto fue
dirigido al emergente mercado de medios interactivos en 3D basados en entornos web.
Debido a las decepcionantes ventas y al continuo clima de dificultades económicas, los
nuevos inversores decidieron dar por terminadas las actividades de NaN. Esto también incluía
parar el desarrollo de Blender. Si bien existían claramente defectos en la actual versión de
Blender, con una arquitectura interna del software compleja, características inacabadas y una
IGU no muy común, la magnífica ayuda de la comunidad y los clientes que habían comprado
Blender Publisher en el pasado provocó que Ton no pudiera permitir que Blender
desapareciera en el olvido. Como relanzar una nueva compañía con un equipo suficientemente
grande de desarrolladores no era factible, en marzo de 2002, Ton Roosendaal fundó la
organización no lucrativa Blender Foundation (Fundación Blender).
El primer objetivo de la Fundación Blender fue encontrar una manera de continuar el
desarrollo y la promoción de Blender como un proyecto de código abierto basado en la
comunidad de usuarios. En julio de 2002, Ton logró obtener de los inversores de NaN un "sí"
para que la Fundación Blender llevara a cabo su plan de que Blender fuera código abierto. La
campaña de "Liberad a Blender" tenía que obtener 100.000 EUR para que la Fundación
pudiese comprar los derechos del código fuente y los de propiedad intelectual de Blender a los
inversores de NaN y, posteriormente, liberar Blender a la comunidad de código abierto. Con
un entusiasta grupo de voluntarios, entre los que se encontraban varios ex-empleados de NaN,
fue lanzada la campaña de "Liberad a Blender". Para el deleite y sorpresa de todo el mundo, la
campaña alcanzó el objetivo de 100.000 EUR en tan sólo 7 semanas. El domingo 13 de
octubre de 2002, Blender fue liberado al mundo bajo los términos de la Licencia Pública
-3-
General de GNU (GPL). El desarrollo de Blender continúa hasta nuestros días conducido por
un equipo de valientes y dedicados voluntarios procedentes de diversas partes del mundo y
liderados por el creador de Blender, Ton Roosendaal.
Historia de Blender y hoja de ruta
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
•
1.00 - enero de 1995 - Desarrollo de Blender en el estudio de animación NeoGeo.
1.23 - enero de 1998 - Versión para SGI (IrisGL) publicada en la web.
1.30 - abril de 1998 - Versión para Linux y FreeBSD, se porta a OpenGL y a X.
1.3x - junio de 1998 - Creación de NaN.
1.4x - septiembre de 1998 - Versión para Sun y Linux Alpha publicada.
1.50 - noviembre de 1998 - Primer manual publicado.
1.60 - abril de 1999 - C-key (nuevas caracteristicas necesitan ser desbloqueadas, $95),
la version de Windows se libera.
1.6x - junio de 1999 - Versión para BeOS y PPC publicada.
1.80 - junio de 2000 - Fin de la C-key, Blender es totalmente gratuito de nuevo.
2.00 - agosto de 2000 - Motor en tiempo-real y reproductor interactivo.
2.10 - diciembre de 2000 - Nuevo motor, física y Python.
2.20 - agosto de 2001 - Sistema de animación de personajes.
2.21 - octubre de 2001 - Blender Publisher lanzado.
2.2x - diciembre de 2001 - Versión para Mac OSX publicada.
13 de octubre de 2002 - Blender se convierte en código abierto, primera Conferencia
de Blender.
2.25 - octubre de 2002 - Blender Publisher está de nuevo disponible gratuitamente.
Tuhopuu1 - octubre de 2002 - Se crea la rama experimental de Blender, un lugar de
pruebas para los programadores.
2.26 - febrero de 2003 - La primera versión de Blender siendo código abierto.
2.27 - mayo de 2003 - La segunda versión de Blender siendo código abierto.
2.28x - julio de 2003 - La primera de las series 2.28x.
2.30 - octubre de 2003 - En la segunda conferencia de Blender, la interfaz 2.3x es
presentada.
2.31 - diciembre de 2003 - Actualización a la interfaz de la versión 2.3x, ya que es
estable.
2.32 - enero de 2004 - Gran revisión de la capacidad del render interno.
2.33 - abril de 2004 - Oclusión Ambiental, nuevos procedimientos de Texturas, ¡el
motor de juego ha vuelto!.
2.34 - agosto de 2004 - Grandes mejoras: Interacciones de Partículas, mapeado LSCM
UV, integración funcional de YafRay, Pliegues compensados en Subdivisión de
Superficies, Sombreado de Inclinación (Ramp), OSA completo y muchas muchas más.
2.35 - noviembre de 2004 - Otra versión llena de mejoras: Object hooks, curve
deforms and curve tapers, particle duplicators y mucho más.
2.36 - febrero de 2005 - Versión más estable, más trabajo en la escena, pocas nuevas
mejoras, mapeado Normal y de Desplazamiento, principalmente.
2.37 - junio de 2005 - Un gran avance: herramientas de Transformación y controles,
Softbodies, Force fields, deflections, incremental Subdivision Surfaces, sombras
transparentes, y renderizado multihilo.
2.40 - diciembre de 2005 - Un mayor avance: reescritura del sistema de esqueletos,
teclas de formas, piel con partículas, fluidos y cuerpos rígidos.
2.41 - enero de 2006 - Principalmente añadidos en el Motor de juego y correcciones.
-4-
Sobre el Software Libre y la licencia GPL
Cuando uno escucha hablar sobre "software libre", la primera cosa que le viene a la mente es
"gratuito". Aunque esto es verdad en la mayoría de los casos, el término "software libre" tal
como es usado por la Fundación para el Software Libre (creadores del proyecto GNU y de la
Licencia Pública General GNU) significa "libre, como en libertad" más que "gratis, como en
cerveza gratis" (N. del T. En inglés tienen el problema de que la palabra "free" significa gratis
y libre, por eso al definir "free software" tienden a hacer distinción entre software gratuito y
software libre). Software libre es, en este sentido, aquel software que puedes usar, copiar,
modificar y distribuir sin ningún límite. Esto contrasta con la licencia de la mayoría de
paquetes de software comerciales, en donde se te permite usar el software en una sola
computadora pero no está permitido hacer copias y menos aún ver el código fuente. El
software libre da una increíble libertad al usuario. Como añadidura a todo esto, debido a que
el código fuente está disponible para todo el mundo, los fallos pueden ser detectados y
corregidos de una manera más eficiente y rápida.
Cuando un programa es licenciado bajo la Licencia Pública General GNU (la GPL):
•
•
•
•
Tienes el derecho de usar el programa para cualquier propósito.
Tienes el derecho de modificar el programa, y tener acceso al código fuente.
Tienes el derecho de copiar y distribuir el programa.
Tienes el derecho de mejorar el programa, y publicar tus propias versiones.
A cambio de esos derechos, también tienes algunas responsabilidades, que están diseñadas
para proteger tu libertad y la libertad de otros, por lo que si distribuyes un programa GPL:
•
•
•
•
Debes proporcionar una copia de la GPL con el programa, así el usuario es consciente
de los derechos que le otorga la licencia.
Debes incluir el código fuente o hacer que esté disponible gratuitamente.
Si modificas el código y distribuyes una versión modificada, dichas modificaciones
deben estar licenciadas bajo la GPL y tienes que facilitar el código fuente modificado.
(No puedes usar código GPL como parte de un programa propietario.)
No puedes licenciar el programa fuera de los términos de la licencia GPL. (No puedes
transformar un programa GPL en un producto propietario).
Para más información sobre la licencia GPL, visita el sitio web del Proyecto GNU. Para
referencia, una copia de la licencia pública general de GNU se incluye en el Manual de
Referencia.
Consiga ayuda - La comunidad de usuarios de Blender
Al estar Blender disponible de forma gratuita desde un principio, incluso cuando el código era
cerrado, ayudó mucho en su adopción. Una gran comunidad estable y activa de usuarios ha
estado creciendo alrededor de Blender desde el año 1998.
La comunidad mostró lo mejor de sí misma en el momento crucial de la liberación de
Blender, convirtiéndolo en código abierto bajo la licencia GNU GPL hacia finales del verano
del año 2002.
-5-
La comunidad está ahora dividida en dos sitios con muchas características compartidas:
•
•
La comunidad de desarrollo, centrada alrededor de la web de la Fundación Blender
http://www.blender.org. Aquí es donde están los proyectos de desarrollo, las listas de
funcionalidades y documentación, el repositorio CVS con las fuentes de Blender,
todas las fuentes de documentación y foros de discusión. Los desarrolladores de
Blender, los que hacen scripts de python, los documentadores, y cualquiera que trabaje
en el desarrollo de Blender, generalmente, puede ser encontrado aquí
La comunidad de usuarios, centrada alrededor de un sitio independiente
http://www.blenderartists.com. Aquí es donde los artistas, los creadores de juegos y
los aficionados a Blender se reúnen para mostrar sus creaciones, obteniendo críticas
para mejorarlas, y donde pueden pedir ayuda para obtener una mejor comprensión de
las funcionalidades de Blender. Algunos tutoriales de Blender y una base con el
conocimiento básico se pueden encontrar también aquí.
Estas dos páginas web no son los únicos recursos de Blender. La comunidad alrededor del
mundo ha creado una gran cantidad de sitios independientes, con diferentes idiomas o
especializadas en diferentes áreas. Una constante actualización de los recursos para Blender se
encuentra en cualquiera de los sitios mencionados anteriormente.
Para una crítica instantanea, hay tres canales de chat disponibles en irc.freenode.net. Puedes
unirte a la conversación con tu programa IRC favorito.
Los canales son #blenderchat para discusiones generales sobre Blender, #blenderqa para
preguntar sobre el uso de Blender, y #gameblender para discusiones sobre temas relacionados
con la creación de juegos con el motor de Blender. Para los desarrolladores, también existen
#blendercoders para preguntar y discutir temas de desarrollo, al igual que para cada reunión
de los Sábados a las ?; #blenderpython para discutir sobre el API de Python y el desarrollo de
scripts; #blenderwiki para preguntas relacionadas con la edición del wiki.
Instalando desde Binarios
Blender está disponible en la web de la de la Fundación (http://www.blender.org/) como
ejecutable y como código fuente. En la página principal busca la sección de Descargas
(''Downloads'').
De todas formas, para una correcta comprensión de este libro, es altamente recomendable
utilizar la versión incluida en el CDROM. Por lo tanto, cuando en el párrafo anterior
mencionábamos "sección de descargas", también asumiremos que puede conseguirse desde el
CDROM.
El ejecutable está disponible para 6 sistemas operativos:
•
•
•
•
•
•
Windows
Linux
MacOSX
FreeBSD
Irix
Solaris
-6-
Linux actualmente dispone de 4 opciones para las arquitecturas de Intel y PowerPC, con las
librerías enlazadas estática o dinamicamente.
La diferencia entre enlazado dinámico y estático es importante. El estático tiene la librería
OpenGL compilada en su interior. Esto hace que Blender corra en su sistema, sin utilizar la
aceleración por hardware de su tarjeta gráfica. Utilice la versión estática para comprobar si
Blender funciona cuando la versión dinámica falle. OpenGL se usa en Blender para todo el
dibujado, incluyendo menús y botones. Esta dependencia hace que la instalación, en tu
sistema, de la librería OpenGL sea necesaria. No todos los fabricantes de tarjetas gráficas 3D
dan soporte a OpenGL, especialmente para las tarjetas más baratas destinadas al mercado de
videojuegos.
Desde que los ''renders'' se hacen en Blender con el motor de renderizado utilizando la
memoria principal y el procesador de tu computadora, una tarjeta gráfica con aceleración por
hardware no supone ninguna diferencia en el tiempo de renderizado.
Windows
Instalación Rápida
Descargue el fichero blender-2.3#-windows.exe, donde 2.3# es el número de la versión, de la
sección de descargas del sitio web de Blender. Comience la instalación haciendo ''doble click''
sobre el fichero descargado. En este proceso se le harán varias preguntas, para las cuales las
respuestas que hay por defecto deberían bastar. Después que la instalación haya finalizado,
puede comenzar a usar Blender directamente, o bien, puede usar la entrada que se habrá
creado en el menú Inicio.
Instrucciones Detalladas
Descargue el fichero blender-2.3#-windows.exe de la sección de descargas del sitio web de
Blender. Elija descargarlo, seleccione un directorio y pulse "salvar" (Save). Entonces, con el
explorador, dirijase al directorio donde haya guardado el fichero y haga "doble-click" para
comenzar la instalación.
El primer diálogo le muestra la licencia de Blender. Si quiere que la instalación continué
tendrá que aceptarla. Después de aceptar la licencia, seleccione los componentes que desee
instalar (solo hay uno, Blender) y las acciones adicionales que quiera llevar a cabo. Hay tres:
Añadir un enlace directo al menú de Inicio, añadir un icono de Blender al escritorio y asociar
los archivos .blend con el programa Blender. Por defecto, todas las acciones están
seleccionadas. Si no quiere que se ejecute alguna de esas acciones simplemente
deseleccionela. Cuando esté hecho, simplemente presione en siguiente (Next).
Seleccione un lugar para instalar los archivos (el lugar que viene por defecto debería valer), y
presione en siguiente (Next) para instalar Blender. Presione cerrar (Close) cuando la
instalación haya terminado.
Por último, se le preguntará si quiere que el programa de instalación ejecute a continuación
Blender. Una vez que esté instalado Blender puede ejecutarse desde el menú de Inicio (una
entrada se ha creado por el programa de instalación con el nombre de "Blender Foundation")
o bien haciendo "doble-click" en un archivo de Blender (*.blend).
-7-
OSX
Instalación
Descargue el fichero blender-2.3#-darwin-6.6-powerpc.dmg de la sección de descargas del
sitio web de Blender. Descomprimalo haciendo "doble-click" en el archivo. Esto abrirá un
directorio con varios ficheros.
Desde que Blender usa OpenGL para dibujar su interfaz, y MacOS X también lo utiliza para
dibujar su escritorio, necesita verificar primero que dispone de suficiente memoria VRAM en
su sistema. Por debajo de 8 MB de memoria VRAM Blender no funcionará. Por encima de 16
MB de memoria VRAM necesitará configurar su sistema para que tenga "miles de colores"
(1000s of colors) en (System Preferences -> Displays).
Ahora puede usar Blender simplemente con hacer "doble-click" en el icono de Blender. O
arrastrar el icono de Blender al panel principal (Dock) para crear un acceso directo. Blender,
por defecto, se iniciará en una pequeña ventana. Utilice el botón "+" en la cabecera de la
ventana para maximizarlo. Más consejos y avisos sobre la versión para MacOS X se
encuentran en el archivo OSX tips.rtf en el directorio donde esté Blender instalado.
Linux
Instalación Rápida
Descargue el fichero blender-2.3#-linux-glibc#.#.#-ARCH.tar.gz de la sección de descargas
del sitio web de Blender. Aquí 2.3# es la versión de Blender, #.#.# es la versión de la librería
glibc y ARCH es la arquitectura de la computadora, que puede ser i386 o powerpc. Debería
escoger la correspondiente a su sistema, recuerde elegir entre enlazado dinamico o estático.
Desempaquete el fichero en la localización de su elección. Esto creará un directorio
denominado blender-2.3#-linux-glibc#.#.#-ARCH, en el cual encontrará el binario de blender.
Para comenzar Blender unicamente abre una consola y ejecuta el comando ./blender, por
supuesto cuando el servidor gráfico ''X'' esté funcionando.
Instrucciones detalladas
Descargue el fichero blender-2.3#-linux-glibc#.#.#-ARCH.tar.gz de la sección de descargas
del sitio web de Blender. Elija descargarlo, seleccione un directorio y pulse "salvar" (Save).
Entonces navegue hasta la localización que haya elegido para la instalación de blender (p.ej.
/usr/local/) y desempaquete el fichero (con el comando tar xzf /ruta/donde/está/blender-2.3#-
linux-glibc#.#.#-ARCH.tar.gz). Si usted desea, puede renombrar el directorio resultante del
desempaquetado blender-2.3#-linux-glibc#.#.#-ARCH a algo más corto, como por ejemplo
blender.
Ahora Blender está instalado y se puede ejecutar desde la linea de comandos (consola)
simplemente poniendo ./ruta/donde/está/blender y presionando la tecla "enter". Si usa KDE o
GNOME, puede comenzar Blender usando el explorador de archivos que utilice
habitualmente navegando hasta donde esté el ejecutable de Blender y haciendo "doble-click"
en él.
-8-
Si usa Sawfish, puede que quiera añadir una linea como esta ("Blender" (system "blender
&")) a su archivo .sawfish/rc de configuración.
Añadir un icono para blender en KDE
1. Seleccione el "Editor de Menú" en el submenu System del menú de KDE.
1. Seleccione el submenú etiquetado como "Gráficos" en la lista.
1. Pinche en el botón "Nuevo dispositivo". Una caja de dialogo aparecerá para que elija
un nombre. Cree el nombre y pinche en "OK". "Blender" o "Blender 2.3#" serían unas
elecciones bastantes lógicas, pero elegir otro cualquiera no afectará al funcionamiento
del programa.
1. Será devuelto al listado del menú, y el submenú "Gráficos" se expanderá, con su
nueva entrada resaltada. En la sección de la derecha, aseguresé de que los siguientes
campos son rellenados: "Nombre", "Comentario", "Comando", "Tipo" y "Ruta de
trabajo".
•
•
•
•
•
El campo "Nombre" debería estar ya rellenado , pero puede modificarlo en
cualquier momento.
Rellene el campo "Comentario". Aquí es donde define la etiqueta que
aparecerá sobre el icono cuando pase con el puntero por encima.
Pinche en el icono de la carpeta al final del campo "Comando" para buscar el
icono de blender. Selecione el icono y pulse en "OK" para volver al "Editor de
Menú".
El campo "Tipo" debería ser "Application".
El campo "Ruta de trabajo" debería ser el mismo que el del campo "Comando",
con el nombre del programa suprimido. Por ejemplo, si en el campo
"Comando"
pone
/home/user/blender-publisher-#.##-linux-glibc#.#.#-
ARCH/blender, el campo "Ruta de trabajo" debería ser /home/user/blender-
publisher-#.##-linux-glibc#.#.#-ARCH/.
1. Pinche en "Aplicar" y cierre el "Editor de Menú".
Para añadir un enlace a Blender en el panel de KDE, pulse el boton derecho del ratón sobre un
espacio vacio del panel, y entonces pulse "Añadir", luego "Botón", después "Gráficos" y por
último selecciona "Blender" (o el nombre que haya elegido en el paso 3). Alternativamente,
puede navegar a través del submenú "Panel de configuración" del menú de KDE y hacer
"Añadir", "Botón", "Gráficos" y "Blender".
Para añadir un icono para Blender en el escritorio, abra el navegador Konqueror (que se puede
encontrar en el Panel, o en submenú "Sistema" del menú de KDE) y navegue hasta el icono de
Blender que se encuentra donde descomprimió por primera vez el programa. Pinche y
seleccione el icono y muevalo desde el navegador hasta un espacio vacio de su escritorio. Se
le preguntará si quiere copiarlo, moverlo o enlazarlo en esa localización. Elija enlazarlo.
-9-
Añadir un icono para blender en GNOME
1. Selecciona "Editar menús" en el submenú Panel del menú de GNOME.
1. Selecciona el submenú "Gráficos", y pinche en el botón "Nuevo dispositivo".
1. En el panel derecho, rellene los campos "Nombre:", "Comentario:" y "Comando:".
Rellene el campo "Nombre:" con el nombre del programa, por ejemplo "Blender".
Puede darle el nombre que más le guste, solo es lo que aparecerá en el menu, pero no
afectará a la funcionalidad del programa. Rellene el campo "Comentario:" con un
comentario descriptivo. Esto es lo que se mostrará en las etiquetas emergentes.
Rellene el campo "Comando:" con la ruta hasta el programa blender, por ejemplo,
/home/user/blender-publisher-#.##-linux-glibc#.#.#-ARCH/blender
1. Pinche en el botón "No Icono" para elegir un icono. Puede haber o no un icono para
Blender en la localización por defecto. Puede hacer uno, o buscar el que viene con
KDE.
El
icono
de
KDe
debería
estar
en
/opt/kde/share/icons/hicolor/48x48/apps/blender.png. Si su directorio de instalación es
diferente, puede buscarlo usando este comando en un terminal o una consola: find / -
name "blender.png" -print
1. Pinche en el botón "Salvar" y cierre el "Editor de Menú".
Para añadir un icono al panel, pincha con el botón derecho del ratón en un espacio vacio del
Panel, entonces selecciona "Programas", luego "Gráficos", y después "Blender".
Alternativamente, podría pinchar en el menú GNOME, seleccionar "Panel", entonces "Añadir
al panel", luego "Lanzar desde el menu", después "Gráficos", y por último "Blender".
Para añadir un icono para Blender en el escritorio, abra el navegador Nautilus (doble-click en
el icono de la casa en la esquina superior izquierda de su escritorio, o pinche en el menú
GNOME, entonces "Programas", luego "Aplicaciones", y "Nautilus"). Navegue hasta el
directorio que contiene el icono del programa Blender. Piche con el botón derecho del ratón, y
muevaló hacia el escritorio. Un menú aparecerá preguntandole si quiere copiar, mover,
enlazar o cancelar. Seleccione enlazar.
FreeBSD
Intalación
Descargue el archivo blender-2.3#-freebsd-#.#-i386.tar.gz de la sección de descargas del sitio
web de Blender. Aquí 2.3# es la versión de Blender, #.# es la versión de FreeBSD y i386 es la
arquitectura de la computadora.
Para comenzar Blender unicamente abra una consola y ejecute el comando ./blender, por
supuesto cuando el servidor gráfico ''X'' esté funcionando.
- 10 -
Irix
Instalación
Descargue el archivo blender-2.3#-irix-6.5-mips.tar.gz desde la sección de descargas de la
web de Blender. Aquí 2.3# es la versión de Blender, 6.5 es la versión de Irix y mips es la
arquitectura del ordenador.
Para comenzar Blender unicamente abra una consola y ejecute el comando ./blender, por
supuesto cuando el servidor gráfico ''X'' esté funcionando. Blender se desarrolló originalmente
para la plataforma IRIX, pero actualmente esta plataforma no está siendo activamente
mantenida en todas sus versiones. Para algunas estaciones de trabajo se ha informado de la
existencia de algunos problemas que afectan al rendimiento.
Solaris
Instalación
Descargue el archivo blender-2.3#-solaris-2.8-sparc.tar.gz desde la sección de descargas de la
web de Blender. Aquí 2.3# es la versión de Blender, 2.8 es la versión de Solaris y sparc es la
arquitectura de la computadora.
Actualmente no hay instrucciones disponibles para Solaris. Por favor utilice los foros del sitio
web de Blender para obtener ayuda.
- 11 -
La Interfaz
Si es nuevo en Blender, debería asimilar como trabajar con la interfaz de usuario antes de
ponerse a modelar. Los conceptos detrás de la interfaz de Blender hacen que esta no sea muy
estándar, sino que sea diferente de los otros paquetes 3D. Especialmente los usuarios de
Windows necesitarán coger el truco a la manera en la que Blender maneja los controles, tales
como botones o movimientos de ratón. Pero esta diferencia es de hecho la gran fuerza de
blender: una vez comprenda la manera en la que funciona Blender, encontrará que puede
hacer su trabajo extraordinariamente rápido y de manera muy productiva.
Por otro lado, la interfaz de Blender ha cambiado sustanciosamente desde la versión 2.28 a la
versión 2.3, así que incluso los usuarios más experimentados podrán sacar partido a este
capítulo.
Conceptos de la Interfaz de Blender
La interfaz de usuario es el mecanismo de interacción mutua entre el usuario y el programa.
El usuario se comunica con el programa mediante el teclado y el ratón, el programa responde
por medio de lo que muestra en pantalla.
El teclado y el ratón
La interfaz de Blender saca provecho de los ratones de tres botones y una amplia gama de
atajos de teclado (en el Volumen II se encuentra una descripción detallada). Si el ratón sólo
tiene dos botones, es posible emular el botón central (interface_functions_settings describe
como). Es posible usar un ratón con rueda, pero no es obligatorio, ya que también existen
atajos de teclado que cumplen la misma función. Este libro asume las siguientes convenciones
para describir la entrada de usuario:
•
•
•
•
•
•
Los botones del ratón se abrevian como BIR (botón izquierdo del ratón), BMR (botón
medio del ratón) y BDR (botón derecho del ratón).
Si el ratón tiene una rueda, BMR se refiere a hacer click con la rueda como si ésta
fuera un botón, mientras que RR significa girar la rueda.
Las letras de los atajos se nombran añadiendo TECLA a la letra, es decir TECLAG se
refiere a la letra g en el teclado. Las teclas pueden ser combinadas con los
modificadores SHIFT, CTRL y/o ALT. Generalmente para las teclas modificadas el
sufijo TECLA se descarta, por ejemplo CTRL-W o SHIFT-ALT-A.
NUM0 a NUM9, NUM+ y así sucesivamente, se refiere a las teclas ubicadas en el
teclado numérico. Generalmente NumLock debería ser activada.
En el caso de otras teclas, se les refiere usando sus nombres, tal como ESC, TAB, F1 a
F12.
Otras teclas especiales para tener en cuenta son las teclas de dirección, ARRIBA,
ABAJO, IZQUIERDA y DERECHA.
Dado que Blender hace un uso tan extensivo del ratón y el teclado, entre los usuarios se ha
hecho popular una "regla de oro": mantener una mano en el ratón y la otra en el teclado! Si
normalmente usa un teclado que es considerablemente diferente de la distribución de teclas
inglesa, podría ir pensando en cambiar a uno con ésta o la distribución americana para el
- 12 -
trabajo con Blender. Las teclas de mayor uso están agrupadas de tal manera que pueden ser
alcanzadas con la mano izquierda en posición estándar (dedo índice sobre TECLAF) en la
distribución de teclado inglesa. Se asume que se usa el ratón con la mano derecha.
El sistema de ventanas
Ahora es tiempo de iniciar Blender y empezar a explorar.
La escena por defecto de Blender.
La escena por defecto de Blender. muestra la vista de pantalla que debe obtenerse al haber
iniciado Blender(excepto por las flechas y el texto añadido). Por defecto está separada en tres
ventanas: el menu principal en la parte alta, la vista 3D grande y la Ventana de Botones abajo.
La mayoría de las ventanas tiene un encabezado (la franja con un fondo gris claro que
contiene botones con iconos - por esto se le llamará, también, Barra de Herramientas); si está
presente, el encabezado puede ubicarse en la parte alta (como en la Ventana de Botones) o en
la parte baja (como en la vista 3D) del área de una ventana. Si se mueve el ratón sobre una
ventana, es posible notar que su encabezado cambia a un gris más claro. Esto significa que
ésta está "enfocada"; todos los atajos de teclado que se presionen afectarán ahora el contenido
de esta ventana. Es posible personalizar el sistema de ventanas de Blender para satisfacer las
necesidades y gustos del usuario. Una ventana nueva puede ser creada fraccionando una
existente. Esto se hace "enfocando" la ventana que se quiere fraccionar (poner el puntero del
ratón dentro de esta), hacer click en el borde con BCR o BDR y seleccionar Split Area (El
menu de Split para crear ventanas nuevas.). Ahora es posible ubicar el nuevo borde haciendo
click con BIR, o cancelar el fraccionamiento presionando la tecla ESC. La nueva ventana será
- 13 -
un clon de la ventana que fue fraccionada, pero ahora puede ser convertida a una ventana de
otro tipo, o hacer que muestre la escena desde otro punto de vista.
Elementos de la Interface: Las etiquetas en los botones de la interface,
los elementos de menú y, en general, cualquier texto mostrado en la
pantalla se resalta en este libro de esta manera.
El menu de Split para crear ventanas nuevas.
Un nuevo borde vertical es creado al escoger Split Area en un borde horizontal y viceversa.
Cada ventana puede ser redimensionada arrastrando un borde con el BIR. Para reducir el
número de ventanas, se hace click en un borde entre dos ventanas con BCR o BDR y se
escoge Join Areas. La ventana resultante recibe las propiedades de la ventana enfocada
previamente. Para ajustar la posición de un encabezado se hace click con el BDR sobre el
encabezado y se escoge Top o Bottom. También es posible ocultar el encabezado
seleccionando No Header, pero esta opción sólo se recomienda si todos los atajos de teclado
relativos se conocen. Un encabezado oculto se puede volver a mostrar haciendo click en el
borde de la ventana con BCR o BDR y seleccionando Add Header.
Tipos de ventanas
El marco de cada ventana puede contener diferentes tipos y conjuntos de datos, dependiendo
de lo que se está haciendo. Estos pueden incluir modelos 3D, animación, materiales de la
superficie, scripts Python, y así sucesivamente. Se puede seleccionar el tipo de cada ventana
haciendo click en el botón de más a la izquierda en su encabezado con el BIR (El menú de
selección del tipo de ventana.).
El menú de selección del tipo de ventana.
- 14 -
Se explicarán las funciones y el uso de cada tipo de ventana a lo largo del libro. Por ahora
sólo se prestará atención a los tres tipos de ventana que se encuentran en la escena por defecto
de Blender:
•
Vista 3D
Provee una vista gráfica de la escena en la cual se está trabajando. Es posible ver la
escena desde cualquier ángulo con una variedad de opciones; para información
detallada, vease interface_3d. Tener varias vistas en la misma pantalla es útil si se
desea observar el efecto de los cambios desde distintas perspectivas al mismo tiempo.
•
Buttons Window(Ventana de Botones)
Contiene la mayoría de las herramientas para editar objetos, superficies, texturas, luces
y mucho más. Esta ventana se usa constantemente si los atajos de teclado no se saben
de memoria. Por supuesto, es posible tener más de una ventana de estas, cada una con
un conjunto de herramientas diferente.
•
Preferencias de Usuario (Menu Principal)
Usualmente esta ventana está oculta, así que sólo la parte del menú está visible - para detalles,
ver la interface_functions_settings. Raramente se usa, pues contiene ajustes de la
configuración global.
En Blender 2.30 hay varias novedades. Primero que todo, los encabezados de ventana tienden
a ser mucho más limpios, menos saturados por botones y los menús ahora están presentes en
muchos encabezados. La mayoría de los encabezados, inmediatamente después del botón de
menú "Tipo de Ventana", exhibe un grupo de menús; esta es una de las nuevas características
principales de la interface 2.30. Los menús ahora permiten acceder directamente a muchas de
las características y comandos que anteriormente sólo eran accesibles por medio de atajos de
teclado o botones misteriosos. Los menús pueden ser ocultados y mostrados por medio del
botón triangular junto a ellos. Los menús no son sólo dependientes de la ventana (cambian
con el tipo de ventana) sino también dependientes del contexto (cambian de acuerdo con el
objeto seleccionado) así que siempre son muy compactos, mostrando sólo las acciones que
pueden ser realizadas. Todas las entradas de menú muestran el atajo de teclado relativo, si lo
hay. El flujo de trabajo de Blender se optimiza al máximo cuando se usan atajos de teclado.
Así que el resto de este libro ofrecerá mayormente atajos de teclado, en lugar de elementos de
menú. De todas formas los menús son muy preciados, pues ofrecen una visión general, hasta
donde es posible, de todas las herramientas y comandos que Blender ofrece. Una
característica de las ventanas que a veces resulta práctica para hacer edición precisa es la de
maximizar a pantalla completa. Si se usa el elemento de menú View>Maximize Window
apropiado o el atajo de teclado CTRL-ABAJO, la ventana enfocada se extenderá para llenar la
pantalla completa. Para regresar al modo de tamaño normal, se usa el elemento de menú
View>Tile Window o CTRL-ARRIBA.
Contextos, Paneles y Botones
Los botones de Blender son mucho más emocionantes que los de la mayoría de otras
interfaces de usuario y se volvieron aún mejores en la versión 2.30. Esto es mayormente
debido al hecho de que son basados en vectores y dibujados en OpenGL, lo que los hace
- 15 -
elegantes y permite hacer zoom en ellos. Los botones se hallan agrupados mayormente en la
Ventana de Botones. Desde Blender 2.3 la Ventana de Botones muestra seis contextos
principales, los cuales se pueden seleccionar por medio de alguno de los botones en el primer
grupo en el encabezado (Contextos y Sub-Contextos), a su vez cada uno de estos puede ser
subdividido en un número variable de sub-contextos, a los cuales se puede acceder a través de
los botones del segundo grupo en el encabezado (Contextos y Sub-Contextos):
Contextos y Sub-Contextos
•
•
•
•
•
•
•
•
•
•
•
•
•
•
Lógica - atajo F4
Scripts - sin atajo
Shading - atajo F5
Lámpara - sin atajo
Material - sin atajo
Textura - atajo F6
Radiosidad - sin atajo
Mundo - atajo F8
Objeto - atajo F7
Edición - atajo F9
Escena - atajo F10
Renderizado - sin atajo
Animación/Reproducción - sin atajo
Sonido - sin atajo
Usualmente, una vez el contexto ha sido seleccionado por el usuario, el subcontexto es
determinado por Blender basándose en el objeto activo. Por ejemplo, en el contexto
"Shading", si una lámpara está seleccionada, el subcontexto muestra los Botones de Lámpara,
si una malla u otro objeto renderizable está seleccionado, entonces el subcontexto activo
vendrá a ser el de Botones de Material y si una cámara está seleccionada el subcontexto activo
es Mundo. La novedad más notable en la interface es probablemente la presencia de Paneles
para agrupar lógicamente los botones. Cada panel es del mismo tamaño. Pueden ser movidos
haciendo click con el BIR en su encabezado y arrastrando. Los paneles pueden ser alineados
haciendo click con el BDR en la ventana de botones y escogiendo la distribución deseada en
el menú que aparece (Menu de la Ventana de Botones.).
Menu de la Ventana de Botones.
La RR desplaza los paneles en su dirección de alineamiento, CTRL-RR y CTRL-BCR hacen
zoom de acercamiento y alejamiento. Paneles individuales pueden ser colapsados/expandidos
haciendo click con el BIR en el triángulo ubicado a la izquierda de su encabezado. Los
paneles particularmente complejos se organizan en Fichas. Haciendo click con el BIR en una
ficha en el encabezado del panel cambian los botones mostrados (Paneles con fichas). Las
- 16 -
fichas se pueden "desligar" de un panel para formar paneles independientes haciendo click
sostenido con el BIR en su encabezado y arrastrándolas fuera. De manera similar, paneles
separados se pueden convertir en un solo panel con fichas soltando el encabezado de un panel
sobre otro.
Panel con fichas.
Como un último elemento de interface, hay varios tipos de botones que se disponen en las
fichas de los paneles:
•
Botones de Operación.
Estos son botones que efectúan una operación cuando se les hace click (con el BIR,
como todos los botones). Pueden ser identificados por el color pardusco que tienen en
el esquema visual por defecto de Blender. (Un botón de operación).
Un botón de operación
•
Botón Alternante.
Los botones alternantes vienen en varios tamaños y colores (Botones alternantes). Los
colores verde, violeta y gris no modifican la función, sólo ayudan a facilitar la
agrupación visual y reconocer el contenido de la interface más rápidamente. Hacer
click en un botón de estos no genera acción alguna, sólo alterna un estado entre "on" y
"off".
Algunos botones también tienen un tercer estado que se puede identificar por que el
texto se vuelve amarillo (el botón Ref en Botones alternantes). Usualmente el tercer
estado significa "negativo" y el estado normal "on" significa "positivo".
Botones alternantes
•
Botones de Radio.
Los botones de radio son grupos particulares de botones alternantes mutuamente
excluyentes. Tan sólo uno de estos botones puede estar "on" en un momento dado.
•
Botones Numéricos.
- 17 -
Los botones numéricos (Botones numéricos) pueden ser identificados por sus títulos,
que contienen ":" seguido por un número. Los botones numéricos son manipulados de
varias formas:
Para incrementar el valor, se hace click con el BIR en la parte derecha del botón,
donde se observa un triángulo pequeño; para decrementarlo, se hace click en la parte
izquierda del botón, donde se encuentra otro triángulo.
Para cambiar el valor en un rango más amplio, se hace click sostenido con el BIR y se
arrastra el ratón a la derecha o a la izquierda.
Si mantiene oprimida la tecla CTRL mientras lo hace, el valor cambia con saltos
grandes; si sostiene oprimida la tecla SHIFT, tendrá un control más sutil sobre los
valores. La tecla ENTER presta la misma utilidad que el BIR.
Botones numéricos
Es posible ingresar un valor usando el teclado si se sostiene la tecla SHIFT y se hace
click con el BIR. Presionando la combinación SHIFT-RETROCESO se elimina el
valor contenido en el botón; con SHIFT-IZQUIERDA se mueve el cursor al inicio; y
SHIFT-DERECHA mueve el cursor al final. Presionando ESC se restaura el valor
original. Algunos botones de número contienen un deslizador y no sólo un número con
triángulos laterales. El mismo método de operación se aplica para estos, excepto que el
click con el BIR se debe efectuar en la parte izquierda o derecha del deslizador, en
tanto que hacer click en la etiqueta o el número automáticamente iniciará el modo de
entrada por teclado.
•
Botones de Menú.
Los botones de menú se usan para escoger de una lista de elementos creada
dinámicamente. Los botones de menú son usados principalmente para enlazar
"DataBlocks" entre sí. (DataBlocks son estructuras como Mallas, Objetos, Materiales,
Texturas y otros; al enlazar un material a un objeto, éste queda asignado). Un ejemplo
de este tipo de bloque de botones se muestra en Botones de enlace de DataBlocks. El
primer botón (con los diminutos triángulos apuntando arriba y abajo) abre un menú
que permite seleccionar el DataBlock al cual efectuar el enlace, esto se hace
sosteniendo oprimido el BIR y liberándolo cuando el puntero se halle sobre el
elemento deseado. El segundo botón muestra el tipo y nombre del DataBlock enlazado
y permite editar su nombre después de hacer click con el BIR. El botón con la "X"
elimina el enlace, el botón con el "carro" genera un nombre automáticamente para el
DataBlock y el botón con la "F" especifica que el DataBlock deberá ser almacenado
en el archivo aún si no está siendo usado (no tiene enlace alguno).
Objetos sin enlace alguno: Los datos sin enlace sólo se pierden hasta que
se cierra Blender. Esta es una poderosa característica que permite deshacer
errores. Si un objeto es eliminado el material que tiene asignado pasa a
estar sin enlace, pero aún existe! Solo se debe re-enlazar a otro objeto o
presionar el botón "F".
- 18 -
Botones de enlace de DataBlocks
Caja de Herramientas (ToolBox)
Al presionar la tecla ESPACIO en la Vista 3D, o sostener el BIR o el BDR con el ratón quieto
durante más de medio segundo se abre la Caja de Herramientas. Esta contiene 6 contextos
principales dispuestos en dos líneas, cada uno de los cuales abre menús y submenús. Tres de
estos contextos abren los mismos tres menús presentes en el encabezado de la vista 3D; los
otros tres, Add permite añadir objetos nuevos a la escena mientras Edit y Transform muestran
todas las operaciones que se pueden efectuar sobre el(los) objetos seleccionado(s). (La Caja
de Herramientas).
La Caja de Herramientas
Pantallas (Screens)
La flexibilidad de las ventanas de Blender permite crear entornos de trabajo personalizados
para diferentes tareas, tales como modelado, animación y creación de scripts. A menudo
resulta útil intercambiar rápidamente entre diferentes entornos dentro del mismo archivo. Esto
es posible al crear varias Pantallas: Todos los cambios a las ventanas que se describen en El
sistema de ventanas y Tipos de ventanas se almacenan en una pantalla, de modo que si las
- 19 -
ventanas de una pantalla son modificadas, las otras no resultarán afectadas en lo absoluto.
Pero la escena en la cual se está trabajando es la misma en todas las pantallas. Blender incluye
por defecto tres pantallas diferentes; están disponibles a través del Botón de Menú SCR en el
encabezado de la Ventana de Preferencias de Usuario mostrado en Selectores de Pantalla y
Escena. Para cambiar a la pantalla siguiente, alfabéticamente, se debe presionar la
combinación CTRL-DERECHA; para cambiar a la pantalla previa, alfabéticamente, se
presiona la combinación CTRL-IZQUIERDA.
Selectores de Pantalla y Escena
Escenas
También es posible tener varias escenas dentro del mismo archivo de Blender. Las escenas
pueden usar objetos de otras o ser completamente independientes entre sí. Con el botón de
menú SCE, ubicado en el encabezado de la Ventana de Preferencias de Usuario, se puede
crear o seleccionar una escena (Selectores de Pantalla y Escena). Cuando se crea una escena
nueva, es posible escoger entre cuatro opciones para controlar su contenido:
• Empty Crea una escena vacía.
• Link Objects crea la escena nueva con el mismo contenido de la escena seleccionada
   actualmente. Los cambios en una escena afectarán igualmente a la otra.
• Link ObData crea la nueva escena basada en la escena seleccionada actualmente, con
   enlaces a las mismas mallas, materiales, etc. Esto significa que la posición de los
   objetos puede ser cambiada, junto con otras propiedades, pero modificaciones de las
  mallas, materiales, etc. afectarán igualmente la otra escena, a menos que se indique
  manualmente la creación de copias con usuario único (single-user copies).
• Full Copy crea una escena completamente independiente con copias del contenido de
   la escena seleccionada actualmente.
- 20 -
Navegando en el Entorno 3D
Blender te permite trabajar en un espacio tridimensional, pero las pantallas de nuestros
monitores son sólo bi-dimensionales. Para poder trabajar en tres dimensiones, debes ser capaz
de cambiar tanto tu punto de vista como la dirección en la que ves la escena. Esto es posible
en todas las vistas 3D. Aunque vamos a describir la ventana de vista en 3D, la mayoría de las
ventanas no-3D usan una serie de funciones equivalentes, por ejemplo es incluso posible
arrastrar y escalar una Ventana de Botones y sus Paneles.
La dirección de la vista (rotando)
Blender ofrece tres direcciones de vista por defecto: Lateral, Frontal, and Superior. Como
Blender usa un sistema de coordenadas "de mano derecha" con el eje Z apuntando hacia
arriba, la vista "Lateral" corresponde a una mirada desde el eje X axis, en la dirección
negativa; la vista "Frontal" es desde el eje Y; y la "Superior" desde el eje Z. Puedes
seleccionar la dirección de la vista para una ventana 3D con las entradas de Menú Vista (El
menú de vistas de una ventana 3D.) o presionando los atajos de teclado NUM3 para "Lateral",
NUM1 para "Frontal", y NUM7 para "Superior".
Atajos de teclado: Recuerda que la mayoría de los atajos de teclado afectan a la ventana
activa, así que comprueba que el cursor del ratón está en el área donde quieres trabajar
antes de usar los atajos de teclado!
El menú de vistas de una ventana 3D.
- 21 -
Aparte de estas tres direcciones por defecto, la vista puede ser girada con cualquier ángulo
que necesites. Haz clic y arrastra MMB en el área de la ventana: si comienzas en el medio de
la ventana y te mueves hacia arriba y hacia abajo o hacia la derecha y la izquierda, la vista
gira alrededor del centro de la ventana. Si comienzas en el borde y no te mueves hacia el
centro, puedes girar alrededor de tu eje de vista. Juega un poco con esta función hasta que
controles su manejo. Para cambiar el ángulo de vista en pasos sucesivos, usa NUM8 y NUM2,
que corresponden al arrastre vertical. MMB o usa NUM4 y NUM6, que corresponden al
arrastre horizontal MMB.
Trasladando y Escalando la Vista
Para trasladar la vista, pulsa SHIFT y arrastra MMB en la Ventana 3D. Para hacerlo en pasos
sucesivos, usa las combinaciones de teclas CTRL-NUM8, CTRL-NUM2, CTRL-NUM4 y
CTRL-NUM6 como con las rotaciones. Puedes escalar la vista (acercarte y alejarte) pulsando
CTRL y arrastrando MMB. Los atajos de teclado son NUM+ y NUM- . Los sub-menús
View>>Viewport Navigation contienen también estas funciones.
Proyección en Perspectiva y Ortográfica
Cada Ventana 3D soporta dos tipos diferentes de proyección. Los mostramos en Ortográfica
(izquierda) y perspectiva (derecha).: ortográfica (izquierda) y perspectiva (derecha).
Ortográfica (izquierda) y perspectiva (derecha).
Nuestro ojo está acostumbrado a ver en perspectiva porque los objetos distantes parecen más
pequeños. La proyección Ortográfica, a menudo, parece incorrecta al principio porque los
objetos permanecen del mismo tamañoo independientemente de su distancia: es como ver la
escena desde un punto infinitamente distante. Al contrario, la vista ortográfica es muy útil (es
el modo por defecto en Blender y en la mayoría de aplicaciones 3D), porque ofrece un aspecto
más "técnico" de la escena, facilitando el dibujo y los cálculos de proporciones.
Perspectiva and Ortográfica: La vista en Perspectiva se construye geométricamente de esta
manera: tienes una escena en 3D y tu eres un observador situado en un punto O. La escena
con perspectiva 2D se construye situando un plano, una hoja de papel donde la escena 2D se
dibuja en frente del punto O, perpendicular a la dirección de la vista. Para cada punto P en la
- 22 -
escena 3D se dibuja una linea, pasando entre O y P. El punto de intersección S entre esta
línea y el plano es la proyección en perspectiva de ese punto. Proyectando todos los puntos P
de la escena obtendremos una vista en perspectiva. En una proyección ortográfica, también
llamadas "ortonormales", por otra parte, tienes una dirección de vista pero no un punto de
vista O. La línea que se dibuja atraviesa el punto P de forma paralela a la dirección de la
vista. Las intersecciones S entre la línea y el plano conforman la proyección ortográfica. Y
proyectando todos los puntos P de le escena obtenemos la vista ortográfica.
Para cambiar la proyección de una ventana 3D Viewport, elige Vista>>Ortográfica o
Vista>>Perspectiva entradas de Menú (El menú de vistas de una ventana 3D.). El atajo de
teclado NUM5 cambia entre los dos modos.
La entrada de Menú Vista>>Cámara pone la vista 3D en modo Cámara (Atajo: NUM0).
Entonces la escena se muestra como será renderizada luego (vea Demostración de vista de
Cámara.): la imagen renderizada contendrá todo lo que abarque la línea de puntos exterior. Es
posible acercarse y alejarse en esta vista, pero para cambiar el punto de vista tendremos que
mover o girar la Cámara.
Demostración de vista de Cámara.
Modo de Dibujado
Dependiendo de la velocidad de tu ordenador, de la complejidad de tu escena y del tipo de
trabajo que estés haciendo, puedes alternar entre diferentes modos de dibujado:
• Texturizado - Intenta dibujarlo todo tan completamente como sea posible, aunque no
   es aún una alternativa al renderizado. Nota que si no hay ninguna luz en tu escena todo
   saldrá negro.
• Sombreado - Dibuja superficies sólidas incluyendo el cálculo de iluminación. Como
      en el modo Texturado, no verás nada sin luces.
- 23 -
• Sólido - Las Superficies se dibujan como Sólidos, pero también funciona sin luces.
• Enrejado - Los objectos sólo consisten en líneas que hacen reconocibles las formas.
     Este es el modo de dibujado por defecto.
• Caja de Límites - Los objetos no son dibujados en absoluto; en vez de eso, este modo
    enseña sólo las cajas rectangulares que corresponden al tamaño y a la forma de cada
      objeto.
El modo de dibujado puede se elegido con el botón de menú apropiado en la cabecera (Un
botón de modo de dibujado de una vista 3D.) o con atajos de teclado: ZKEY cambia entre
Enrejado y Sólido, SHIFT-Z cambia entre Enrejado y Sombreado.
Un botón de modo de dibujado de una vista 3D.
Vista Local
En vista local, sólo los objetos seleccionados son mostrados, lo que puee facilitar la edición
en escenas complejas. Para entrar en vista local, primero selecciona los objetos que quieres
(ver mesh_modelling_objectmode_selecting) y después usa la entrada de menú; Vista>>Vista
Local usa la entrada de menú Vista>>Vista Global para volver a la vista global. (El menú de
vistas de una ventana 3D.). El atajo es NUM/, que cambia entre vista Local y Global.
El sistema de Capas
Las escenas en 3D a menudo se hacen mucho más confusas a medida que aumenta su
complejidad. Para mantenerlas bajo control, los objetos pueden ser agrupados en "capas", para
que sólo las capas que elijas sean mostradas en cualquier momento. Las capas de 3D difieren
de las capas que puedes conocer de las aplicaciones gráficas en 2D: no tienen influencia en el
orden de dibujado y están ahí (a excepción de algunas funciones especiales) únicamente para
ofrecer al modelador un mejor control de las vistas. Blender utiliza 20 capas; tú eliges las que
se muestran con los pequeños botones sin título de la cabecera (Los botones de Capas de una
vista 3D.). Para seleccionar sólo una capa, haz clic en el botón apropiado con LMB; para
seleccionar más de una, presiona MAYÚS mientras haces clic.
Los botones de Capas de una vista 3D.
- 24 -
Para seleccionar capas con el teclado, presiona desde la tecla 1KEY hasta la tecla 0KEY (en
el área principal del teclado) para las capas de 1 a 10 (la fila superior de botones), y ALT-1
hasta ALT-0 para las capas 11 a 20 (la fila inferior). La tecla MAYÚS para selecciones
múltiples también funciona con estos atajos. Por defecto, el botón de bloquear a la derecha del
bloque de capas está activado; esto significa que los cambios a la visibilidad de las capas
afecta a todas las ventanas 3D. Para seleccionar ciertas capas sólo en una ventana, desactiva
primero el bloqueo. Para mover los objetos seleccionados a una capa diferente, presiona
MKEY, selecciona la capa que quieres en el diálogo emergente, y finalmente haz clic en OK .
Cargando archivos
Blender usa el formato de archivo .blend para salvar casi todo: Objectos, escenas, texturas, e
incluso todas tus opciones de la ventana de preferencias del usuario. Para cargar un archivo
Blender del disco, presiona F1. La ventana activa se transformará temporalmente en la
Ventana de selección de archivos como se muestra en la Ventana de Selección de Archivos -
cargando.. La barra de la izquierda puede ser arrastrada con LMB para ver el resto de la lista.
Para cargar un archivo, seleccionalo con LMB y presiona ENTER, o simplemente haz clic en
él con MMB.
Ventana de Selección de Archivos - cargando.
La caja de texto superior muestra la ruta del directorio actual, y la inferior contiene el nombre
de archivo seleccionado. El botón P (PKEY) te sitúa en el directorio anterior y el botón con la
coma mantiene un listado de rutas usadas recientemente. En Sistemas operativos Windows,
este último también contiene una lista de todos los discos (C:, D:, etc).
Nota: Blender espera que tú sepas lo que estás haciendo! Cuando cargas un archivo, no se
te pregunta si quieres guardar los cambios de la escena que tenías abierta: completar el
diálogo de carga de un archivo se considera suficiente confirmación de que no lo has hecho
por accidente. Asegúrate de salvar tus archivos.
- 25 -
Guardando archivos
Guardar archivos es como cargarlos: Cuando presionas F2, la ventana activa cambia
temporalmente a una ventana de selección de archivos, como se muestra en la Ventana de
Selección de Archivos - guardando.. Haz clic en la ventana de edición inferior para escribir un
nombre de archivo. Si no lo acabas con ".blend," la extension es añadida automáticamente.
Después presiona ENTER para guardar el archivo. Si ya existe un archivo con el mismo
nombre, tendrás que confirmar que quieres guardar el archivo en la pregunta de sobre-escribir.
Ventana de Selección de Archivos - guardando.
El diáologo de salvar tiene una pequeña cualidad añadida para ayudarte a crear múltiples
versiones de tu trabajo: Presionando NUM+ o NUM- incrementará o disminuirá un número
contenido en el nombre del archivo. Para simplemente salvar sobre el archivo actualmente
cargado evitando el diálogo de salvar, presiona CTRL-W en vez de F2 y sólo tendrás que
confirmar la pregunta.
Renderizando
Esta sección te ofrece sólo un repaso rápido de lo que necesitarás para renderizar tu escena.
Encontrarás una descripción detallada de todas las opciones en chapter_rendering. Las
Opciones de Render están en el contexto Escena y en el sub-contexto Botones de Renderizado
(Opciones de Renderizado en los Botones de Render.) al que se accede haciendo clic en
presionando F10.
- 26 -
,o
Opciones de Renderizado en los Botones de Render.
Por ahora sólo nos interesa el panel Formato. El tamaño (número de pixeles horizontales y
verticales) y el formato de archivo de la imagen a crear se eligen aquí. Puedes fijar el tamaño
usando los botones SizeX y SizeY. Haciendo clic en la caja de selección de debajo (en
Opciones de Renderizado en los Botones de Render., está seleccionado "Targa") abre un
menú con todos los formatos de salida disponibles para imágenes y animaciones. Para
imágenes fijas podemos elegir Jpeg, por ejemplo. Ahora que las opciones están completas, la
escena puede ser renderizada presionando el botón RENDER en el panel Render o
presionando F12. Dependiendo de la complejidad de la escena, esto puede tardar
normalmente entre unos pocos segundos y varios minutos, y el progreso es mostrado en una
ventana separada. Si la escena contiene una animación, sólo se renderiza el fotograma actual
(Para renderizar la animación completa, ver rendering_animation). Si no ves nada en la vista
renderizada, asegúrate de que tu escena está construida convenientemente. ¿Tiene luz? Está la
cámara situada correctamente, y apunta en la buena dirección? ¿Están visibles todas las capas
que quieres renderizar?
Nota: Una imagen renderizada no se salva automáticamente en el disco. Si estás satisfecho
con el renderizado, debes salvarlo presionando F3 y usando el diálogo de salvar tal como
describimos en Section 3.3.2. La imagen es salvada en el formato que hayas seleccionado
previamente en los botones de Display.
Extensiones de archivo: Blender no añade la extensión del formato automáticamente a los
archivos de imagen! Tienes que escribir la extensión explícitamente, si la necesitas.
Preferencias de usuario y Temas
Blender tiene unas pocas opciones que no son guardadas con cada archivo, sino que se aplican
se aplican a todos los archivos de un usuario. Estas preferencias incluyen detalles de la
entrefaz del usuario, y propiedades del sistema como el ratón, las fuentes y los lenguajes.
Como las preferencias del usuario son raramente necesarias, están escondidas bajo el menú
principal. Para hacerlas visibles, baja el borde de la ventana del menú (normalmente el borde
superior en la pantalla). Las opciones están agrupadas en siete categorías que pueden ser
seleccionadas con los botones violeta mostrados en la Ventana de Preferencias del Usuario..
Ventana de Preferencias del Usuario.
- 27 -
Ya que la mayoría de los botones se explican por sí mismos o muestran una útil ayuda si
mantienes el cursor parado sobre ellos, no vamos a describirlos en detalle aquí. En lugar de
eso, te ofrecemos un repaso de las categorías de Preferencias:
•
Vista & Controles
Las opciones concernientes a cómo debe reaccionar la entrefaz a las acciones del
usuario, como qué método de rotación debe usarse en las vistas 3D. Aquí puedes
activar también la emulación del ratón de 3 botones si el tuyo tiene sólo dos. MMB
puede ser emulado con ALT-LMB.
•
Métodos de Edición
Te permite especificar los detalles del funcionamiento de ciertos comandos de edición
como duplicar.
•
Languaje & Fuentes
Selecciona una fuente TrueType alternativa para mostrar en la entrefaz, y elige entre
los lenguajes disponibles para la entrefaz.
•
Temas
Desde la versión 2.30 Blender permite la utilización de Temas para definir colores
personalizados para la interfaz. Puedes crear y manejar temas desde aquí.
•
Guardar Automáticamente
Puedes configurar Guardar Automáticamente para tener una copia de emergencia en
caso de que algo vaya mal. Estos archivos se llamarán Nombre.blend1,
Nombre.blend2, etc.
•
Sistema & OpenGL
Debes consultar esta sección si experimentas problemas con los gráficos o con la
salida de audio, o si no dispones de un teclado numérico y quieres imitarlo (para
portátiles). Además, aquí puedes también configurar el esquema de luces para los
modos de dibujado Solido y Sombreado.
•
Directorios de Archivos
Escoge el directorio por defecto para varios diálogos de carga de archivos.
Configurando la escena por defecto
No te gusta la configuración de ventanas por defecto de Blender, o quieres unas opciones
específicas de render para cada nuevo proyecto que empieces, o quieres guardar tu Tema? No
hay problema. Puedes usar cualquier archivo de escena como opciones por defecto cuando
arranca Blender. Convierte la escena en la que estas trabajando en la opción por defecto
presionando CTRL-U. La escena será copiada en un archivo denominado .B.blend en tu
- 28 -
directorio principal. Puedes borrar el proyecto actual y volver a la escena por defecto en
cualquier momento presionando CTRL-X. Pero recuerda salvar primero tus cambios a la
escena previa!
Su Primera Animación en 30 Minutos I
Este capítulo le guiará paso a paso a través de la animación de un pequeño personaje, "el
hombre galleta". Describiremos completamente todas las acciones, pero asumiremos que se
ha leído enteramente el capitulo La interfaz, y que entiende las convenciones que se van a
usar en el libro. En los primeros 30 minutos de este tutorial construiremos un hombre de
galleta estático. En los siguientes 30 minutos, le proporcionaremos un esqueleto y le
animaremos para que camine (walk cycle).
Calentando
Comencemos.
1. Arranque Blender haciendo doble-click en su icono o ejecutelo desde la linea de
comandos. Blender se abrirá mostrándole, desde la vista superior (top view), la
configuración por defecto: una cámara y un plano. El plano está de color rosa, lo que
significa que está seleccionado (Blender recien iniciado.). Elimine el plano con la
Tecla X y confirme su eliminación pinchando en Erase Selected en el dialogo que
aparecerá.
Blender recién iniciado.
- 29 -
Ahora seleccione la cámara con el RMB y presione la Tecla M. Una pequeña caja de
herramientas, como esta Caja de herramientas para el control de capas., aparecerá bajo su
puntero, con el primer botón ya seleccionado. En la fila de arriba seleccione el botón más a la
derecha y luego pinche en el botón OK. Esto moverá su cámara a la capa (layer) 10.
Caja de herramientas para el control de capas.
Blender le proporciona 20 capas para ayudarle a organizar su trabajo. Puede ver que capas son
visibles actualmente a través del grupo de veinte botones en la barra de herramientas de la
ventana 3D (3D windows toolbar) (Controles de visibilidad de las capas.). Puede elegir que
capa quiere que sea visible con el LMB y seleccionar que varias capas sean visibles a la vez
con SHIFT-LMB.
Controles de visibilidad de las capas.
Construyendo el cuerpo
Cambie a la vista frontal (front view) con NUM1 y añada un cubo presionando en la Barra
Espaciadora (SPACE) y seleccione el menú Add, el submenú Mesh, y luego Cube. (En el libro
usaremos SPACE >> Add >> Mesh >> Cube como abreviatura para esta clase de acciones).
Un cubo aparecerá (Nuestro cubo en Modo Edición, todos los vértices seleccionados.). Este
cubo está en Modo Edición (EditMode), un modo en el cual puedes mover los vértices que
componen la malla (mesh). Por defecto, todos los vertices están seleccionados (amarillos).
Los vértices sin seleccionar son rosas.
Nuestro cubo en Modo Edición, todos los vértices seleccionados.
Llamaremos a nuestro hombre galleta "Gus". Nuestro primer cometido es construir el cuerpo
de Gus modificando nuestro cubo en Modo Edición. Para ver las herramientas que
utilizaremos para este propósito, pulse el botón que muestra un cuadrado con vértices
amarillos en la cabecera de la ventana (El botón de la ventana de Edición.), o presione F9.
El botón de la ventana de Edición.
- 30 -
Ahora localice el botón Subdivisión (Subdivide) en el panel Herramientas de Malla (Mesh
Tools) y presionele una vez (El panel Mesh Tools dentro de la ventana de Edición.). Esto
partirá cada lado del cubo en dos, creando nuevos vértices y caras (El cubo, subdividido una
vez.).
El panel Mesh Tools dentro de la ventana de Edición.
El cubo, subdividido una vez.
Con el cursor sobre la ventana 3D (3D Window), presione la Tecla A para deseleccionar
todos los elementos. Los vértices se volverán rosas. Ahora presione la Tecla B; el cursor se
transformará en un par de lineas grises ortogonales (Box select).
Mueva su ratón sobre la parte superior izquierda del cubo y a continuación presione y
mantenga el LMB, entonces arrastre el ratón hacia abajo y hacia la derecha para seleccionar
todos los vértices que se encuentren a la izquierda. Ahora deje de pulsar el LMB. Esta
secuencia, la cual le permite seleccionar un grupo de vértices con una caja, está descrita en La
secuencia de seleccionar con una caja un grupo de vértices..
- 31 -
La secuencia de seleccionar con una caja un grupo de vértices.
Ahora presiona la Tecla X y, en el menú emergente, selecciona Vertices para eliminar los
vértices seleccionados (El menú emergente para borrar (Tecla X) en acción.).
El menú emergente para borrar (Tecla X) en acción.
Ahora, usando la secuencia que acaba de aprender, seleccione con una caja los dos vértices de
la esquina superior derecha (Extruyendo los brazos en dos pasos., derecha). Presione la Tecla
E y pinche en la entrada de menú Extrude para extruirlos. Esto creará nuevos vértices y
nuevas caras que podrá mover y que seguirán al puntero del ratón. Muevalas a la derecha.
Para restringir el movimiento horizontal o verticalmente, pulse MMB mientras se este
moviendo. Puede cambiar a un movimiento sin restricciones pulsando MMB de nuevo.
Alternativamente puede usar la Tecla X para restringir el movimiento al eje x, la Tecla Y para
restringirlo al eje y, etc. Vamos a crear brazos y piernas a Gus. Mueva esos vértices nuevos un
cuadrado y medio a la derecha, entonces pulse LMB para fijar su posición. Extruya de nuevo
con la Tecla E entonces mueva los vértices nuevos otro medio cuadrado a la derecha.
Extruyendo los brazos en dos pasos. muestra esta secuencia.
Extruyendo los brazos en dos pasos.
Gus debería tener actualmente un brazo izquierdo (ey! Gus nos está mirando). Contruiremos
la pierna izquierda de la misma manera, extruyendo los vértices inferiores. Intente hacerlo tal
y como se muestra en Medio cuerpo.. Usaremos la herramienta de extruir 3 veces para crear la
pierna. ¡No se preocupe por los codos, pero necesitaremos una rodilla más tarde!
- 32 -
Medio cuerpo.
Nota: El CD contiene un fichero .blend con este ejemplo, guardado en varias fases del
modelado. El primer fichero, Quickstart00.blend contiene lo que debería haber conseguido
hasta ahora. Los pasos subsiguientes son numerados progresivamente, Quickstart01.blend,
Quickstart02.blend y así, mientras Quickstart.blend contiene el resultado final. Este
estándar se aplica a todos los otros ejemplos en este libro.
Ahora crearemos la otra mitad de Gus:
• Seleccione todos los vértices (Tecla A) y elige la entrada 3D Cursor en el menú
     Rotation/Scaling Pivot (eje o punto de rotación/escalado) de la cabecera de la ventana
     3D (Configure el centro de referencia a el cursor.).
• Presione SHIFT-D para duplicar todos los vértices, aristas y caras seleccionadas. Al
    duplicar nos encontraremos en modo de movimiento, presione ESC para salir de este
   modo sin mover los vértices.
• Presione la Tecla M para abrir el menú Mirror Axis (eje de reflexión). Elija Global X
     (eje X global). El resultado es el mostrado en Voltee la copia de la mitad del cuerpo
    para obtener un cuerpo completo..
Configure el centro de referencia a el cursor.
- 33 -
Voltee la copia de la mitad del cuerpo para obtener un cuerpo completo.
•
Deseleccione todo y entonces vuelva seleccionarlo presionando la Tecla A dos veces,
entonces elimine los vértices coincidentes presionando el botón Remove doubles (La
ventana de botones de edición.). Una ventana aparecerá, notificandole que ocho
vértices han sido eliminados.
Gus Necesita una cabeza:
• Mueva exactamente el cursor a un cuadrado de la rejilla por encima del cuerpo de Gus
   (La secuencia de añadir una cabeza., izquierda). Añada un nuevo cubo aquí
     (SPACE>>ADD>>Mesh>>Cube).
• Presione la Tecla G para cambiar al Modo Movimiento y mover los vértices creados
    hacia abajo restringiendo el movimiento con MMB, más o menos una tercera parte de
    una unidad de rejilla (La secuencia de añadir una cabeza., derecha).
La secuencia de añadir una cabeza.
•
Esto produce una figura muy tosca. Para hacerla mas suave, localice el botón SubSurf
(Subdivisión de superficies) Figure 4-16 en el panel de Mesh y activelo. Asegurese de
poner a 2, ambos botones inferiores.
Nota: Subdivisión de superficies es una herramienta de modelado avanzado, que
dinamicamente crea una malla mucho más densa a partir de los vértices de la malla inicial,
haciendo de esta forma una malla mas suave y uniforme que sigue la forma original de la
malla que es mucho más tosca. La forma del objeto está aún controlada por la localización de
los vértices de la malla original, pero la forma que se renderiza es la malla subdividida, que
es mucho más suave.
- 34 -
•
Salga del modo Edición (TAB) y cambie la visión del objeto del Modo Alambre
(Wireframe mode) al Modo Sólido (Solid Mode) con la Tecla Z. para echarle un
vistazo a Gus (Haciendo a Gus más suave., izquierda).
La ventana de botones de Edición.
Haciendo a Gus más suave.
•
Para hacer que Gus parezca más liso, presione el botón SetSmooth (La ventana de
botones de Edición.). Ahora Gus aparecerá liso pero con divertidas lineas negras en
medio (Haciendo a Gus más suave., medio). Esas lineas aparecen porque la malla
subdividida está calculada usando las direcciones normales de la malla tosca, las
cuales pueden no ser muy consistentes, esto es, que algunas normales de las caras
pueden apuntar hacia dentro, algunas hacia fuera, si extrusiones o volteados han sido
hechos. Para resetear las normales, regrese al modo Edición (TAB), seleccione todos
los vértices (AKEY), y presione CTRL-N. Pulse con LMB en Recalc normals outside
(Recalcular las normales hacia fuera) en la ventana que aparecerá. Ahora Gus debería
aparecer correctamente, tal como se muestra Haciendo a Gus más suave.. Presione
MMB y arrastre el ratón alrededor de Gus para verle desde todos los ángulos. Oh, ¡es
demasiado grueso!. Para corregir esto, cambia a la vista lateral NUM3. Ahora, entra en
el Modo Edición (si no te encuentras en él), y regresa al modo Alambre (Tecla Z), y
selecciona todos los vértices con la Tecla A (Adelgazando a Gus utilizando el
escalado restringido.).
- 35 -
Adelgazando a Gus utilizando el escalado restringido.
Vamos a hacer a Gus más delgado:
• Presione la Tecla S y comience a mover el ratón horizontalmente. Pulse MMB para
    restringir el escalado solo a un eje o presione la Tecla Y para obtener el mismo
   resultado. Si ahora movemos el ratón veremos como Gus comienza a hacerse más
    delgado pero manteniendo la misma altura.
• Los tres numeros en la barra de herramientas de la ventana 3D muestran el factor de
   escalado. Una vez que el escalado está restringido, solo uno de esos numeros variará.
    Presione y mantenga CTRL. El factor de escalado ahora variará de 0.1 en 0.1.
    Reduzca a Gus con un factor de 0.2, introduciendo su dimensión pulsando LMB.
• Regrese a la vista frontal y al Modo Sólido (Tecla Z), entonces rote su vista con
    MMB. ¡Gus está mucho mejor ahora!
Veamos como se ve Gus
Estamos listos para ver nuestro primer renderizado, pero antes de eso, tenemos algún trabajo
que hacer.
•
Shift-LMB en la esquina superior derecha para accionar el pequeño botón de los
botones de visibilidad de las capas en la barra de herramientas de la ventana 3D
(Haciendo visibles las capas 1 y 10.) para conseguir que tanto la capa 1 (la capa de
Gus) como la capa 10 (la capa de la cámara) sean visibles.
Haciendo visibles las capas 1 y 10.
- 36 -
Nota: Recuerde que la última capa seleccionada es la capa activa, por lo que todas los
añadidos subsecuentes se harán automaticamente en la capa 10.
•
Seleccione la cámara (RMB) y muevalá a la siguiente localización (x=7, y=-10, z=7).
Puede hacer esto presionando la Tecla G y arrastrando la cámara mientras mantiene
presionado CTRL para moverla en pasos de 1 unidad en 1 unidad de rejilla.
Para conseguir que la cámara apunte a Gus, mantenga su cámara seleccionada y entonces
seleccione a Gus con SHIFT-RMB. La cámara debería estar de color rosa y Gus de color rosa
claro. Ahora presione CTRL-T y seleccione la entrada Old Track en la ventana emergente.
Esto forzará a la cámara a seguir a Gus y siempre le seguirá. Esto significa que puede mover
la cámara donde quiera y puede estar seguro que Gus siempre estará en el centro de la vista de
la cámara.
{{Tip|Seguimiento (Tracking)| Si el objeto a seguir ha sufrido ya una rotación, como acurre
muy a menudo, el resultado de pulsar CTRL-T puede no ser el esperado. Si le ocurre esto,
seleccione el objeto que realiza el seguimiento (en nuestro caso la cámara), y presione ALT-R
para borrar cualquier rotación del objeto. Una vez que haga esto la cámara realmente seguirá a
Gus.
La posición de la cámara con respecto a Gus. muestra las vistas superior, frontal, lateral y de
cámara de Gus. Para obtener una vista de cámara presione la Tecla NUM0.
La posición de la cámara con respecto a Gus.
Ahora necesitamos crear el terreno para que Gus se mantenga de pie.
•
En la vista superior (NUM7), y fuera del modo Edición, añada un plano
(SPACE>>ADD>>Mesh>>Plane).
- 37 -
Nota: Es importante salir del modo Edición, porque si no el objeto añadido formará parte del
objeto que actualmente se encuentra en modo Edición, como hicimos con la cabeza de Gus
cuando la añadimos. Si el cursor está donde se muestra Figure 4-21, el plano se añadirá en
mitad del cuerpo de Gus.
• Cambia a modo Objeto y a la vista frontal (NUM1) y mueva (Tecla G) el plano hasta
   los pies de Gus, usando CTRL para mantenerlo alineado con Gus.
• Cambiamos el centro de referencia de cursor (donde lo configuramos al principio) a
   objeto presionando el botón resaltado Seleccione el centro de referencia al centro del
   objeto..
• Ve a la vista de cámara (NUM0) y, con el plano aún seleccionado, presiona la Tecla S
     para comenzar a escalarlo.
Seleccione el centro de referencia al centro del objeto.
•
Alargue el plano hasta que sus lados se extiendan más allá del area de visión de la
cámara , que está indicado por el rectangulo de rayas blancas en la vista de cámara.
Ahora, ¡algo de luz!
•
En la vista superior (NUM7), añada una lámpara de luz (Lamp)
(SPACE>>ADD>>Lamp) en frente de Gus, pero en el otro lado de la cámara; por
ejemplo en (x=-9, y=-10, z=7) (Insertando una lámpara.).
- 38 -
Insertando un lámpara.
•
Cambie a los botones de lámpara (Lamp Buttons) en el contexto de materiales a través
del botón con una lámpara en la barra de herramientas de la ventana de botones (El
botón para el panel de lámparas.) o presione simplemente F5.
El botón para el panel de lámparas.
•
En la ventana de botones, en el panel Preview, presione el botón Spot para convertir la
lámpara en una Spotlight (luz tipo foco) (Configuración de una luz Spot.) de color
amarillo claro (R=1, G=1, B=0.9). Ajuste ClipSta: a 5, Samples: a 4, y Soft: a 8.
Configuración de una luz Spot.
• Haga que la luz Spot siga a Gus, tal como hizo con la cámara, seleccionando la luz,
    luego presionando SHIFT, luego Gus, y por último Ctrl-T. Si ha añadido la luz Spot
     en la vista superior no debería necesitar borrar su rotación a través de Alt-R.
• Añada una segunda lámpara en la misma localización que la luz Spot, y de nuevo en la
      vista superior , con (SPACE>>ADD>>Lamp). Haga esta lámpara, una lámpara Hemi
       con una energía de valor 0.6 (La configuración de la lámpara Hemi).
La configuración de la lámpara Hemi
¿Dos lámparas?: Usar dos o más lámparas ayuda a producir una iluminación más suave y
realística porque en realidad la luz natural nunca viene de un solo punto. Aprenderá más sobre
esto en chapter_lighting.
Estamos casi listos para renderizar. Como primer paso, vaya al panel Scene (Escena)
presionando el boton que muestra una imagen en la barra de herramientas de la ventana de
botones (El panel de botones de renderizado.) o presione F10.
- 39 -
El panel de botones de renderizado.
En los botones de render, en el panel Format, ponga el tamaño de la imagen a 640x480. En el
panel Render pulsa el botón Shadows (sombras) que esta arriba en el centro, y el botón OSA
en el centro a la izquierda (La ventana de botones de renderizado). Esos últimos botones
habilitarán las sombras y el oversampling (alisado) el cual prevendrá los bordes de sierra.
La ventana de botones de renderizado
Ahora presione el botón RENDER o pulse F12. El resultado, tal como se muestra en Su
primer renderizado. ¡Felicidades!, es actualmente bastante lamentable. Aún necesitamos
poner materiales, y montones de detalles, tales como ojos, y cosas por el estilo.
Su primer renderizado. ¡Felicidades!
Materiales y Texturas
Es hora de dar a Gus algún buen material que simule una galleta:
•
Seleccione a Gus. Entonces, en la cabecera de la ventana de botones, seleccione la
ventana de materiales presionando el botón de la bola roja (El botón de la ventana de
botones de materiales.) o usando la tecla F5.
El botón de la ventana de botones de materiales.
- 40 -
•
La ventana de botones estará casi vacia porque Gus no tiene aún materiales asignados.
Para añadir un material, pincha en el Panel Material (donde están los dos triangulos,
uno hacia arriba y otro hacia abajo) y selecciona Add New (Añadir nuevo) (El botón en
el menú de los materiales.).
El botón en el menú de los materiales.
• La ventana de botones se llenará con Paneles y botones y un hueco con el nombre del
    material, que por defecto será "Material", que aparecerá próximo al botón cuadrado de
       color blanco. Cambie esto a algo más significativo, como GingerBread (galleta de
       jengibre).
• Modifique los valores como aparece en La ventana de botones del material y un
   primer material de jengibre. para obtener un primer material áspero.
La ventana de botones del material y un primer material de jengibre.
•
Presione el botón de menú en el area del panel de texturas (Panel texturas en la
ventana de materiales) y seleccione Add new. Con esto añadiremos una textura en el
primer canal. Llamela "GingerTex."
Panel texturas en la ventana de materiales.
•
Seleccione la ventana de texturas pinchando en el botón El botón de la ventana de
texturas. o presionando F6.
El botón de la ventana de texturas.
- 41 -
•
De las columnas de botones que aparecen en el panel Texture (Textura) seleccione
Stucci y configure todos los parámetros como en La ventana de los botones de textura
con una textura stucci..
La ventana de los botones de textura con una textura stucci.
•
Vuelva a la ventana de materiales (F5) y configure las pestañas Map Input y Map To
del panel de Texturas como en Configuración para la textura Stucci en la ventana de
botones del material.. Deseleccione el botón Col y seleccione el botón Nor, entonces
mueva el deslizador Nor a 0.75. Esos cambios harán que nuestra textura stucci actué
como un "bumpmap" (mapa de rugosidad) y haga que Gus parezca más de galleta.
Configuración para la textura Stucci en la ventana de botones del material.
•
Ahora añada una segunda textura, llamela "Grain", y seleccione solo la propiedad Ref
y un valor de 0.4 en el deslizador Var (Configuración para una textura adicional de
ruido en el canal 2.). La textura es una textura de Noise (Ruido).
Configuración para una textura adicional de ruido en el canal 2.
Dele al suelo un material apropiado, como el azul oscuro que se muestra en Un material muy
simple para el suelo..
- 42 -
Un material muy simple para el suelo.
Para darle algunos toques finales, le añadiremos ojos y otros detalles.
•
Primero haremos que la única capa visible sea la 1 pinchando con LMB en el botón de
la capa 1 (Los botones de visibilidad de las capas en la barra de herramientas.]]).
Esto ocultará las luces, la cámara y el suelo.
Los botones de visibilidad de las capas en la barra de herramientas.
• Situé el cursor en el centro de la cabeza de Gus. ¡Recuerde que está en 3D así que
       asegúrese de comprobar al menos dos vistas para comprobarlo!.
• Añada una esfera (SPACE>>ADD>>Mesh>>UVsphere). Se le preguntará por el
     número de Segments (Segmentos) (meridianos) y Rings: (Anillos) (paralelos) en los
     que se dividirá la esfera. El valor por defecto de 32 es más de lo que necesitamos aquí,
       así que usaremos un valor de 16 para ambos. La esfera está en la primera imagen
        arriba a la izquierda en la secuencia Secuencia de creación de los ojos..
• Disminuya la esfera escalándola (SKEY) con un factor de 0.1 en todas las
    dimensiones, entonces cambie a la vista lateral (NUM3) y escálela solo en la dirección
     horizontal (Tecla Y) un valor de 0.5 (vea las siguientes dos imágenes en Secuencia de
     creación de los ojos.).
Secuencia de creación de los ojos.
- 43 -
• Aplique un poco el Zoom si es necesario con NUM+, MW, o CTRL-MMB, y mueva
   la esfera (GKEY) a la izquierda para que esté en la mitad de la cabeza (como se
   muestra en la primera imagen de la segunda fila de Secuencia de creación de los
   ojos.).
• Vuelva a la vista frontal (NUM1) y mueva la esfera a la derecha. Colóquela donde
    Gus debería tener un ojo.
• Voltee un duplicado alrededor del cursor siguiendo la secuencia que aprendió cuando
    volteó el cuerpo de Gus. (Seleccione el cursor 3D, en modo Edición seleccione todo
     AKEY, y haga SHIFT-D, ESC, MKEY, Global X). Ahora Gus tiene dos ojos.
• Salga del modo Edición (TAB), y sitúe el cursor tan cerca como pueda del centro de la
     cara de Gus. Añada una nueva esfera y escálela y muevala exactamente como antes,
      pero hágala más pequeña y Colóquela más abajo y a la derecha del cursor, centrada
          sobre el vértices de la malla subdividida Creando una boca con herramientas de
          spinning (revolución).).
Creando una boca con herramientas de spinning (revolución).
•
Ahora, en los botones de Edición (F9), localice el grupo de botones en la parte
superior del Panel Mesh Tools (Herramientas de malla) (Los botones de la
herramienta Spin en la ventana de botones de Edición.). Configure Degr: a 90, Steps:
a 3, y verifique que esta pulsado el botón Clockwise:. Entonces, con todos los vértices
aún seleccionados, presione SpinDup. Esto creará tres duplicados de los vértices
seleccionados en un arco de 90 grados, centrados alrededor del cursor. El resultado
debería ser la boca de Gus, tal como se muestra en la última imagen de secuencia
mostrada en Creando una boca con herramientas de spinning (revolución)..
Los botones de la herramienta Spin en la ventana de botones de Edición.
- 44 -
Ahora que ha aprendido el truco, añada tres más de esas elipsoides para crear los botones de
Gus. Una vez que haya hecho un botón, puede simplemente salir del modo Edición, presionar
SHIFT-D para crear un duplicado, y mover el duplicado a su lugar, tal y como se muestra en
¡Gus completado!.
¡Gus completado!
Dé a los ojos un material parecido al chocolate, como el que se muestra en la parte superior
Algunos materiales de caramelo.. Dé a la boca un material blanco parecido al azúcar, como el
segundo que se muestra en Algunos materiales de caramelo., y dé a los botones un material
rojo, blanco y verde parecido de nuevo al azucar. Estos materiales son mostrados de arriba a
abajo en Algunos materiales de caramelo..
- 45 -
Algunos materiales de caramelo.
Una vez que haya terminado de asignar los materiales, haga la capa 10 visible de nuevo (ya
debe saber como), para que esas luces y la cámara tambien aparezcan, y haga un nuevo
renderizado (F12). El resultado debería asemejarse más o menos a esto Renderizado estático
de Gus una vez terminado..
Renderizado estático de Gus una vez terminado.
Salve su imagen, si así lo desea, presionando F3. Introduzca el nombre de su imagen en la
ventana de archivos y guardelo.
- 46 -
Su Primera Animación en 30 Minutos II
Construyendo un esqueleto (Rigging)
Si hubiésemos querido hacer una imagen estática, nuestro trabajo hasta este punto sería
suficiente, pero ¡queremos que Gus se mueva!. El siguiente paso será darle a Gus un
esqueleto, o armadura, con la cual se podrá mover. Esto se llama el arte del rigging. Gus
tendrá un esqueleto muy simple: cuatro extremidades (dos brazos y dos piernas) y una pocas
uniones (sin codos, solo con rodillas), pero sin pies o manos. Para añadir el esqueleto:
•
Situé el cursor donde debería estar el hombro, presione SPACE>>Add>>Armature.
Un objeto romboidal aparecerá, un hueso del sistema del esqueleto, que va desde el
cursor 3D al puntero del ratón. Situé el fin del hueso en la mano de Gus (Añadiendo el
primer hueso del brazo.) con LMB. Esto fijará el hueso y creará uno nuevo que partirá
del punto final del anterior, produciendo una cadena de huesos. De momento no
necesitamos más huesos, así que presione ESC para salir.
Añadiendo el primer hueso del brazo.
2. Estando en modo Edición, mueva el cursor hasta la unión de la pierna con el tronco y añada
un nuevo hueso (SPACE>>ADD>>Armature) hasta la rodilla. Presione LMB y un nuevo
hueso debería aparecer estomáticamente ahí. Lleve este hueso hasta el pie (Añadiendo el
segundo y el tercer hueso, una cadena de huesos en la pierna.).
Añadiendo el segundo y el tercer hueso, una cadena de huesos en la pierna.
- 47 -
Posición de los huesos: Los huesos que está añadiendo deformarán la malla del cuerpo de
Gus. Para producir un resultado correcto, intente situar las uniones de los huesos como se
muestra en las ilustraciones.
•
Ahora situé el cursor en el centro y seleccione todos los huesos con la Tecla A.
Duplíquelos con Shift-D salga de modo de movimiento con la Tecla ESC entonces
voltéelos con la Tecla M relativamente al cursor y al eje X Global como hizo con las
mallas (El esqueleto completo después de duplicarlo y voltearlo.).
El esqueleto completo después de duplicarlo y voltearlo.
Una vez que haya seleccionado todos los huesos (Tecla A), la ventana de botones de edición
debería mostrar un panel Armature Bones (huesos del esqueleto) el cual debería mostrar los
botones de la armadura (La ventana de botones de edición para una armadura.).
La ventana de botones de edición para una armadura.
Presione el botón Draw Names (Dibujar nombres) para ver los nombres de los huesos,
entonces SHIFT-LMB en los nombres en la ventana de botones de edición (La ventana de
botones de edición para una armadura.) para cambiarlos a algo más apropiado tal como
Arm.R, Arm.L, UpLeg.R, LoLeg.R, UpLeg.L, y LoLeg.L. Salga del modo Edición con
(TAB).
- 48 -
Renombrando los huesos: Es muy Importante que llame a sus huesos con un sufijo ''.L'' or
''.R'' para distinguir los que pertenecen a la izquierda (left) y los que pertenecen a la derecha
(right), así el editor de acciones (Action editor) será capaz de voltear automáticamente sus
poses.
Asignación del esqueleto (Skinning)
Ahora debemos conseguir que una deformación en el esqueleto provoque una deformación
proporcional en el cuerpo. Haremos esto con la técnica Skinning, la cual asigna los vértices a
los huesos de tal forma que los primeros están sujetos al movimiento de los últimos.
• Selecciona el cuerpo de Gus, entonces presionando la tecla SHIFT selecciona el
   esqueleto de tal forma que el cuerpo este morado y el esqueleto está de color rosa
   claro.
• Presiona CTRL-P para encajar el cuerpo al esqueleto. Un dialogo emergente aparecerá
    (La ventana emerge cuando encajamos un Objeto a una esqueleto.). Selecciona la
   entrada Use Armature (Usar esqueleto).
La ventana emerge cuando encajamos un Objeto a una esqueleto.
•
Un nuevo menú aparecerá, preguntándole si quiere que Blender no haga nada, cree
grupos de vértices vacíos o grupos de vértices poblados. (Opciones de Skinning
automático.).
Opciones de Skinning automático.
- 49 -
•
Usaremos la opción de skinning automático. Vaya y seleccione Create From Closest
Bones (Crear a partir de los huesos más cercanos).
Ahora seleccione únicamente el cuerpo de Gus y entre en modo Edición (TAB). Notará la
presencia en la ventana de botones de edición (Edit buttons) (F9) y en el panel Herramientas
de malla 1 (Mesh Tools 1), de un menú y botones para grupos de vértices (Vertex Group)
(Los botones del grupo de vértices en la ventana de botones de edición de una malla.).
Los botones del grupo de vértices en la ventana de botones de edición de una malla.
Presionando en el menú de botones un menú con todos los grupos de vértices disponibles
emergerá (seis en nuestro caso, pero con un verdadero personaje, con manos y pies
completamente equipados de huesos, ¡puedes tener docenas de ellos!) El menú con los grupos
de vértices automáticamente creados en el proceso de skinning.). Los botones Select
(Seleccionar) y Deselect (Deseleccionar) le mostrarán que vértices pertenecen a cada grupo.
El menú con los grupos de vértices automáticamente creados en el proceso de skinning.
Seleccione el grupo del brazo derecho (Arm.R) y, con todos los vértices deseleccionados
(Tecla A, si es necesario) presione Select. Debería ver algo como Gus en Modo Edición con
todos los vértices del grupo Arm.R seleccionados..
- 50 -
Gus en Modo Edición con todos los vértices del grupo Arm.R seleccionados.
Los vértices marcados con círculos amarillos en Gus en Modo Edición con todos los vértices
del grupo Arm.R seleccionados. pertenecen al grupo de deformación, pero no deberían
pertenecer. El proceso de autoskinning encontró que estaban muy cerca del hueso y los añadió
al grupo de deformación. No les queremos en este grupo porque, dado que algunos son de la
cabeza y otros son del pecho, añadirlos al grupo de deformación, deformaría esas partes del
cuerpo. Para eliminarlos del grupo, deselecciona todos los otros vértices, aquellos que
deberían permanecer en el grupo usando la caja de selección (Tecla B), pero usa MMB, no
LMB, para definir la caja, así todos los vértices que estén en la caja se deseleccionarán. Una
vez que solo los vértices ''indeseables'' estén seleccionados, presione el botón Remove (Los
botones del grupo de vértices en la ventana de botones de edición de una malla.) para
eliminarlos del grupo Arm.R. Deseleccione todos (Tecla A) entonces compruebe otro grupo.
Compruébelos todos y asegúrese de que se parecen a estos Los seis grupos de vértices..
Los seis grupos de vértices.
- 51 -
Grupos de vértices: Sea cuidadoso cuando asigne o elimine vértices de los grupos de
vértices. Si observa deformaciones inesperadas, puede haber olvidado algunos vértices, o
puede haber situado demasiados vértices en el grupo. Puede modificar sus grupos de
vértices en cualquier momento.
Otros detalles: Nuestras deformaciones solo afectaran al cuerpo de Gus, no a sus ojos,
boca o botones, los cuales son objetos independientes. Mientras que esto no es un problema
a considerar en esta simple animación, debe ser tenido en cuenta en proyectos más
complejos, por ejemplo emparentando o uniendo las distintas partes del cuerpo para crear
una malla única (describiremos en detalle esas opciones en los próximos capítulos).
Posando
Una vez que haya dado creado el esqueleto y se lo haya asignado a Gus puede comenzar a
jugar con él como si fuera un muñeco, moviendo sus huesos y viendo los resultados.
•
Selecciona únicamente la armadura, entonces selecciona Modo Posado (Pose Mode)
en el menú de los modos ("Mode" Menu) (El botón para cambiar al modo posado en
la barra de herramientas de la ventana 3D.). Esta opción solo aparecerá si una
armadura está seleccionada.
El botón para cambiar al modo posado en la barra de herramientas de la ventana 3D.
•
La armadura se volverá azul. Está ahora en Modo Posado. Si selecciona un hueso se
volverá azul claro, no rosa, y si lo mueve(TECLA G), o lo rota (TECLA R), ¡el cuerpo
se deformará!
¡Ahora está en modo posado!
- 52 -
Posición inicial: Blender recuerda la posición original de los huesos. Puede volver a poner el
esqueleto (armature) en dicha posición simplemente presionando el botón RestPos en el
panel de botones de edición de esqueletos (Armature Edit Buttons) (La ventana Editar
Botones para una armadura.).
Cinemática directa (FK) e inversa (IK):
Mientras manejamos los huesos en modo posado notarás que se comportan como cuerpos
rígidos, cuerpos inextensibles con juntas esféricas al final. Solo puedes mover el primer
hueso de la cadena y todos los otros le seguirán. Todos los huesos subsecuentes en la cadena
no podrán moverse, solo pueden ser rotados , así que si es rotado respecto al hueso anterior
de la cadena todos los hueso subsecuentes de la cadena seguirán su rotación. Este
procedimiento, llamado Cinemática directa (Forward Kinematics) es fácil de seguir, pero
precisar la localización hasta del último hueso de la cadena es difícil. Podemos utilizar otro
método, Cinemática Inversa (Inverse Kinematics) donde solo tenemos que definir la posición
del último hueso de la cadena, y el resto asume una posición, automáticamente calculada por
Blender, para mantener la cadena sin huecos. De este modo posicionar las manos y los pies
es mucho más sencillo.
Haremos que Gus ande definiendo cuatro poses diferentes relativas a cuatro diferentes estados
de una zancada. Blender hará el trabajo de crear una animación fluida.
•
Primero, verifique que está en el frame (imagen) 1 de la linea temporal. El número de
frames aparece en un botón a la derecha de la barra de herramientas de la ventana de
botones (El frame actual en la barra de herramientas de la ventana de botones.). Si
no está puesto a 1, póngalo ahora.
El frame actual en la barra de herramientas de la ventana de botones.
•
Ahora, rotando solo un hueso al mismo tiempo (Tecla R), levantaremos UpLeg.L y
doblaremos LoLeg.L hacia atrás mientras levantamos un poco Arm.R y bajamos otro
poco Arm.L, tal como se muestra en Nuestra primera pose..
- 53 -
Nuestra primera pose.
•
Seleccione todos los huesos con la Tecla A. Con el puntero del ratón en la ventana 3D,
presione la Tecla I. Un menú emergerá Asignando la pose al frame.. Seleccione
LocRot en este menú. Esto obtendrá la posición y la orientación de todos los huesos y
los guardará en una pose en el frame 1. Esta pose representa a Gus en la mitad de la
zancada, mientras esta moviendo su pierna izquierda hacia delante y sobre el suelo.
Asignando la pose al frame.
•
Ahora muévase al frame 11 introduciéndolo numéricamente o presionando la Tecla
Arriba. Entonces mueva a Gus a una posición diferente , como Nuestra segunda pose.,
con su pierna izquierda adelantada y la derecha retrasada, ambas ligeramente
dobladas. ¡Gus está caminando en el sitio!
- 54 -
Nuestra segunda pose.
• Seleccione todos los huesos de nuevo y presione la Tecla I para guardar la pose en el
   frame 11.
• Ahora necesitamos una tercera pose en el frame 21, con la pierna derecha levantada,
   porque estamos en el medio de la otra mitad de la zancada. Esta pose es el reflejo de la
  pose que hemos definido en el frame 1. Otra forma sería, volver al frame 1 y en el
  menú Armature en la cabecera de la ventana 3D seleccione la entrada Copy Pose
  (Copiar Pose) (Copiando la pose al buffer.). Ha copiado la pose actual al buffer.
Copiando la pose al buffer.
- 55 -
•
Vaya al frame 21 y pegue la pose con la opción Paste Flipped Pose (Pegar pose
volteada) en el menú Armature (Pegar la copia como una nueva, y volteada, pose.).
Este botón pegará la pose seleccionada, intercambiando las posiciones de los huesos
con el sufijo .L con aquellos huesos que tienen el sufijo .R, efectivamente ¡dándolos la
vuelta!
Pegar la copia como una nueva, y volteada, pose.
La pose está ahí pero ¡aún no ha sido guardada!. Debe presionar la Tecla I con todos los
huesos seleccionados.
• Ahora aplique el mismo procedimiento para copiar la pose del frame 11 al frame 31,
   también volteándola.
• Para completar el ciclo, necesitamos copiar la pose del frame 1 sin voltear al frame 41.
   Cópielo de la manera usual, y péguelo utilizando la entrada Paste Pose (Pegar pose).
    Finalice la secuencia guardando la pose con la Tecla I.
¡Gus anda!
El primer paso es el núcleo del proceso de caminar, y una vez que lo tenga definido hay
técnicas para hacer que un personaje ande a través de un camino complejo. Pero, para el
propósito de este capitulo de iniciación, este primer paso es suficiente.
•
Cambie a la ventana de Renderizado con (F10) y configure el comienzo (start) y el
final (end) de la animación a 1 y a 40 respectivamente (Configurando los botones de
renderizado para una animación.). Debido a que la imagen (frame) 41 es idéntica a la
imagen 1, solo necesitamos renderizar las imágenes que van de la 1 a la 40 para
producir el ciclo completo.
Configurando los botones de renderizado para una animación.
- 56 -
• Seleccione AVI Raw como el tipo de fichero que vamos a utilizar en el panel Formato
   (Format) (Configurando los botones de renderizado para una animación.). Mientras
   que esto no es una buena elección generalmente, principalmente por problemas de
   tamaño de archivo (como se explicará más tarde), tiene la ventaja de ser rápido y
      funcionar en cualquier computadora, así que cumple nuestras necesidades. (Puede
      también seleccionar el formato AVI Jpeg para obtener un fichero de un tamaño más
        reducido, pero utilizando la compresión por pérdidas Jpeg y obteniendo una película
          que algún reproductor externo puede no ser capaz de reproducir).
• Finalmente, presione el botón Animar (ANIM) en el panel Animación (Anim).
     Recuerde que todas las capas que quiera usar en la animación ¡deben ser
      seleccionadas!. En nuestro caso, las capas seleccionadas serán la 1 y la 10.
Nuestra escena es muy simple, y Blender probablemente renderizará las 40 imágenes en unos
pocos segundos. Mire como van apareciendo en pantalla.
Una vez que el renderizado se haya completado debería obtener un fichero llamado
0001_0040.avi en un subdirectorio render de su actual directorio - el mismo que contiene el
fichero .blend. Puede reproducir este fichero directamente en Blender presionando el botón
Reproducir (Play) que está debajo del botón Animar (ANIM) (Configurando los botones de
renderizado para una animación.). La animación se reproducirá una y otra vez. Para detenerla
presione ESC. Solo hemos producido un ciclo muy básico para poder andar . Hay muchas
más cosas en Blender, ¡pronto las descubrirá!.
- 57 -
PARTE II - MODELADO
Como has podido ver en el capítulo Introducción Rápida, la creación de una escena en 3D
necesita al menos tres cosas: Modelos, Materiales e Iluminación. En este capítulo
analizaremos en profundidad cada una de ellas. La Parte III tratará sobre Materiales, la Parte
IV sobre Texturas y la Parte V sobre Iluminación.
Una vez que hayas terminado con esta Parte puedes elegir Renderizado si quieres sacar
partido de los motores de renderizado de imágenes que tiene Blender, o también puedes optar
por leer la Parte VII para aprender todo sobre la animación en Blender.
Capítulos
•
•
•
•
•
•
•
•
•
•
•
•
Modo Objeto
Booleanos
Objetos Básicos
Modo Edición
Modelado Básico de Malla
Subdivisión de Superficies
Herramientas Arista y Cara
Modelado Avanzado de Malla
Curvas
Superficies
Texto
Meta Objetos
- 58 -
Modo Objeto
La geometría de una escena de Blender se construye a partir de uno o más objetos: luces,
curvas, superficies, cámaras, mallas y los objetos básicos descritos en Objetos Básicos. Cada
objeto puede ser movido, rotado y cambiado de tamaño en ObjectMode. Para cambios más
detallados en la geometría, se puede trabajar sobre la malla de un Objeto en EditMode (véase
Modo Edición). Una vez se ha añadido un objeto básico mediante el menú SPACE>>Add,
Blender cambia a modo EditMode por defecto si el objeto es una Malla (Mesh), una Curva
(Curve) o una Superficie (Surface). Se puede cambiar a ObjectMode presionando TAB. La
estructura de alambre del objeto, si la hay, debería aparecer en rosa, lo que significa que el
objeto está ahora seleccionado y activo.
Selección de objetos
Para seleccionar un objeto, pulse sobre él en RMB. Para seleccionar múltiples objetos,
mantenga pulsado SHIFT y pulse en RMB. Generalmente, el último objeto para seleccionar es
el que está activo: Aparece en rosa pálido, mientras que los objetos seleccionados no activos
aparecen en color morado. La definición de objeto activo es importante por varias razones,
incluyendo la "paternidad" de los mismos. Para deseleccionar el objeto activo, haga click
sobre él de nuevo con RMB, si hay varios objetos seleccionados pulse la tecla SHIFT para
mantener los otros como están. Pulse AKEY para seleccionar todos los objetos de la escena
(si no hay ninguno seleccionado en ese momento) o para deseleccionarlos todos (si uno o más
están seleccionados). BKEY activa Border select. Use la opción Border select para
seleccionar un grupo de objetos dibujando un rectángulo mientras mantiene pulsada LMB. Se
seleccionarán todos los objetos dentro del rectángulo o que estén en contacto con él.
Movimiento (traslación) de objetos
Para mover grupos de objetos, pulse GKEY para activar el modo Grab (modo Agarrar) para
todos los objetos seleccionados. Dichos objetos se verán como estructuras de malla de
alambre que pueden moverse con el ratón (sin pulsar ningún botón del mismo). Para
confirmar la posición nueva, pulse LMB o ENTER; para salir del modo Grab pulse RMB o
ESC. La cabecera de la ventana 3D muestra la distancia que se está moviendo el objeto. Para
restringir el movimiento a un solo eje del sistema global de coordenadas, entre en el modo
Grab, mueva el objeto en el eje deseado, y pulse MMB. Para desactivar esta restricción pulse
de nuevo MMB. Como nueva característica en la versión 2.3 se puede restringir el
movimiento a un eje dado pulsando XKEY, YKEY o ZKEY. Cada tecla restringe el
movimiento al eje correspondiente global00, tal como hace MMB. Una segunda pulsación de
la misma tecla restringe el movimiento al eje correspondiente local del objeto. Una tercera
pulsación de la misma tecla quita las restricciones. Se dibujan unas líneas para que se pueda
visualizar mejor la restricción. Una vez que el modo Grab está activado se puede introducir
la translación del objeto numéricamente simplemente tecleando el número. Esto permitirá
introducir la primera coordenada mostrada en la cabecera de la ventana 3D. Se puede
cambiar la coordenada con TAB, usando NKEY para salir/volver a entrar al modo de
introducción numérica, ENTER para finalizar y ESC para salir. BACKSPACE dejará los
valores originales. Nótese que debe usarse la tecla .KEY y no la NUM. para los decimales. Si
mantiene pulsada la tecla CTRL mientras mueve el objeto activará el modo snap (movimiento
por bloque), y el objeto se moverá en un número completo de unidades de Blender (cuadros
- 59 -
de la rejilla). El modo Snap termina cuando se suelta la tecla CTRL, por lo que debe
asegurarse de confirmar la posición antes de hacerlo. La ubicación de objetos seleccionados
puede dejarse al valor por defecto pulsando ALT-G.
Rotación de objetos
Para rotar objetos, active el modo Rotación (Rotate) pulsando RKEY. Al igual que en el
modo Grab, puede cambiarse la rotación moviendo el ratón, confirmar con LMB o ENTER,
cancelar con RMB o ESC. La rotación en el espacio 3D se produce alrededor de un eje, y hay
varias formas de definir dicho eje. Blender define un eje mediante una dirección y un punto
por el que pasa. Por ejemplo, por defecto la dirección de un eje es ortogonal a su pantalla. Si
está viendo la escena desde delante desde un lado o desde arriba el eje de rotación será
paralelo a una de las coordenadas globales del sistema de ejes. Si está viendo la escena desde
un ángulo el eje de rotación estará en ángulo también, lo que puede originar una rotación muy
extraña de su objeto. En ese caso necesitará mantener el eje de rotación paralelo a los ejes del
sistema de coordenadas. Active y desactive este modo pulsando MMB durante el modo
Rotación y vea el indicador de ángulo en la cabecera de la ventana. De igual modo, una vez
está en modo Rotación, puede pulsar XKEY, YKEY o ZKEY para restringir la rotación a uno
de los ejes de referencia globales. Pulsando XKEY-XKEY (dos veces XKEY) se restringe la
rotación alrededor del eje x de la referencia local del objeto. Esto mismo es válido para la
doble pulsación de YKEY y ZKEY. Como en el modo Grab, una tercera pulsación elimina las
restricciones. Es posible introducir números para una rotación exacta, al igual que con las
translaciones. Seleccione el punto por el que pasa el eje de rotación con el menú pertinente en
la cabecera de la ventana 3D, como se describe más abajo. (Los botones de selección de punto
de rotación.).
Los botones de selección de punto de rotación.
•
Centro del cuadro limitador (Bounding Box) - el eje pasa por el centro del cuadro
limitador de la selección. (Si sólo hay un objeto seleccionado, el punto usado es el
punto central del objeto, que puede no ser necesariamente el centro geométrico. En
Los botones de selección de punto de rotación. está en el medio del borde de la
derecha, marcado por un punto granate. Para más información sobre este punto véase
mesh_modelling_editmode.)
- 60 -
• Punto de la Mediana - el eje pasa por el punto de la mediana de la selección. Esta
    diferencia sólo es importante en el modo Edición, y el punto ''Mediana'' es el baricentro
     de todos los vértices.
• Cursor 3D - el eje pasa por el cursor 3D. El cursor puede colocarse en cualquier sitio
   que se desee antes de rotar. Puede usarse esta opción para realizar fácilmente ciertas
    translaciones al mismo tiempo que se rota el objeto.
• Centros de objetos individuales - cada objeto seleccionado recibe su propio eje de
   rotación, todos paralelos entre sí y que pasan por el punto central de cada objeto,
    respectivamente. Si selecciona sólo un objeto, conseguirá el mismo efecto que con el
     primer botón.
Si acaba de empezar a usar la rotación, no se preocupe demasiado por los detalles
precedentes. Practique con las herramientas de Blender y se irá haciendo una idea de cómo
trabajar con ellas. Manteniendo pulsada CTRL se pasa al modo Snap. En el modo Snap las
rotaciones están restringidas a 5 pasos. Manteniendo pulsada SHIFT se puede hacer un ajuste
fino. La rotación de los objetos seleccionados puede dejarse al valor por defecto pulsando
ALT-R.
Cambio de tamaño/imagen especular de objetos
Para cambiar el tamaño de los objetos pulse SKEY. Al igual que en el modo Agarrar y
Rotación cambie el tamaño moviendo el ratón, confirme con LMB o ENTER, y cancele con
RMB o ESC. El cambio de tamaño en 3D requiere un punto central. Este punto se define con
los mismos botones que para el punto de soporte del eje en la rotación (Los botones de
selección de punto de rotación.). Si aumenta el tamaño del objeto, todos los puntos del mismo
se alejarán del punto central seleccionado; si lo disminuye, los puntos se moverán hacia él.
Por defecto, los objetos seleccionados cambian de tamaño uniformemente en todas
direcciones. Para cambiar las proporciones (hacer el objeto más largo, ancho, etc.) puede
bloquear el proceso de escalado a uno de los ejes globales de coordenadas al igual que haría
para mover objetos. Para hacer esto entre el modo de cambio de tamaño, mueva el ratón un
poco en la dirección del eje sobre el que quiere ejercer la acción y pulse MMB. Para volver al
cambio de tamaño uniforme pulse MMB de nuevo. Podrá ver los factores de escala en la
cabecera de la ventana 3D. De nuevo todas las consideraciones referentes a restricciones con
respecto a un eje dado hechas en el modo Agarrar se mantienen, así como las de entrada
numérica de datos. De nuevo CTRL activa el modo "Por Bloque" o Snap, con un escalado
discreto a 0,1 pasos. Pulse SHIFT para un ajuste fino. El escalado de objetos seleccionados
puede ponerse al valor por defecto pulsando ALT-S. La imagen especular se hace con una
aplicación diferente de la herramienta de escalado. Dicha imagen no es más que escalar con
un factor negativo en una dirección. Para hacer una imagen especular en los ejes X o Y pulse
SKEY para ir al modo escalado, y luego NKEY para pasar a introducción numérica de datos.
Seleccione las coordenadas deseadas e indique ''-1'' como factor de escala.
- 61 -
Panel de propiedades de transformación
Supongamos que quisiera que se mostrasen la posición/rotación/escalado de su objeto en
números. O que quisiera introducir los valores de dichos parámetros de su objeto
directamente. Para hacerlo, seleccione el objeto que quiere editar y pulse NKEY. El panel
Transform Properties (Propiedades de transformación) (El cuadro de diálogo numérico) se
muestra en pantalla. Pulse SHIFT-LMB y un número para introducir un valor, luego pulse OK
para confirmar los cambios o mueva el ratón fuera de la ventana para cancelar.
El cuadro de diálogo numérico
El panel también muestra el nombre del objeto en el botón OB:. Puede editarlo desde este
lugar.
Duplicación
Para duplicar un objeto pulse SHIFT-D y se creará una copia idéntica de los objetos
seleccionados. La copia se crea en la misma posición, en modo Agarrar. Será un objeto nuevo
a excepción de que comparte Material, Textura e IPO con el original. Estos atributos se
asocian a las dos copias, y el cambio de un material de uno de los objetos también afecta al
otro. (Puede hacer materiales distintos para cada uno, como se describe en el capítulo de
Materiales). Puede crear un Duplicado Asociado en vez de un duplicado real pulsando ALT-
D. Esto creará un objeto nuevo con todos sus datos asociados al objeto original. Si se ha
modificado uno de los objetos asociados en el Modo Edición todas las copias también serán
modificadas.
Emparentar (Agrupar)
Para crear un grupo de objetos primero debe convertir a uno de ellos en padre de los otros.
Para hacer esto, seleccione al menos dos objetos, pulse CTRL-P, y confirme la pregunta
¿Hacer padre?. El objeto activo se convertirá en padre de todos los demás. El centro de todos
los hijos estará ahora asociado al centro del padre por una línea de puntos. En este momento,
el arrastre, la rotación y el escalado del padre tendrán el mismo efecto en los hijos. El
Emparentado es una herramienta muy importante con muchas aplicaciones avanzadas, como
se verá en capítulos posteriores. Pulse SHIFT-G con un objeto activo para ver el menú de
Selección de Grupo (Selección de grupo). Este menú contiene:
- 62 -
• Children - Selecciona todos los hijos del objeto activo y los hijos de los hijos hasta la
   última generación.
• Immediate Children - Seleccionar todos los hijos del objeto activo pero no los hijos
   posteriores.
• Parent - Selecciona el padre del objeto activo.
• Objects on shared layers - En realidad esto no tiene nada que ver con padres e hijos.
   Selecciona todos los objetos de la(s) misma(s) capa(s) del objeto activo.
Selección de grupo
Mueva el hijo al padre borrando su origen (selecciónelo y pulse ALT-O). Borre una relación
parental con ALT-P. Puede (Liberación de hijos):
• Clear parent - Libera los hijos, que vuelven a su ubicación, rotación y tamaño
      originales.
• Clear parent...and keep transform - Libera los hijos y mantiene la ubicación, rotación
     y tamaño que les dio el padre.
• Clear parent inverse - Coloca a los hijos con respecto al padre como si se hubieran
   colocado en la referencia Global. Esto borra definitivamente la transformación del
   padre sobre los hijos.
Figure 5-4. Liberación de hijos
Seguimiento (Tracking)
Para rotar un objeto de manera que se oriente hacia otro y mantener esta orientación si uno de
los objetos se mueve seleccione al menos dos objetos y pulse CTRL-T. Aparecerá un cuadro
de diálogo preguntándole si quiere usar una restricción de Seguimiento o el sistema de pista
antiguo (Pre-2.30). La restricción de Pista se analizará en character_constrains y es el método
recomendable. Se explicará aquí brevemente el sistema antiguo de seguimiento, de manera
que se asume que tiene seleccionado Old Track en el cuadro de diálogo. Por defecto el objeto
inactivo sigue al objeto activo de manera que los puntos de su eje local Y apuntan al objeto al
que se hace el seguimiento. Sin embargo, esto puede no ocurrir si el objeto "seguidor" tiene
ya una rotación. Se puede hacer un seguimiento con corrección cancelando la rotación (ALT-
R) de este objeto. La orientación del objeto "seguidor" también se puede fijar con el eje Z
- 63 -
hacia arriba. Para cambiar esto, seleccione dicho objeto, cambie la ventana de Botones a
, o F7) y seleccione el eje de seguimiento en la primera fila de seis
Contexto de Objeto (
botones, así como el eje que mirará hacia arriba en la segunda, que está en el panel Anim
Setting. (Configuración del eje de seguimiento).
Configuración del eje de seguimiento
Para eliminar una restricción de seguimiento, seleccione el objeto "seguidor" y pulse ALT-T.
Al igual que en la eliminación de las restricciones entre padres e hijos, debe elegir si quiere
conservar o perder la rotación impuesta por el seguimiento.
Otras Acciones
Borrado
Pulse XKEY o DEL para borrar los objeetos seleccionados. El uso de XKEY es más práctico
para la mayoría de la gente, porque se puede pulsar fácilmente con la mano izquierda sobre el
teclado.
Unión
Pulse CTRL-J para unir todos los objetos seleccionados en un único objeto. (Los objetos debe
ser del mismo tipo). El punto central del objeto resultante se obtiene del objeto activo anterior.
Seleccionar enlaces
Pulse SHIFT-L para seleccionar todos los objetos que compartan un enlace con el objeto
activo. Puede seleccionar objetos que compartan enlace IPO, de datos, de material, o de
textura (Selección de enlaces.).
Selección de enlaces.
- 64 -
Booleanos
Las operaciones booleanas son acciones concretas que pueden usarse únicamente con objetos
de tipo malla. Mientras que funcionan para todos los objetos malla, están especialmente
indicadas para usarse con objetos cerrados sólidos con una región interna y externa bien
definidas. Así, es muy importante definir consistentemente las normales en cada objeto, es
decir, todas las normales de cada objeto deben apuntar hacia afuera. Vea
chapter_mesh_modeling_A para más información sobre normales y sobre por qué pueden
producirse normales apuntando parcialmente hacia fuera y parcialmente hacia dentro. En el
caso de objetos abiertos, el interior es definido matemáticamente extendiendo las caras del
borde del objeto hasta el infinito. Como tal, puede encontrar que se produzcan resultados
inesperados en estos objetos. Una operación booleana nunca afecta a los operandos originales;
el resultado es siempre un nuevo objeto de Blender. Las operaciones booleanas se invocan
seleccionando exactamente dos mallas y presionando WKEY. Hay tres tipos de operaciones
booleanas para escoger en el menú emergente: Intersect (intersección), Union (unión) y
Difference (diferencia). Las operaciones booleanas también toman en consideración
materiales y texturas UV, produciendo objetos con índices de materiales u objetos
multimapeados UV.
Opciones para operaciones booleanas.
Considere el objeto Opciones para operaciones booleanas..
• La operación Intersect crea un nuevo objeto cuya superficie encierra el volumen
    común a ambos objetos originales.
• La operación Union crea un nuevo objeto cuya superficie encierra el volumen de
    ambos objetos originales.
• La operación Difference es la única en la que el orden de selección es importante. El
      objeto activo (púrpura claro en vista de alambre) es restado del objeto seleccionado.
      Es decir, la superficie del objeto resultante encierra un volumen que corresponde al
     volumen del objeto seleccionado e inactivo, pero no al objeto seleccionado y activo.
Objetos resultantes para: intersección, unión, diferencia (de arriba a abajo). muestra el
resultado de las tres operaciones.
- 65 -
Objetos resultantes para: intersección, unión, diferencia (de arriba a abajo).
El número de polígonos generados puede ser muy grande comparado con las mallas
originales, especialmente al usar objetos cóncavos complejos. Además, los polígonos
generados pueden ser generalmente de calidad pobre: muy largos y delgados y en ocasiones
muy pequeños. Intente usar el Decimator de mallas (botones EditButtons F9) para reparar este
problema. Los vértices en la malla resultante que caen en la frontera de los dos objetos
originales, frecuentemente no encajan, y los vértices del borde son duplicados. Esto es bueno
en algunas circunstancias puesto que significa que puede seleccionar partes de la malla
original seleccionando un vértice en el resultado y presionando el botón Select Linked
(Seleccionar vinculados, LKEY). Ello es útil si desea asignar materiales y similares al
resultado.
Nota: En ocasiones la operación booleana puede fallar con un mensaje diciendo "An internal
error occurred -- sorry" ("Ocurrió un problema interno"). Si ello ocurre, intente mover o
rotar los objetos ligeramente.
- 66 -
Objetos Básicos
El objeto principal de una escena en 3D es normalmente una Malla (Mesh). En este capítulo
primero vamos a enumerar los objetos básicos de malla, o primitivas, para despues seguir con
una larga serie de secciones describiendo en detalle las acciones que se pueden realizar sobre
objetos de malla.
Para crear un Objeto Básico pulse SPACE y seleccione "ADD>>Mesh", o acceda al menú
''add'' pulsando SHIFT-A o simplemente mantenga presionado LMB sobre la ventana 3D por
más de medio segundo. Seleccione del menú el objeto básico que le gustaría crear. En las
líneas que siguien describiremos cada objeto básico o primitive que se puede crear en Blender.
Objetos Básicos o Primitivas también muestra la variedad de objetos básicos que pueden
crearse.
Objetos Basicos o Primitivas.
Plano (Plane)
Un plano estándard que contiene cuatro vertices, cuatro aristas y una cara. Es como una hoja
de papel sobre una mesa; no es realmente un objeto tridimensional ya que es totalmente plano
y no tiene espesor. Entre los objetos que pueden crearse a partir de planos se incluyen pisos,
espejos y manteles.
Cube (Cubo)
Un cubo estándard que contiene ocho vertices, doce aristas, y seis caras, es un objeto
tridimensional real. Entre los objetos que pueden crearse a partir de cubos podemos citar
dados, cajas y cofres.
- 67 -
Circle (Circunferencia)
Una circunferencia estándard compuesta de n vertices. El número de vertices puede indicarse
en la ventana que aparece cuando se crea la circunferencia. Mientras más vertices posea, más
suave será el contorno. Ejemplos de objetos creados a partir de circunferencias son discos,
platos o cualquier tipo objeto plano y redondo.
UVSphere (EsferaUV)
Una esferaUV estándard está hecha de n segmentos y m anillos. El nivel de detalle puede
indicarse en la ventana emergente que aparece cuando se crea la esferaUV. Aumentando el
numero de segmentos y anillos, la superfície de la esferaUV se suaviza. Los segmentos son
como meridianos terrestres, van de un polo al otro, en cambio los anillos son como paralelos
terrestres. Ejemplos de objetos que pueden crearse a partir de esferasUV son pelotas, cabezas
o las perlas de un collar.
Nota: Si crea una esferaUV de seis segmentos y seis anillos, obtendrá algo que en la
VistaSuperior es un hexágono (seis segmentos), con cinco anillos más dos puntos en los
polos. O sea, un anillo menos que los esperados, o dos más si cuenta los polos como anillos
de radio 0.
Icosphere (Icoesfera)
Una icoesfera está hecha de triangulos. El número de subdivisiones puede especificarse en la
ventana que aparece cuando se crea la Icosesfera; aumentando el número de subdivisiones se
hace más pulida la superficie de la icoesfera. Una Icoesfera de nivel 1 es un icosaedro, un
sólido con 20 caras triangulares equiláteras. Cualquier nivel de subdivisión mayor subdividirá
cada cara triangular en cuatro triangulos, resultando en una apariencia más esférica cada vez.
Las icoesferas se utilizan normalmente para obtener una disposición de los vertices más
isotrópica y económica que en una esferaUV.
Cylinder (Cilindro)
Un cilindro estándard hecho de a partir de una sección circular de n vertices. El número de
vertices de sección transversal circular puede indicarse en la ventana emergente que aparece
cuando se crea el objeto; mientras mayor sea el número de vertices, más suave será la sección
circular transversal. Algunos objetos que pueden crearse a partir de cilindros incluyen barras y
manijas.
Tube (Tubo)
Un tubo estándard hecho de n vertices. El número de vertices en la sección transversal
circular hueca puede especificarse en la ventana emergente que aparece cuando se crea el
objeto; a mayor número de vertices más suave se vuelve la sección circular hueca. Entre los
objetos que pueden crearse a partir de tubos, podemos citar caños o vasos. (La diferencia
básica entre un cilindro y un tubo es que el primero posee sus extremos cerrados.)
- 68 -
Cone (Cono)
Un cono estándard hecho de n vertices. El número de vertices en la base circular puede
especificarse en la ventana emergente que aparece cuando se crea el objeto; a mayor número
de vertices más suave se vuelve la base circular. Entre los objetos que pueden crearse a partir
de conos, podemos citar púas o sombreros de punta.
Grid (Rejilla o cuadrícula)
Una cuadrícula estándard hecha de n por m vertices. La resolución del eje X y el eje Y puede
especificarse en la ventana emergente que aparece cuando se crea el objeto; cuanto más alta
sea la resolución, mayor será el número de vertices creados. Entre los objetos que pueden
crearse a partir de cuadrículas se incluyen paisajes (con la herramienta de edición
proporcional o PET) y otras superficies orgánicas.
Monkey (Mono)
Es un regalo de la vieja NaN a la comunidad y es vista como una broma de los programadores
o "huevo de Pascuas". Crea una cabeza de mono (de hecho, de "mona") una vez que se pulsa
sobre el botón Oooh Oooh Oooh. El nombre de la mona es Suzanne y es la mascota de
Blender.
Modo Edición
Cuando se trabaja con objetos geométricos en Blender, se lo puede hacer en dos modos:
Modo Objeto y Modo Edición. Básicamente, como se vio en la sección anterior, las
operaciones en Modo Objeto afectan a la los objetos completos, y las operaciones en Modo
Edición solo afectan a su geometría pero no a sus propiedades globales como la Posición o la
Rotación. En Blender puedes pasar de un modo al otro mediante TAB.
El Modo Edición funciona solamente con un objeto a la vez: el objeto activo. Fuera de Modo
Edición los objetos se dibujan en color rosado en la Ventana 3D (en modo alambre) cuando
son seleccionados de lo contrario aparecen en color negro. El objeto Activo en Modo Edición
se dibuja en color negro, pero cada vértice es resaltado en color rosado (Dos piramides, una
en ModoEdición (izquierda) y una en Modo Objeto (derecha).). Los vértices seleccionados
son dibujados en color amarillo (Cubo con los vértices seleccionados en amarillo.) y, si se
encuentran presionados los botones apropiados(Draw Faces y Draw Edges) en el Panel Mesh
Tools 1 del Contexto Edición (F9) también se resaltarán las caras y las aristas.
- 69 -
Dos piramides, una en ModoEdición (izquierda) y una en Modo Objeto (derecha).
Cubo con los vértices seleccionados en amarillo.
Estructuras: Vértices, Aristas y Caras
En las mallas básicas, todo se construye a partir de tres estructuras: Vértices, Aristas y Caras.
(Aquí no estamos incluyendo a Curvas, NURBS, etc.) Pero no hay razón para desanimarse:
esta simplicidad nos provee un cúmulo de posibilidades que serán la base para todos nuestros
modelos.
Vértices
Un vértice es elementalmente un punto o una posición en el espacio 3D. Normalmente es
invisible al renderizar y en Modo Objeto. (No confundir el punto central de un objeto con un
vértice, es similar pero es más grande y además no puedes seleccionarlo.) Para crear un nuevo
vértice, cambia a ModoEdición, mantén presionada CTRL, y pulsa con el BIR. Por supuesto,
como la pantalla de la computadora es bidimensional, Blender no puede determinar las tres
coordenadas del vértice a partir de un click de ratón, por lo que el nuevo vértice se ubica sobre
el plano de profundidad del cursor 3D "dentro" de la pantalla. Cualquier vértice seleccionado
previamente será conectado automáticamente al nuevo por medio de una arista.
- 70 -
Aristas
Una arista siempre conecta dos vértices con una linea recta. Las aristas son los "alambres" que
vez cuando un malla se ve en la vista de alambre. Normalmente son invisibles en la imagen
renderizada. Se usan para construir caras. Crea una arista seleccionando dos vértices y
pulsando TECLAF.
Caras
Una Cara es la estructura de más alto nivel en una malla. Las caras se usan para construir la
superficie del objeto propiamente dicha. Las caras son lo que ves cuando renderizas una
malla. Se la define cómo el área entre tres o cuatro vértices, con una arista en cada lado. Los
triángulos siempre funcionan bien porque siempre son planos y fáciles de calcular. Ten
cuidado al crear caras de cuatro lados, porque internamente son separados en dos triángulos.
Las caras de cuatro lados solo funcionan bien si la cara es practicamente plana (todos sus
puntos descansan en un plano imaginario) y convexa (en ninguna esquina el ángulo es mayor
o igual a 180 grados). Este es el caso con las caras de un cubo por ejemplo. (Esta es la razón
por la que no pueden verse ninguna diagonal en modo alambre, porque dividiría cada cara
cuadrada en dos triángulos. Aunque tu puedes crear un cubo con caras triangulares, solo se
vería más confuso en Modo Edición.) Sin embargo, el área entre tres o cuatro vértices,
delineada por aristas, no tiene que ser una cara necesariamente. Si esta área no tiene una cara,
será simplemente transparente o inexistente en la imagen renderizada. Para crear una cara,
selecciona tres o cuatro vértices y pulsa TECLAF.
Modos Vértice, Arista y Cara
En Modo Edición hay tres modos diferentes de selección:
• Modo Vértices. Pulse TAB y seleccione Vértices del menú. Los vértices seleccionados
       se dibujan en amarillo y los deseleccionados en color rosa.
• Modo Arista. Pulse CTRL-TAB y seleccione Aristas del menú. En este modo, los
    vértices no son dibujados. En su lugar, las aristas seleccionadas son dibujadas en
    amarillo y las deseleccionadas tienen un color negro.
• Modo Caras. Pulse CTRL-TAB y seleccione Caras del menú. En este modo, las caras
    se dibujan con un punto de selección en medio de la misma. Éste se usa para
     seleccionar la cara. Las caras seleccionadas se dibujan en amarillo con los puntos de
    selección en naranja; y las deseleccionadas se dibujan en negro.
Vea Menú de selección de Modo Edición.. Casi todas las herramientas de modificación están
disponibles en los tres modos. Por lo que pudes Rotar, Escalar y Extrudir etc. en todos los
modos. Obviamente, rotar y escalar un vértice simple no hará nada útil, por lo que algunas
herramientas son más o menos aplicables en algunos modos.
- 71 -
Menú de selección de Modo Edición.
Puede también acceder a los diferentes modos seleccionando uno de los tres botones en la
barra de herramientas. Vea Botones de selección de Modo Edición. Modos Vértices, Aristas y
Caras de izquierda a derecha.. Usando los botones, puede también entrar en modos mixtos al
hacer clic SHIFT-BIR en los botones.
Cuando se cambia de modo, desde Vértices a Aristas y desde Aristas a Caras, las partes
seleccionadas seguirán estándolo si forman un conjunto completo en el nuevo modo. Por
ejemplo, si las cuatro aristas de una cara están seleccionadas, cuando se cambie del modo
Aristas al de Caras, éste mantendrá la cara seleccionada. Todas las partes seleccionadas que
no formen un conjunto completo en el nuevo modo, serán deseleccionadas. Vea Ejemplo
Modo Vértice, Ejemplo Modo Arista, Ejemplo Modo Cara y Ejemplo Modo Mixto para
ejemplos de los diferentes modos.
Botones de selección de Modo Edición. Modos Vértices, Aristas y Caras de izquierda a
derecha.
Ejemplo Modo Vértice
Ejemplo Modo Arista
- 72 -
Ejemplo Modo Cara
Ejemplo Modo Mixto
Edición Básica
La mayoría de las operaciones simples de Modo Objeto (como seleccionar, mover, girar y
escalar) funcionan de manera idéntica sobre vértices a como lo hacen sobre objetos. Por lo
tanto puedes aprender muy rápido cómo utilizar las operaciones básicas de Modo Edición. La
única diferencia notable es un nueva opción para escalar ALT-S que escala los vértices
seleccionados en la dirección de las normales (achica-engorda). Por ejemplo, la piramide
truncada en Pirámide truncada, fue creada con los siguientes pasos:
• Agrega un cubo en una escena vacía. Entra en Modo Edición.
• Asegurate que todos los vértices estén deseleccionados (rosa). Usa la selección por
      área (TECLAB) para seleccionar los cuatro vértices de la parte superior.
• Verifica que el centro de escalado esté seteado como cualquier cosa excepto el cursor
    3D (ver BSG.EDT.F.MAK.OB1), luego cambia a Modo Escalar (SKEY), reduce el
   tamaño y confirma con BIR.
• Sal de Modo Edición pulsando TAB.
- 73 
');
INSERT INTO temas (id_temas, nb_temas, descrip_temas) VALUES (5, 'Guía de Urbanterror                                                                                 ', 'Traduccion B3 & Rcon
Buenas de nuevo, en mi lucha por tener todo lo relacionado al Urban Terror traducido a Español, me he currado otra traducción, esta vez con los comandos del famoso bot B3 para servidores del Urban, por si hay alguien que use este bot en sus servidores, o le dan acceso como admin en servidores que lo tengan. Ojo que cada server pueden tener diferentes privilegios en diferente niveles pero los comandos son estos. para los que recién incursionan por el urban antes de cada comando poner 
el símbolo de exclamacion Ej: !fa 

Comandos para usuarios con un nivel de acceso de 0 a 1
Comandos públicos para todo el mundo, registrado o no

forgive
Perdonar a un jugador de tu equipo que te ha matado.

forgiveall
Perdonar a todos los jugadores de tu equipo que te han matado

forgivelist
Muestra una lista de todos los jugadores de tu equipo que te han disparado

forgiveprev
Perdonar al último jugador de tu equipo que te ha matado

grudge [<nick>]
Reñir a un jugador de tu equipo por dañarte, este jugador no será autoperdonado

help (h) [<comando|nivel>]
Muestra la ayuda para usar un comando, puedes usar *<comando> para mostrar resultados parciales

mapstats [<nick>]
Muestra las estadísticas del mapa actual para un jugador

register
Te registra a ti mismo como usuario

regtest
Muestra tu estado de usuario actual

testscore <nick>
Muestra cuanto puntos obtendrías si mataras a <nick>

time
Muestra la hora actual del servidor




Comandos para usuarios con un nivel de acceso de 2 a 100
Usuarios asiduos

maps
Muestra las rotaciones de mapas del servidor

nextmap
Muestra el siguiente mapa en la rotación

seen <nick>
Muestra cuándo fué visto el usuario por última vez




Comandos para usuarios con un nivel de acceso de 20 a 100
Moderadores

admins
Muestra todos los administradores conectados

b3
Muestra la información de la versión del b3

forgiveinfo <nick>
Muestra los puntos por matar a compañeros de equipo de un jugador

greeting [<greeting>]
Configura o muestra tus saludos

list
Muestra todos los jugadores conectados

say
Dice un mensaje a todos los jugadores

spam (s) <nick> <message>
Envia un mensaje predefinido a todos los jugadores

spams
Muestra una lista con los mensajes predefinidos

warn (w) <nick> [<razón>]
Avisa a un jugador

warninfo (wi) <nick>
uestra cuantos puntos de aviso tiene un jugador

warnremove (wr) <nick>
Borra el último aviso que ha obtenido un jugador

warns
Muestra una lista con los avisos

warntest (wt) <razón>
Prueba un aviso




Comandos para usuarios con un nivel de acceso de 40 a 100
Administradores

admintest
Muestra el estado actual de tu usuario

aliases (alias) <nick>
Muestra todos los alias de un jugador

baninfo (bi) <nick>
Muestra cuantos baneos tiene un jugador

find <nick>
Intenta encontrar a un jugador conectado

kick (k) <nick> [<razón>]
Echar a un jugador

leveltest (lt) [<nick>]
Muestra el estado de un usuario

scream <message>
"Grita" un mensaje a todos los jugadores

tempban (tb) <nick> <duración> [<razón>]
Banea temporalmente a un jugador




Comandos para usuarios con un nivel de acceso de 60 a 100
Administradores "Completos"

ban (b) <nick> [<razón>]
Banear a un jugador permanentemente

forgiveclear <nick>
Limpia los puntos por matar a compañeros de equipo de un jugador

spank (sp) <nick> [<razón>]
Azota a un jugador, traviesillo!!!

unban <nick>
Des-banea a un jugador




Comandos para usuarios con un nivel de acceso de 80 a 100
Administradores Seniors

clear [<jugador>]
Limpiar todos los puntos por avisos y muertes de compañeros de equipo

lookup (l) <nick>
Busca a un jugador en la base de datos

makereg (mr) <nick> <grupo>
Convierte a un usuario en "usuario asiduo" (nivel 2)

map <map>
Cambia el mapa actual al mapa seleccionado

restart
Reinicia el bot b3

warnclear (wc) <nick>
Limpia todos los avisos de un jugador




Comandos para usuarios con un nivel de acceso de 90 a 100
Super Administradores

clientinfo <nick> <field>
Consigue la información de un cliente

cmdlevel <comando> <nivel>
Configura el nivel de un comando

delgroup <grupo>
Elimina a un grupo y elimina todos los clientes que haya en el grupo

editgroup <grupo> <-n|-k|-l> <value>
Cambiar la configuración de un grupo

groups <nick>
Muestra las listas de los grupos de todos los jugadores

newgroup <palabra clave> <nivel> <nick>
Crea un nuevo grupo

pause <duración>
Pone en pausa el parseo del bot

putgroup <cliente> <grupo>
Añade a un cliente al grupo seleccionado

rebuild
Sincronizar jugadores conectados

ungroup <cliente> <grupo>
Quitar a un cliente de un grupo





Comandos para usuarios con un nivel de acceso de 100
Solo para dioses

die
Apagar el bot b3

disable <plugin>
Deshabilita un plugin

enable <plugin>
Habilita un plugin deshabilitado

reconfig
Recarga todas las configuraciones

////****////****////****////****////****////****////****////****////****////****////****////****////****////****////****////

Siguiendo con el te y para no Olvidar la famosa /Rcon ,para los de la vieja guardia no hace falta hablar mucho de del /Rcon pero a los mas nuevos les comentos que el /Rcon son los comandos que ya bienen en juego y que todabia hay servidores que los usa, personalmente recuerdo averlo usado en mi primer server caserito (e incluso algunos sigo usando) que con ayuda e podido levantar en mi makina para conpartir horas con unos amigos y con gente del clan que en su momento aviamos creado ,volver a leerlos me traen recuerdos jajajaaja  

COMANDOS DE ADMINISTRACIÓN

• /rconpassword ''''*****'''' // Introducir contraseña para obtener poderes de administrador. Es recomendable hacerlo desde el menú por motivos de seguridad.
• /rcon status // Provee la siguiente información de todos los jugadores del servidor: Espacio que ocupa (“slot”), nombre (“nick”), estado de la conexión (“ping”) e IP
• /rcon dumpuser "número" // Información detallada del jugador seleccionado.
• /rcon kick ''''nombre/número'''' // Expulsar a un jugador del servidor. Detrás va la razón, opcional.
• /rcon forecteam ''''blue/red/spectator/free'''' // Obligas a un jugador a pasarse al equipo elegido, al estado de observación o al equipo con menos jugadores (“free”).
• /rcon slap ''''nombre/número'''' // Dar un golpe a un jugador como advertencia.
• /rcon nuke "nombre/número" // Manda un ataque aéreo a un jugador como advertencia.
• /rcon '''' '''' // Enviar mensaje en la parte superior izquierda.
• /rcon say '''' '''' // Eniar mensaje como adminstrador en la parte inferior izquierda.
• /rcon bigtext '''' '''' // Enviar mensaje en grande en la parte superior.
• /rcon mute ''''nombre/número'''' // Los mensajes enviados por tal jugador no serán vistos.
• /rcon map '''' '''' // Carga un mapa a elección.
• /rcon restart // Reinicia la partida.
• /rcon reload // Recarga el "server.cfg".
• /rcon pause // Detiene y reanuda el juego.
• /rcon pause map // Detiene y reanuda el juego al finalizar la ronda.
• /rcon exec ''''server.cfg'''' // Recarga la configuración del servidor.
• /rcon quit // Reinicia el servidor.
• /rcon ban ''''nombre/número/IP'''' (''''minutos'''')// Prohibe la entrada a un jugador en el servidor. Puede ser temporal o permanente.

Para poder prohibir la entrada a un jugador (“banear”) se debeañadir esto al archivo sercer.cfg: set filterBan1
Todos los jugadores baneados aparecerán en “banlist.txt”
• /rcon addIP ''''IP'''' para añadir una IP a la lista de jugadores baneados. (Tras concluir el mapa).
• /rcon removeIP ''''IP'''' para quitar una IP de la lista de jugadores baneados.

Cómo permitir árbitros en el servidor:
• /g_referee "1" // (0 = no permitidos)
• /g_refpass ''''*****'''' // Configurar la contraseña para los árbitros.
Cómo abilitar/desabilitar el poder de “banear” temporalmente de un árbitro
• /g_refNoBan ''''0/1'''' // (0 = pueden banear, 1 = no pueden banear)



COMANDOS DE ÁRBITRO

• /reflogin ''''*****'''' // Introducir contraseña para obtener poderes de árbitro.
• /ref pause // Pausa una partida (solo con matchmode a 1).
• /ref resume // Reanuda una partida anteriormente pausada.
• /ref restart // Reinicia la partida.
• /ref forecteam ''''blue/red/spectator/free'''' // Obligas a un jugador a pasarse al equipo elegido.
• /ref mute ''''nombre/número'''' // Los mensajes enviados por tal jugador no serán vistos.
• /ref kick ''''nombre/número'''' // Expulsar a un jugador del servidor. Detrás va la razón, opcional.
• /ref ban ''''nombre/número'''' ''''minutos'''' // Prohibir la entrada a un jugador en el servidor durante un número determinado de minutos.
• /ref help // Ayuda acerca de la función y comandos de un árbitro.
• /ref resign // Dejar de ser arbitro para volver a ser un jugador normal.

CONFIGURACIÓN DEL SERVIDOR


-:Nombre del servidor & Mensajes de bienvenida:-

• set sv_hostname "" // Nombre del servidor.
• set g_motd "" // Mensaje del día, mostrado al conectarse al servidor.
• set sv_joinmessage "" // Mensaje de entrada, mostrado al entrar a la partida.


-:Configuraciones generales:-

• set sv_maxclients "12" // Número máximo de huecos disponibles (slots) en el servidor para jugadores. Usar más de 16 no es recomendado ya que podría producir la interrupción de la conexión (lag).
• set g_maxGameClients "0" // Número máximo de jugadores que pueden jugar, el resto serán forzados a ser espectadores. (0 = todos).
• set sv_privateClients "0" // Número de huecos privados reservados para aquel que entre con contraseña.
• set g_gametype "4" // 0=FreeForAll, 3=TeamDeathMatch, 4=Team Survivor, 5=Follow the Leader, 6=Capture and Hold, 7=Capture The Flag, 8=Bombmode. (Define el tipo de juego).
• sets sv_dlURL "urbanterror.net" // Asigna la dirección de la auto-descarga de mapas.


-:Contraseñas:-

• set rconpassword "" // Contraseña para controlar el servidor de forma remota (RCON).
• set sv_privatePassword "" // Contraseña de los huecos privados.
• set g_password "" // Contraseña del servidor. (Ninguna = publico).


-:Limites & Tiempos:-

• set g_warmup "15" // Tiempo en segundos para empezar la partida cuando el mapa es cambiado. Su función es la de dar un tiempo para que los ordenadores más lentos terminen de cargar.
• set timelimit "20" // Tiempo en minutos para que el mapa acabe. (0 = nunca).
• set fraglimit "10" // Cantidad de puntos que han de ser conseguidos para finalizar el mapa. (0=nunca).
• set capturelimit "0" // Cantidad de banderas capturadas para finalizar el mapa. (0 = nunca.)
• set g_maxrounds "0" // Número de rondas para acabar el mapa (0 = nunca).
• set g_RoundTime "3" // Número máximo de minutos por ronda.
• set g_suddendeath "1" // Muerte súbita. Cuando el mapa ha finalizado y los dos equipos han obtenido la misma puntuación se jugara un ronda de desempate. (0 = no, 1 = si).

/TEAM SURVIVOR/

• set g_survivorrule "0" // 0 = Ningún equipo se llevará un punto cuando el tiempo de ronda haya finalizado aun quedando jugadores en pie. 1 = El equipo con más jugadores en pie al acabar la ronda se lleva un punto.

/MODO BOMBA/

• set g_bombdefusetime "10" // Número de segundos que se tarda en desactivar la bomba.
• set g_bombexplodetime "40" // Número de segundos para que la bomba detone al ser plantada.

/CAPTURE THE FLAG/

• set g_hotpotato "2" // Cuando ambas banderas son cogidas explotarán pasados estos minutos.
• set g_flagreturntime "30" // Segundos transcurridos desde que se abandona la bandera hasta que ésta es devuelta automaticamente a su base.

/CAPTURE AND HOLD/

• set g_cahtime "60" // Tiempo en segundos por ronda en Capture and Hold.


-:Respawn:-

• set g_respawnDelay "8" // Segundos antes de volver a aparecer (respawn), ignorado cuando g_waverespawns está a 1.
• set g_forcerespawn "20" // Segundos antes de forzar el respawn.
• set g_waverespawns "0" // Activar esto para que todo el equipo “renazca” a la vez. (0 =no, 1=si).
• set g_bluewave "15" // Segundos para cada oleada de respawn en el equipo azul, ignorado si g_waverespawns está a 0.
• set g_redwave "15" // Segundos para cada oleada de respawn en el equipo rojo, ignorado si g_waverespawns está a 0.
• set g_respawnProtection "2" // Segundos que un jugador es protegido nada más nacer.


-:Reglas:-

• set g_deadchat "1" // Determina si los jugadores vivos pueden ver los mensajes de los ya muertos. (0 = no, 1= solo los de su equipo 2= todos los mensajes globales).
• set g_antiwarp "1" // Permite o imposibilita el “antiwarp”. Esta opción suaviza el movimiento de los jugadores warpeados (el “warping” es causado por una conexión lenta o descargar porno durante el juego). Los jugadores con este problema sufrirán tirones si está activado.
• set g_antiwarptol "50" // Tolerancia del “antiwarp”. Cunato mayor sea más tolerancia.
• set g_gear "0" // Configura el tipo de armas permitidas.
• set g_allowvote "536871039" // Configura los votos permitidos.
• set g_failedvotetime "300" // Tiempo en segundos para poder empezar otra votación una vez fallada la anterior.
• set g_followstrict "1" // Posibilidad de seguir a los enemigos al morir (1 = no).
• set sv_floodprotect "1" // Evita en la medida de lo posible el “spam” (1 = activado).


-:Modo partido - Match Mode:-

• set g_matchmode "0" // Modo partido. (0 = desactivado . 1 = activado).
• set g_timeouts "3" // Cantidad de tiempos muertos que puede tener un equipo por mapa.
• set g_timeoutlength "240" // Duración en segundos de los tiempos muertos.
• set g_pauselength "0" // Duración de la pausa llamada mediante RCON. (0 = indefinido).


-:Configuracion de equipos:-

• set g_friendlyFire "1" // Fuego amigo: 0 = desactivado, 1= activado con expulsión tras demasiadas bajas a miembros del mismo equipo (TK), 2= activado sin expulsión.
• set g_maxteamkills "3" // Número máximo de bajas a miembros del mismo equipo por el mismo jugador antes de la expulsión.
• set g_teamkillsforgettime "300" // Cantidad de segundos para perdonar el “TeamKilling”.
• set g_teamautojoin "0" // Fuerza a los jugadores a ser auto seleccionados para un equipo imposibilitando la opción de observar. (0 = no, 1 = si).
• set g_teamForceBalance "1" // Evita el unirse a un equipo con más jugadores que el contrario. (0 = desactivado, 1 = activado.)
• set g_maintainTeam "1" // Al cambiar de mapa los jugadores siguen en el mismo equipo. (0 = no, 1 = si)
• set g_teamnamered "" // Nombre del equipo rojo. Nada = Red Dragons.
• set g_teamnameblue "" // Nombre del equipo azul. Nada = SWAT.
• set g_swaproles "0" // Cambiar los roles de los equipos, manteniendo los jugadores, al finalizar el mapa, volviéndolo a jugar. Altamente recomendado en modo bomba. (0 = no, 1 = si).


-:Configuración Avanzada:-

• set sv_strictauth "0" // 1= Comprueba si la clave del CD es válida, los jugadores que accedan desde ioUrbanTerror no podrán jugar.
• set sv_pure "1" // 1 = Los jugadores no podrán cargar archivos “pk3” modificados.
• set sv_maxRate "0" // Tráfico máximo en segundos que enviará el servidor por cliente.
• set sv_timeout "180" // Tiempo en segundos para que un jugador con conexión interrumpida sea automáticamente expulsado.
• set g_inactivity "0" // Tiempo en segundos para que un jugador inactivo (sin movimiento) sea automáticamente expulsado.


-:Servidores Maestros:-

• set sv_master1 "" // Está es proporcionada automáticamente por el motor del juego, se debe dejar en blanco.
• set sv_master2 "master.urbanterror.net"
• set sv_master3 "master2.urbanterror.net"
• set sv_master4 "master.quake3arena.com"
• set sv_master5 "" // Futuro servidor maestro.


-:Configuraciones mixtas:-

• set g_armbands "1" // Determina el color de la banda del brazo .(0 = elección del jugador, 1 = Basada en el color del equipo (red or blue) 2 = Al azar).
• set g_allowchat "2" // 0 = Conversación no permitido 1 = Solo conversación de equipo 2 = Todos las conversaciones.
• set g_gravity “800” // Cambia la gravedad. (800 = gravedad terrestre 65 = gravedad lunar).
• set sv_maxping "0" // Ping máximo permitido para poder acceder al servidor.
• set sv_minping "0" // Ping mínimo permitido para acceder al servidor.
• set g_log "games.log" // Nombre del historial (“log”). Dejarlo en blanco significa que éste no será escrito. Se encuentra en la carpeta q3ut4 en Windows. Linux usa ~/.q3a/q3ut4.
• set g_logsync "1" // 1 = Permite la escritura directa al historial.
• set g_loghits "0" // 1 = Guarda todos los golpes (“hits”) en el historial.
• set g_logroll "0" // 1 = Crea un nuevo historial en vez de usar siempre el mismo.
• set logfile "0" // Additional logging in separate qconsole.log file. 1=buffered, 2=synced.


-:Rotación de mapas:-

• set g_mapcycle "mapcycle.txt" // Nombre del “mapcycle” que se quiera cargar localizado en el directorio q3ut4.
• map ut4_casa // Mapa por defecto con el que empieza el servidor.


-:Calculadora de equipo:-

0= Todas las armas // 63 = Solo cuchillo
Para quitar un arma se debe sumar su número correspondiente a 0:
Granadas = 1 // Rifles Francotirador = 2 / / Spas = 4 // Pistolas = 8 // Automáticas = 16 // Negev = 32 
Enlace a calculadora de armas.


-:Calculadora de votos:-

1 reload 2 restart 4 map 8 nextmap 16 kick/clientkick 32 swapTeams 64 shuffleTeams 128 g_friendlyFire 256 g_followStrict 512 g_gameType 1024 g_waveRespawns 2048 timelimit 4096 fragLimit 8192 captureLimit 16384 g_respawnDelay 32768 g_redWaveRespawnDelay 65536 g_blueWaveRespawnDelay 131072 g_bombExplodeTime 262144 g_bombExplodeTime 524288 g_survivorRoundTime 1048576 g_caputureScoreTime 2097152 g_warmup 4194304 g_matchMode 8388608 g_timeouts 16777216 g_timeoutLength 33554432 exec 67108864 g_swapRoles 134217728 g_maxRounds 268435456 g_gear 536870912 cyclemap
Enlace a calculadora de votos.


*Todos estos comandos pueden ser escritos tanto en el archivo “server.cfg” del directorio q3ut4 como en la consola poniendo delante /rcon (los dos puntos '''':'''' han de ser borrados).*




Administración del servidor
Configuración por defecto
Esta es la configuración por defecto que viene con el Urban Terror. Recomendamos a los administradores de los servidores que la utilizen como base de sus configuraciones.
// Información del administrador, muestra en algunos juegos de navegador
sets " Admin" "adminname" // Utiliza un espacio delante por lo que aparece en la parte superior de la lista de propiedades.
sets " Email" "xxx@xxx.xxx"

// Nombre del servidor y Mensajes Diarios
set sv_hostname "New Unnamed Server" // Nombre del Servidor.
set g_motd "Urban Terror, Presented by FrozenSand" // Mensaje del día, se muestra al conectarse
set sv_joinmessage "Welcome to Urban Terror 4.1.1" // Mensaje que se muestra en la pantalla al unirse al juego

// Opciones Generales del Juego
set sv_maxclients "12" // Máximo de huecos para jugadores en el servidor, utilizar más de 16 huecos no es acosejable. Puede causar retardo y la mayoría de los mapas no están preparados para ello. Más de 24 huecos puede provocar errores.
set g_maxGameClients "0" // Máximo de jugadores que realmente pueden unirse al juego. Los demás están obligados a ver el espectáculo sin jugar. 0 = Todos
set sv_privateClients "0" // Cantidad de huecos privados. La cantidad de huecos privados estarán reservados para jugadores que sepan la contraseña privada".
set g_gametype "4" // 0 = FreeForAll (Todos contra todos), 3 = TeamDeathMatch (Combate a muerte por equipos), 4 = Team Survivor (El equipo superviviente), 5 = Follow the Leader (Seguir al Líder), 6 = Capture and Hold (Capturar y mantener), 7 = Capture The Flag (Capturar la bandera), 8 = Bombmode (Modo Bomba) 
sets sv_dlURL "urbanterror.info" // Establece la dirección de Auto-Descarga. La Auto-Descarga sólo funciona con clientes de ioUrbanTerror, no con clientes de quake3. El cliente intentará descargar <sv_dlURL>/q3ut4/mapname.pk3. Por lo tanto, si su servidor está ejecutando ut4_COOLMAP y sv_dlURL se establece en "yoursite.com/maps'', asegúrese de que los mapas tiene su sede en http://www.yoursite.com/maps/q3ut4/ut4_coolmap.pk3. Dejando "urbanterror.net" este conjunto hará uso de un espejo del mapa con los mapas más comunes en él. Si tienes tu propio hosting, le rogamos que lo use, para ahorrar ancho de banda.

// Contraseñas
set rconpassword "" // Contraseña para controlar el servidor remotamente usando rcon.
set sv_privatePassword "" // Contraseña para los huecos privados
set g_password "" // Contraseña del servidor. Ninguna = Servidor público

// Límites/tiempos
set timelimit "20" // Tiempo en minutos de la duración del mapa, 0 = Ilimitado
set fraglimit "10" // Cantidad de puntos a conseguir para que termine el mapa, 0 = Ilimitado
set capturelimit "0" // Cantidad de banderas capturadas para que termine el mapa, 0 = Ilimitado
set g_warmup "15" // Tiempo en segundos de espera para empezar la partida al cargar un nuevo mapa.

// Reaparecimientos (FFA, TDM, CAH, CTF)
set g_respawnDelay "8" // Segundos antes de reaparecer, ignorar si g_waverespawns está en 1
set g_forcerespawn "20" // Segundos antes de reaparecer forzado, incluso cuando el jugador a disparado
set g_waverespawns "0" // Usar waverespawns, equivale a que todos los jugadores del servidor reaparacen al mismo tiempo.
set g_bluewave "15" // Segundos de reaparición del equipo Azul, ignorar si g_waverespawns está en 0
set g_redwave "15" // Segundos de reaparición del equipo Rojo, ignorar si g_waverespawns está en 0
set g_respawnProtection "2" // Cantidad de segundos después de haber aparecido, en que los jugadores están protegidos del equipo contrario.

// Reglas
set g_deadchat "1" // Determina si los "vivos" pueden ver los mensajes de los "muertos". 0 = Los jugadores "vivos" no pueden ver los mensajes de los jugadores "muertos". 1 = Los jugadores "vivos" pueden ver los mensajes de miembros del mismo equipo "muertos" pero sólo por el Chat de Equipo (Teamsay). 2 = Los jugadores "vivos" pueden ver los mensajes de los jugadores muertos
set g_antiwarp "1" // Habilitar o deshabilitar antiwarp. Esta opción suaviza los movimientos de los jugadores colapsados (Una colapsación se puede producir, por ejemplo, cuando descargas mientras juegas). El jugador colapsado experimentará intermitencia en la imagen cuando ésta opción está habilitar.
set g_antiwarptol "50" // La tolerancia del antiwarp. 50 = Por defecto. Superior = muy tolerante. 
set g_gear "0" // Máscara de bits que decide cuales votos son permitidos y cuales no. Comprobar http://www.urbanterror.net/gear_calc.html para encontrar el número correcto
set g_allowvote "536871039" // Máscara de bits que decide cuales votos son permitidos y cuales no. Comprueba http://www.urbanterror.net/allowvote_calc.html para encontrar el número correcto
set g_failedvotetime "300" // Tiempo en segundos antes de que alguien pueda crear una votación después de que la última fracasara.
set g_followstrict "1" // 1 = No se puede espectear al equipo contrario una vez "muerto".
set sv_floodprotect "1" // 1 = Interrumpe los mensajes continuos de los jugadores para evitar el spam, dejando un espacio de tiempo entre mensaje y mensaje.

// Modo Partido
set g_matchmode "0" // El modo partido para jugar una War (Guerra). Las características de los Tiempos de Espera (timeouts) y los comandos listos.
set g_timeouts "3" // Cantidad de Tiempos de Espera (timeouts) que un equipo puede hacer por mapa.
set g_timeoutlength "240" // Duración del Tiempo de Espera (timeout)
set g_pauselength "0" // Duración de la pausa. Esto sólo puede hacerse con la rcon. 0 = indefinido

// Opciones de juego del equipo
set g_friendlyFire "1" // 0 = fuego amigo deshabilitado 1 = Fuego amigo habilitado, te expulsarán si haces demasiados TK 2 = Fuego amigo habilitado, no te expulsarán.
set g_maxteamkills "3" // Cantidad de TK realizados para la expulsión cuando el Fuego Amigo está en 1.
set g_teamkillsforgettime "300" // Cantidad de segundos para que los TK sean olvidados.
set g_teamautojoin "0" // Fuerza a los jugadores a usar autojoin, en lugar de dejarlos en espectador.
set g_teamForceBalance "1" // Si está habilitado, no puede unirse a un equipo cuando se tiene más jugadores que el otro
set g_maintainTeam "1" // Al cambiar los mapas, los jugadores se quedarán en el equipo en el que estaban
set g_teamnamered "" // Nombre para el equipo rojo, nada = Red Dragons
set g_teamnameblue "" // Nombre para el equipo azul, nada = SWAT
set g_swaproles "0" // Cuando el mapa haya terminado, jugar de nuevo con los equipos mezclados (recomendado para el Modo Bomba). Después de eso, cambiar mapa. 0 = Cambiar de mapa inmediatamente una vez haya terminado el mapa anterior sin mezclar equipos

// Opciones específicas del Team Survivor/Bombmode/Follow the Leader
set g_maxrounds "0" //Número de rondas antes de que el mapa termine, 0 = nunca
set g_RoundTime "3" // Minutos que como máximo puede durar una ronda
set g_survivorrule "0" // 0 = Los equipos no reciben un punto cuando se acaba el tiempo antes de que todo el mundo esté muerto. 1 = Equipo con más jugadores obtiene punto
set g_suddendeath "1" // Cuando el mapa termina y ambos equipos tienen la misma cantidad de puntos, se añade otra ronda.
set g_bombdefusetime "10" // Segundos que tarda en desactivar la bomba
set g_bombexplodetime "40" // Segundos que tarda la bomba en explotar, después de plantarla.

// Opciones específicas del Capture the flag
set g_flagreturntime "30" // Si una bandera se deja caer, devolverla a base después de esta cantidad de segundos
set g_hotpotato "2" // Cuando ambas banderas están cojidas, explotarán después de ésta cantidad de minutos

// Opciones avanzadas - No cambiar, a menos que sepas lo que haces.
set sv_strictauth "0" // 1 = Verificar cdkey válida, esto significa que los jugadores de ioUrbanTerror no serán capazes de unirse.
set sv_pure "1" // No deja que los jugadores carguen archivos .pk3 modificados.
set sv_maxRate "0" // Velocidad máxima que el servidor enviará al cliente. 25000 or 0 = máximo
set sv_timeout "180" // Tiempo que tardará el servidor en expulsar al jugador con CI [Connection Interupted (Conexión interrumpida)]
set g_inactivity "0" // Tiempo que tardará el servidor en expulsarte si estás inactivo (sino te mueves o estás AFK)

// Servidor Master - Los servidores informarán si "Dedicado" se establece en 2. Si está en 1, no informarán.
set sv_master1 "" // Éste se ajusta de forma automática por el motor del juego, así que basta con dejarlo en blanco
set sv_master2 "master.urbanterror.info"
set sv_master3 "master2.urbanterror.info"
set sv_master4 ""
set sv_master5 ""

// Otras Opciones
set g_armbands "1" // Determina el color del Brazalete (se muestra en el minimapa y en la lista de jugadores). 0 = a elección del jugador, conjunto con cg_rgb 1 = Sobre la base del color del equipo (rojo o azul) 2 = Asignado por el servidor (al azar)
set sv_maxping "0" // Ping máximo que puede tener un jugador
set sv_minping "0" // Ping mínimo que puede tener un jugador
set g_allowchat "2" // 0 = no hay chat 1 = Sólo hay teamchat (chat en el equipo) 2 = Si hay chats
set g_log "games.log" // Nombre del archivo de registro. Vacío("") significa que no hay registro. En Windows el registro se efectuará en la carpeta q3ut4. Linux usa esto: ~/.q3a/q3ut4
set g_logsync "1" // Habilita/deshabilita la inscripción directa en el archivo de registro en vez de amortiguarse.
set g_loghits "0" // Cada registro único con éxito, crea registros muy grandes.
set g_logroll "0" // Crear nuevo registro de vez en cuando, en vez de utilizar siempre la misma.
set logfile "0" // Registro adicional en el archivo qconsole.log separado. 1 = búffer, 2 = sincronizado
set g_cahtime "60" // Intervalo en segundos de asignación de puntos por banderas en Capture and Hold (Captura y mantiene)

// Rotación de mapas
set g_mapcycle "mapcycle.txt" // Nombre del archivo mapcycle, ubicado en el directorio q3ut4.
map ut4_casa // Mapa para empezar la rotación.

// Anti-Cheto
// pb_sv_enable // Para permitir que PB, elimine el // al principio de esta línea (sólo funciona cuando se utiliza Quake 3 Arena, no ioUrbanTerror)
set sv_battleye "0" // Mantener dehabilitado, BattlEye está muerto.
');


ALTER TABLE temas ENABLE TRIGGER ALL;

--
-- TOC entry 1967 (class 0 OID 16418)
-- Dependencies: 171 1971 1977
-- Data for Name: lecciones; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE lecciones DISABLE TRIGGER ALL;

INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (1, 1, 'asjdhajsdhaksdhjkashdkjahsdkjahsdas                                                                 ');
INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (2, 1, 'ajhsjdhkjashdkjahsd                                                                                 ');
INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (3, 1, 'jkahsdjahskjhaskjdhakjdhkjsd                                                                        ');
INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (4, 1, 'jahjsdhjashdkjahsdkjah                                                                              ');
INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (5, 1, 'gggg                                                                                                ');
INSERT INTO lecciones (id_lecciones, id_temas, nb_lecciones) VALUES (6, 4, 'guias                                                                                               ');


ALTER TABLE lecciones ENABLE TRIGGER ALL;

--
-- TOC entry 1957 (class 0 OID 16385)
-- Dependencies: 161 1967 1977
-- Data for Name: contenidos; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE contenidos DISABLE TRIGGER ALL;



ALTER TABLE contenidos ENABLE TRIGGER ALL;

--
-- TOC entry 1981 (class 0 OID 0)
-- Dependencies: 162
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('contenidos_descrip_contenidos_seq', 1, false);


--
-- TOC entry 1982 (class 0 OID 0)
-- Dependencies: 163
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('contenidos_id_contenidos_seq', 1, false);


--
-- TOC entry 1960 (class 0 OID 16392)
-- Dependencies: 164 1957 1977
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE ejemplos DISABLE TRIGGER ALL;



ALTER TABLE ejemplos ENABLE TRIGGER ALL;

--
-- TOC entry 1983 (class 0 OID 0)
-- Dependencies: 165
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_cont_ejercicios_seq', 1, false);


--
-- TOC entry 1984 (class 0 OID 0)
-- Dependencies: 166
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 1963 (class 0 OID 16402)
-- Dependencies: 167 1957 1977
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE ejercicios DISABLE TRIGGER ALL;



ALTER TABLE ejercicios ENABLE TRIGGER ALL;

--
-- TOC entry 1985 (class 0 OID 0)
-- Dependencies: 168
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, false);


--
-- TOC entry 1965 (class 0 OID 16410)
-- Dependencies: 169 1957 1977
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE fuentes DISABLE TRIGGER ALL;



ALTER TABLE fuentes ENABLE TRIGGER ALL;

--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 170
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('fuentes_id_fuente_referencias_seq', 1, false);


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 172
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('lecciones_id_lecciones_seq', 6, true);


--
-- TOC entry 1969 (class 0 OID 16423)
-- Dependencies: 173 1957 1977
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE multimedia DISABLE TRIGGER ALL;



ALTER TABLE multimedia ENABLE TRIGGER ALL;

--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 174
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('multimedia_id_multimedia_seq', 1, false);


--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 176
-- Name: temas_id_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('temas_id_temas_seq', 5, true);


--
-- TOC entry 1973 (class 0 OID 16439)
-- Dependencies: 177 1977
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: condor
--

ALTER TABLE usuario DISABLE TRIGGER ALL;

INSERT INTO usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) VALUES (5, 'Dimas', 'Martinez', 'dimasjm_1997@hotmail.com', 'dimasj', '94fd13e285d98ff674f7dc5954bc044d', 'G', '2013-06-07 15:12:43.795257', '2013-06-07 19:56:15.029155');
INSERT INTO usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) VALUES (4, 'admin', 'admin', 'pcondor@gmail.com', 'admin', 'daa02698b71d64bb497a32a0e35e17aa', 'admin', '2013-06-07 15:00:21.044113', '2013-06-07 19:59:55.828242');


ALTER TABLE usuario ENABLE TRIGGER ALL;

--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 178
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 5, true);


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_lecciones_id_usuarios_lecciones_seq', 1, false);


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 180
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_temas_id_usuarios_temas_seq', 1, false);


-- Completed on 2013-06-10 02:02:49 VET

--
-- PostgreSQL database dump complete
--


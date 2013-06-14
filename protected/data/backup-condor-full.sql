--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-06-10 21:09:48 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 181 (class 3079 OID 11645)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1984 (class 0 OID 0)
-- Dependencies: 181
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 16385)
-- Dependencies: 6
-- Name: contenidos; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE contenidos (
    id_contenidos integer NOT NULL,
    id_lecciones integer NOT NULL,
    descrip_contenidos integer NOT NULL
);


ALTER TABLE public.contenidos OWNER TO condor;

--
-- TOC entry 1985 (class 0 OID 0)
-- Dependencies: 161
-- Name: COLUMN contenidos.id_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN contenidos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 161
-- Name: COLUMN contenidos.id_lecciones; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN contenidos.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 161
-- Name: COLUMN contenidos.descrip_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN contenidos.descrip_contenidos IS 'Descripción de los contenidos';


--
-- TOC entry 162 (class 1259 OID 16388)
-- Dependencies: 161 6
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE contenidos_descrip_contenidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenidos_descrip_contenidos_seq OWNER TO condor;

--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 162
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE contenidos_descrip_contenidos_seq OWNED BY contenidos.descrip_contenidos;


--
-- TOC entry 163 (class 1259 OID 16390)
-- Dependencies: 6 161
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE contenidos_id_contenidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenidos_id_contenidos_seq OWNER TO condor;

--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 163
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE contenidos_id_contenidos_seq OWNED BY contenidos.id_contenidos;


--
-- TOC entry 164 (class 1259 OID 16392)
-- Dependencies: 6
-- Name: ejemplos; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nb_ejemplos character(100) NOT NULL,
    cont_ejercicios text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.ejemplos OWNER TO condor;

--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 164
-- Name: COLUMN ejemplos.id_ejemplos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejemplos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 164
-- Name: COLUMN ejemplos.nb_ejemplos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejemplos.nb_ejemplos IS 'Nombre de los ejemplos';


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 164
-- Name: COLUMN ejemplos.cont_ejercicios; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejemplos.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 164
-- Name: COLUMN ejemplos.id_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejemplos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 165 (class 1259 OID 16398)
-- Dependencies: 6
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_cont_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_cont_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 166 (class 1259 OID 16400)
-- Dependencies: 164 6
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_id_ejemplos_seq OWNER TO condor;

--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 166
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 167 (class 1259 OID 16402)
-- Dependencies: 6
-- Name: ejercicios; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE ejercicios (
    id_ejercicios integer NOT NULL,
    nb_ejercicios character(100) NOT NULL,
    des_ejercicios text,
    cont_ejercicios text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.ejercicios OWNER TO condor;

--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 167
-- Name: COLUMN ejercicios.id_ejercicios; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejercicios.id_ejercicios IS 'ID de los ejercicios';


--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 167
-- Name: COLUMN ejercicios.nb_ejercicios; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejercicios.nb_ejercicios IS 'Nombre de los ejercicios';


--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 167
-- Name: COLUMN ejercicios.des_ejercicios; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejercicios.des_ejercicios IS 'Descripción de los ejercicios';


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 167
-- Name: COLUMN ejercicios.cont_ejercicios; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejercicios.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 167
-- Name: COLUMN ejercicios.id_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN ejercicios.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 168 (class 1259 OID 16408)
-- Dependencies: 167 6
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE ejercicios_id_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejercicios_id_ejercicios_seq OWNER TO condor;

--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 168
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE ejercicios_id_ejercicios_seq OWNED BY ejercicios.id_ejercicios;


--
-- TOC entry 169 (class 1259 OID 16410)
-- Dependencies: 6
-- Name: fuentes; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE fuentes (
    id_fuente_referencias integer NOT NULL,
    fuente_referencias text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.fuentes OWNER TO condor;

--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fuentes.id_fuente_referencias; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN fuentes.id_fuente_referencias IS 'If fuente bibliografica';


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fuentes.fuente_referencias; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN fuentes.fuente_referencias IS 'Fuente  referencias';


--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fuentes.id_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN fuentes.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 170 (class 1259 OID 16416)
-- Dependencies: 6 169
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE fuentes_id_fuente_referencias_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuentes_id_fuente_referencias_seq OWNER TO condor;

--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 170
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE fuentes_id_fuente_referencias_seq OWNED BY fuentes.id_fuente_referencias;


--
-- TOC entry 171 (class 1259 OID 16418)
-- Dependencies: 6
-- Name: lecciones; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE lecciones (
    id_lecciones integer NOT NULL,
    id_temas integer NOT NULL,
    nb_lecciones character(100) NOT NULL
);


ALTER TABLE public.lecciones OWNER TO condor;

--
-- TOC entry 2005 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN lecciones.id_lecciones; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN lecciones.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 2006 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN lecciones.id_temas; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN lecciones.id_temas IS 'ID de los temas';


--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN lecciones.nb_lecciones; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN lecciones.nb_lecciones IS 'Nombre de las lecciones';


--
-- TOC entry 172 (class 1259 OID 16421)
-- Dependencies: 171 6
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE lecciones_id_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lecciones_id_lecciones_seq OWNER TO condor;

--
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 172
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE lecciones_id_lecciones_seq OWNED BY lecciones.id_lecciones;


--
-- TOC entry 173 (class 1259 OID 16423)
-- Dependencies: 6
-- Name: multimedia; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE multimedia (
    id_multimedia integer NOT NULL,
    url_multimedia text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.multimedia OWNER TO condor;

--
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN multimedia.id_multimedia; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN multimedia.id_multimedia IS 'id del archivo multimedia';


--
-- TOC entry 2010 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN multimedia.url_multimedia; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN multimedia.url_multimedia IS 'URL del archivo ';


--
-- TOC entry 2011 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN multimedia.id_contenidos; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN multimedia.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 174 (class 1259 OID 16429)
-- Dependencies: 173 6
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE multimedia_id_multimedia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multimedia_id_multimedia_seq OWNER TO condor;

--
-- TOC entry 2012 (class 0 OID 0)
-- Dependencies: 174
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE multimedia_id_multimedia_seq OWNED BY multimedia.id_multimedia;


--
-- TOC entry 175 (class 1259 OID 16431)
-- Dependencies: 6
-- Name: temas; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE temas (
    id_temas integer NOT NULL,
    nb_temas character(100) NOT NULL,
    descrip_temas text NOT NULL
);


ALTER TABLE public.temas OWNER TO condor;

--
-- TOC entry 2013 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN temas.id_temas; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN temas.id_temas IS 'ID de los temas';


--
-- TOC entry 2014 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN temas.nb_temas; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN temas.nb_temas IS 'Nombre de los temas';


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN temas.descrip_temas; Type: COMMENT; Schema: public; Owner: condor
--

COMMENT ON COLUMN temas.descrip_temas IS 'Descripción de los temas';


--
-- TOC entry 176 (class 1259 OID 16437)
-- Dependencies: 175 6
-- Name: temas_id_temas_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE temas_id_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_temas_seq OWNER TO condor;

--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 176
-- Name: temas_id_temas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE temas_id_temas_seq OWNED BY temas.id_temas;


--
-- TOC entry 177 (class 1259 OID 16439)
-- Dependencies: 1915 6
-- Name: usuario; Type: TABLE; Schema: public; Owner: condor; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(128) NOT NULL,
    password character varying(128) NOT NULL,
    perfil character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_login timestamp without time zone
);


ALTER TABLE public.usuario OWNER TO condor;

--
-- TOC entry 178 (class 1259 OID 16443)
-- Dependencies: 6 177
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: condor
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO condor;

--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 178
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: condor
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 179 (class 1259 OID 16445)
-- Dependencies: 6
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_lecciones_id_usuarios_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_lecciones_id_usuarios_lecciones_seq OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16447)
-- Dependencies: 6
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_temas_id_usuarios_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_temas_id_usuarios_temas_seq OWNER TO postgres;

--
-- TOC entry 1907 (class 2604 OID 16449)
-- Dependencies: 163 161
-- Name: id_contenidos; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY contenidos ALTER COLUMN id_contenidos SET DEFAULT nextval('contenidos_id_contenidos_seq'::regclass);


--
-- TOC entry 1908 (class 2604 OID 16450)
-- Dependencies: 162 161
-- Name: descrip_contenidos; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY contenidos ALTER COLUMN descrip_contenidos SET DEFAULT nextval('contenidos_descrip_contenidos_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 16451)
-- Dependencies: 166 164
-- Name: id_ejemplos; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1910 (class 2604 OID 16452)
-- Dependencies: 168 167
-- Name: id_ejercicios; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicios SET DEFAULT nextval('ejercicios_id_ejercicios_seq'::regclass);


--
-- TOC entry 1911 (class 2604 OID 16453)
-- Dependencies: 170 169
-- Name: id_fuente_referencias; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY fuentes ALTER COLUMN id_fuente_referencias SET DEFAULT nextval('fuentes_id_fuente_referencias_seq'::regclass);


--
-- TOC entry 1912 (class 2604 OID 16454)
-- Dependencies: 172 171
-- Name: id_lecciones; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY lecciones ALTER COLUMN id_lecciones SET DEFAULT nextval('lecciones_id_lecciones_seq'::regclass);


--
-- TOC entry 1913 (class 2604 OID 16455)
-- Dependencies: 174 173
-- Name: id_multimedia; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY multimedia ALTER COLUMN id_multimedia SET DEFAULT nextval('multimedia_id_multimedia_seq'::regclass);


--
-- TOC entry 1914 (class 2604 OID 16456)
-- Dependencies: 176 175
-- Name: id_temas; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY temas ALTER COLUMN id_temas SET DEFAULT nextval('temas_id_temas_seq'::regclass);


--
-- TOC entry 1916 (class 2604 OID 16457)
-- Dependencies: 178 177
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: condor
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 1957 (class 0 OID 16385)
-- Dependencies: 161 1977
-- Data for Name: contenidos; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY contenidos (id_contenidos, id_lecciones, descrip_contenidos) FROM stdin;
\.


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 162
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('contenidos_descrip_contenidos_seq', 1, false);


--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 163
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('contenidos_id_contenidos_seq', 1, false);


--
-- TOC entry 1960 (class 0 OID 16392)
-- Dependencies: 164 1977
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY ejemplos (id_ejemplos, nb_ejemplos, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 165
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_cont_ejercicios_seq', 1, false);


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 166
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 1963 (class 0 OID 16402)
-- Dependencies: 167 1977
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY ejercicios (id_ejercicios, nb_ejercicios, des_ejercicios, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 168
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, false);


--
-- TOC entry 1965 (class 0 OID 16410)
-- Dependencies: 169 1977
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY fuentes (id_fuente_referencias, fuente_referencias, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 170
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('fuentes_id_fuente_referencias_seq', 1, false);


--
-- TOC entry 1967 (class 0 OID 16418)
-- Dependencies: 171 1977
-- Data for Name: lecciones; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY lecciones (id_lecciones, id_temas, nb_lecciones) FROM stdin;
1	1	asjdhajsdhaksdhjkashdkjahsdkjahsdas                                                                 
2	1	ajhsjdhkjashdkjahsd                                                                                 
3	1	jkahsdjahskjhaskjdhakjdhkjsd                                                                        
4	1	jahjsdhjashdkjahsdkjah                                                                              
5	1	gggg                                                                                                
6	4	guias                                                                                               
\.


--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 172
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('lecciones_id_lecciones_seq', 6, true);


--
-- TOC entry 1969 (class 0 OID 16423)
-- Dependencies: 173 1977
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY multimedia (id_multimedia, url_multimedia, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 174
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('multimedia_id_multimedia_seq', 1, false);


--
-- TOC entry 1971 (class 0 OID 16431)
-- Dependencies: 175 1977
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY temas (id_temas, nb_temas, descrip_temas) FROM stdin;
2	haskjhskd                                                                                           	asdjkahsjdhaskjhasdhaskdhakjdhkjsdhkjsdhkajsdhkjashdkjashdjkahsdjkahsdkjahsd\r\nasjdksdhjkahsjdkahsdkahsdihjakdhajdhajsdhasdhjkhdk
1	Historia de PostgreSQL y su Evolución                                                               	En este tema veremos lo relacionado a la historia de PostgreSQL y las diferentes\r\nevoluciones que a medida del tiempo ha sufrido. Mostraremos porqué es uno de los\r\nmejores manejadores de bases de datos. \r\n\r\n
3	guia debian                                                                                         	Guía de debían \r\nEn este tutorial aprenderemos para que sirve la  y los principales comandos, aunque no todos, que podemos ejecutar con ella, los comandos descritos aquí son iguales para cualquier distribución GNU/Linux a menos que se especifique lo , cabe destacar que algunos de estos comandos se pueden realizar mediante una aplicación gráfica. \r\n\r\nLa terminal \r\n\r\nLa consola de comandos comunmente llamada terminal siempre será tu mejor amiga cuando uses GNU/Linux, es por ello que es importante  cómo ejecutarla: \r\n\r\n* Gnome: Menú Aplicaciones/Accesorios/Terminal. \r\n* Xfce:Menú Aplicaciones/Accesorios/Terminal. \r\n* Kde: KickOff /Aplicaciones/Sistema/Terminal. \r\n\r\nEstas son las terminales que incluyen los principales entornos de escritorio de GNU/Linux, sin embargo no son las unicas existentes. \r\n\r\nTips \r\n\r\nEsas cadenas de texto que pueden aparecer en las peores pesadillas de algunos usuarios se convertirán en tus mejores amigas a partir de la lectura comprensión de este tutorial, unos buenos tips sobre estos comandos nunca vienen mal: \r\n\r\n* Los "modificadores" de los comandos pueden ser agrupados en una sóla cadena de manera que sólo se escriba el comando más las opciones correspondientes, de está manera se ahorra tiempo y el teclado se desgasta menos ;-) \r\n* Todos los comandos listados aquí uncluyen un manual (En Inglés) al cual se puede acceder mediante el comando "man", la sintaxis es simple: man + nombre_comando \r\n* Se puede hacer uso de la tecla "Tabulador" para completar un comando, por ejemplo al navegar entre directorios, si yo escribo cd /ho y pulso tabulador automaticamente la linea se "auto-completara" y quedará cómo cd /home/ en caso de no autocompletarse podemos pulsar tabulador 2 veces para que son muestren las posibles opciones de autocompletado. \r\n* Para copiar y pegar se puede hacer uso de dos combinaciones de teclas, Ctrl + Shift + C para copiar y Ctrl + Shift + V para pegar. \r\n\r\nUsuarios \r\n\r\nQuiza en diversos tutoriales encontrados por la red o inclusive dentro de SceneBeta han leido acerca del usuario root, y quiza se preguntarán, ¿Que es este usuario? y ¿Que diferencia tiene con mi usuario?, bueno daremos una pequeña introducción a esto. \r\n\r\nEl usuario Root es un SuperAdministrador, tiene todos los privilegios y puede hacer cualquier cosa sobre el sistema, sin embargo tal y cómo dice aquella pelicula, "Con grandes poderes vienen grandes responsabilidades", debido a la cantidad de poder que posee sobre nuestro ordenador no debemos trabajar habitualmente logueados cómo el, es por eso que creamos un usuario durante la instalación de nuestra distro. \r\n\r\nSe sabe que se está trabajando cómo root debido a que comunmente se muestra el simbolo "#" en la terminal. \r\n\r\nEl usuario "normal" o el creado durante el proceso de instalación no es más que un usuario común y corriente el cuál sólo tiene poderes sobre sus propios documentos, a diferencia de el usuario root, este no tienes poderes de administración sobre el sistema, este tipo de usuario es el que por lo general es usado habitualmente al trabajar con GNU/Linux. \r\n\r\nSe sabe que se está trabajando cómo usuario normal ya que comunmente se muestra el simbolo "$" en la terminal. \r\n\r\nEjemplo: \r\n#Trabajando cómo root: \r\nbash-3.2# \r\n\r\n#Trabajando cómo usuario normal: \r\nbash-3.2$\r\n\r\n\r\nUna vez clarificado este punto, estarán conscientes que al encontrar el simbolo "$" en, por ejemplo un tutorial, se trata de decir que el comando debe ejecutarse cómo usuario normal, común y corriente. Lo mismo aplica para el simbolo "#". \r\nVer archivos y directorios \r\n\r\nEl comando "ls" desplegará los nombres de todos los archivos y carpetas que se encuentran en el directorio que navegamos actualmente o listar archivos archivos y carpetas de un directorio dado. \r\n\r\n1. Mostrar los archivos del directorio actual: $ ls \r\n2. Mostrar archivos de un directorio especifico: $ ls /directorio_a_mostrar/ \r\n\r\nAmbos comandos pueden ser modificados para mostrar cosas especificas, las opciones más usadas son: \r\n\r\n1. Mostrar todos los archivos y carpetas incluyendo ocultos: $ ls -a \r\n2. Mostrar las propiedades de los archivos: $ ls -l \r\n3. Mostrar ordenando por fecha de modificación: $ ls -t \r\n4. Mostrar en una sóla línea y separados por comas: $ ls -m \r\n\r\nEjemplo: \r\n#Listando archivos y directorios de la carpeta /home/ \r\nusuario@nombrePC:~$ ls /home/ -a \r\n.Trash-0 .directory Recycled lost+found usuario \r\n\r\n\r\nCambiar de directorio \r\n\r\nPara cambiar de directorio al navegar entre nuestros archivos por medio de la terminal se puede hacer uso del comando "cd". El cambio de directorio sólo se llevará a cabo si el directorio especificado existe, si no es así, nos quedaremos en el mismo directorio desde el que se invoco el comando. \r\n\r\nSi el cambio de directorio se ha dado con exito, el nombre del directorio al cual accedimos se mostrará en la terminal. \r\n\r\nAlgunas de las opciones disponibles para el comando cd son: \r\n\r\n* Ir al directorio anterior: cd - \r\n* Ir al directorio superior: cd .. \r\n* Ir a la carpeta "home": cd ~ \r\n\r\nEjemplo: \r\n#Entrar a un directorio \r\nusuario@nombrePC:~$ cd NombreDirectorio \r\n\r\n\r\nCrear directorios \r\n\r\nPara crear directorios en GNU/Linux, existe un comando simple a la par que útil, se trata de "mkdir" no tiene mayor ciencia que el escribir "mkdir" más el nombre de la carpeta a crear. \r\n\r\nEjemplo: \r\n#Crear un directorio \r\nusuario@nombrePC:~$ mkdir /NombreDirectorio \r\n\r\n\r\nBorrar directorios y archivos \r\n\r\nSi se quiere borrar un directorio en Linux, se puede hacer uso del comando "rm" la sintaxis es simple, "rm" más el nombre del fichero/carpeta a eliminar. \r\n\r\n* Para un borrado recuersivo se puede hacer uso del modificador "-r" \r\n* Para un borrado forzado sin pedir autorización para cada archivo, se hace uso del modificador "-f" \r\n* Para pedir confirmación por cada archivo borrado se usa el modificador "-i" \r\n\r\nEjemplo: \r\n#Borrar una carpeta \r\nusuario@nombrePC:~$ rm /NombreDirectorio \r\n\r\n#Borrar el contenido de una carpeta \r\nusuario@nombrePC:~$ rm -r /NombreDirectorio \r\n\r\n#Borrar un archivo especifico \r\nusuario@nombrePC:~$ rm -r /NombreDirectorio/NombreArchivo.extension \r\n\r\n#EL SIGUIENTE COMANDO FORMATEA LA RAIZ DEL SISTEMA, USALO BAJO SU RESPONSABILIDAD \r\nusuario@nombrePC:~$ rm -rf /\r\n\r\n\r\nCopiar directorios y archivos \r\n\r\nPara copiar directorios y archivos se puede usar el comando "cp", este comando viene de la palabra "copy" en Inglés que significa "copiar" \r\n\r\nEjemplo: \r\n\r\n#Realizar la copia de un archivo y dejar la copia en el mismo directorio que el original. \r\nusuario@nombrePC:~$ cp ArchivoOriginal ArchivoCopia \r\n#Para realizar lo mismo pero con directorios y de forma recursiva \r\nusuario@nombrePC:~$ cp -r CarpetaOriginal/ CarpetaCopia/ \r\n\r\n#Se puede especificar que la copia se ponga en otro lugar distinto al de origen \r\nusuario@nombrePC:~$ cp ArchivoOriginal /rutacopia/ArchivoCopia \r\n\r\n#Obviamente se puede hacer lo mismo con carpetas \r\nusuario@nombrePC:~$ cp -r CarpetaOriginal /rutacopia/CarpetaCopia\r\n\r\n\r\nMover/Renombrar archivos y directorios \r\n\r\nMover archivos y directorios bajo terminal equivale a cortar y pegar en modo gráfico, renombrar archivos y directorios equivale a dar click en "Cambiar nombre" en entorno gráfico, nosotros podemos lograr estas dos cosas con un sólo comando, para lograrlo, utilizaremos el comando "mv" este comando no tiene mayor ciencia que teclear "mv" origen destino, funciona tanto con archivos cómo con carpetas. \r\n\r\nEjemplo: \r\n#Mover archivo a un directorio especifico \r\nusuario@nombrePC:~$ mv ArchivoOrigen /LugarDeDestino/ArchivoDestino \r\n\r\n#Renombrar una carpeta y dejarla en el mismo lugar \r\nusuario@nombrePC:~$ mv NombreOriginal NombreNuevo\r\n\r\n\r\nBuscar archivos y directorio \r\n\r\nSi deseamos buscar algo, ya sea archivo o directorio, podemos recurrir al comando "find", este comando tiene diversos modificadores, por lo general la busqueda mediante terminal es más rápida y consume menos recursos que la búsqueda mediante una aplicación gráfica, a continuación se explican 2 opciones del comando: \r\n\r\n1. Buscar por nombre: find /lugar_busqueda/ -name nombre_archivo \r\n2. Buscar por tamaño: find /lugar_busqueda/ -size tamañokb \r\n\r\nEjemplo: \r\n#Busqueda por nombre \r\nusuario@nombrePC:~$ find /home/usuario/ -name Archivo.tar.gz \r\n\r\n#Busqueda por tamaño \r\nusuario@nombrePC:~$ find /home/usuario/ -size +500 \r\n\r\n#NOTA: Lo que hace el último ejemplo es buscar archivos de más de 500 KB\r\n\r\n\r\nLimpiar la terminal \r\n\r\nDespués de usar un buen tiempo la terminal, es probable que nos encontremos confundidos de tanto texto que hay y que no necestiamos, para limpiar la ventana podemos hacer uso del comando "clear", se trata de un comando sencillo a la par que útil \r\n\r\nEjemplo: \r\n#Limpiar la terminal \r\nusuario@nombrePC:~$ clear\r\n\r\n\r\nAdministrador temporal \r\n\r\nPara realizar tareas administrativas del sistema contamos con varias opciones, "sudo" es una de las más usadas e incluida por defecto en distintas distros, al usar sudo se entra en un estado de administrador temporal, donde cada comando que pongamos lo ejecutaremos cómo administrador, sin embargo, pasado un tiempo, perderemos este poder y deberemos activarlo de nuevo. \r\n\r\nEjemplo: \r\n\r\n#Eliminar un archivo de respaldo del xorg.conf \r\nusuario@nombrePC:~$ sudo vim \r\n\r\n\r\nCambiar contraseña \r\n\r\nPara cambiar la contraseña de nuestro usuario podemos hacer uso del comando "passwd", este comando nos pedirá la contraseña actual y la nueva contraseña que queramos darle a nuestra cuenta. \r\n\r\nEjemplo: \r\n#Cambiando contraseña \r\nusuario@nombrePC:~$ passwd\r\n\r\n\r\nNota: Al teclear la contraseña no se produce nada por pantalla, es decir, no aparecen asteriscos (*) o algún otro simbolo, sin embargo si esta recibiendo lo que tecleamos. \r\n\r\nLoguearse \r\n\r\nEn ocasiones necesitamos loguearnos como si fueramos otra persona, el comando "su" nos servirá para esa tarea, puede usarse tanto para loguearse como un usuario normal así como para loguearse como super usuario. \r\n\r\nEl super usuario como ya se ha comentado antes tiene todos los permisos sobre el sistema, cuando vamos a hacer muchos cambios es conveniente loguearnos como el en lugar de utilzar sudo, ya que no necesitaremos teclear continuamente el comando para realizar una acción cómo administrador, si no que simplemente se loguea cómo el y automaticamente gana todos los permisos pudiendo trabajar cómo si de un usuario normal se tratase. \r\n\r\nEjemplo: \r\n#Login como Invitado \r\nusuario@nombrePC:~$ su invitado \r\n\r\n#Login cómo Super Usuario \r\nusuario@nombrePC:~$ su\r\n\r\n\r\nNota: Se debe tener especial cuidado al trabajar como super usuario ya que puede hacer cualquier cosa sobre el sistema. \r\n\r\nTrasteando con la terminal \r\n\r\nUna vez visto algunos de los comandos más usados es una buena idea jugar un rato con la terminal. Esta parte es opcional y únicamente sirve para cojer un poco de soltura. \r\n#Abre la terminal como se indicó al comienzo del tutorial \r\n\r\nusuario@nombrePC:~$ ls \r\n#Miramos los directorios y archivos que hay en la ruta actual \r\n... Desktop(Escritorio) ... \r\n\r\nusuario@nombrePC:~$ cd Desktop(Escritorio) \r\n#Entramos al directorio Escritorio o Desktop según nos haya mostrado el comando ls \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ mkdir PRUEBA \r\n#Creamos un directorio nuevo llamado PRUEBA en el escritorio \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ cd prueba \r\n#Accedemos al nuevo directorio \r\n\r\nbash: cd: prueba: No existe el fichero o el directorio \r\n#Nos informa que el directorio que deseamos no existe \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ dir \r\n#Utilizamos este comando para ver como se llama el directorio que creamos anteriormente (Se puede usar igualmente el comando ls) \r\n... PRUEBA ... \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ cd PRUEBA \r\n#Accedemos al directorio escribiendo su nombre tal y como nos ha mostrado el comando anterior \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)/PRUEBA$ cd .. \r\n#Para ir a un nivel superior, es decir, salir del directorio \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ cp -r PRUEBA/ PRUEBA1/ \r\n#Copiamos el directorio a PRUEBA1 \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ ls \r\n... PRUEBA PRUEBA1 ... \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ mv PRUEBA1 PRUEBA \r\n#Movemos el directorio PRUEBA1 a dentro del direcotrio PRUEBA \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ rm -r PRUEBA \r\n#Eliminamos el directorio PRUEBA \r\n\r\nusuario@nombrePC:~/Desktop(Escritorio)$ cd ~ \r\n#Te dirige al directorio de tu usuario \r\n\r\nusuario@nombrePC:~$ clear \r\n#Te borra todo lo escrito de la terminal\r\n
4	manual de blender                                                                                   	¿Qué es Blender?\r\nBlender es un programa que integra una serie de herramientas para la creación de un amplio\r\nrango de contenidos 3D, con los beneficios añadidos de ser multiplataforma y tener un tamaño\r\nde unos 5MB.\r\nDestinado a artistas y profesionales de multimedia, Blender puede ser usado para crear\r\nvisualizaciones 3D, tanto imágenes estáticas como vídeos de alta calidad, mientras que la\r\nincorporación de un motor de 3D en tiempo real permite la creación de contenido interactivo\r\nque puede ser reproducido independientemente.\r\nOriginalmente desarrollado por la compañía 'Not a Number' (NaN), Blender es ahora\r\ndesarrollado como 'Software Libre', con el código fuente disponible bajo la licencia GNU\r\nGPL.\r\nCaracterísticas principales:\r\n• Paquete de creación totalmente integrado, ofreciendo un amplio rango de herramientas\r\n    esenciales para la creación de contenido 3D, incluyendo modelado, mapeado uv,\r\n    texturizado, rigging, weighting, animación, simulación de partículas y otros, scripting,\r\n      renderizado, composición, post-producción y creación de juegos.\r\n• Multiplataforma, con una interfaz unificada para todas las plataformas basada en\r\n   OpenGL, listo para ser usado en todas las versiones de Windows (98, NT, 2000 y XP),\r\n  Linux, OSX, FreeBSD, Irix y Sun, y otros sistemas operativos.\r\n• Arquitectura 3D de alta calidad permitiendo un rápido y eficiente desarrollo.\r\n• Canales de soporte gratuito vía http://www.blender3d.org .\r\n• Una comunidad mundial de más de 250.000 usuarios.\r\n• Tamaño pequeño de ejecutable para una fácil distribución.\r\nHistoria de Blender\r\nEn 1988, Ton Roosendaal co-fundó el estudio de animación Holandés NeoGeo. NeoGeo\r\nrápidamente se convirtió en el estudio más grande de animación 3D en Holanda y en una de\r\nlas más destacadas casas de animación en Europa. NeoGeo creó producciones que fueron\r\npremiadas (European Corporate Video Awards de 1993 y 1995) para grandes clientes\r\ncorporativos tales como la compañía multinacional de electrónica Philips. En NeoGeo, Ton\r\nfue el responsable tanto de la dirección artística como del desarrollo interno del software.\r\nDespués de una cuidadosa deliberación, Ton decidió que la actual herramienta 3D utilizada en\r\nel estudio de NeoGeo era demasiado vieja y voluminosa de mantener y actualizar y necesitaba\r\nser reescrita desde el principio. En 1995, esta reescritura comenzó y estaba destinado a\r\nconvertirse en el software de creación 3D que ahora conocemos como Blender. Mientras\r\n-2-\r\nNeoGeo continuaba refinando y mejorando Blender, Ton se dio cuenta que Blender podría ser\r\nutilizado como una herramienta para otros artistas fuera del estudio NeoGeo.\r\nEn 1998, Ton decidió crear una nueva compañía llamada Not a Number (NaN) derivada de\r\nNeoGeo para fomentar el mercado y desarrollar Blender. En la base de NaN, estaba el deseo\r\nde crear y distribuir gratuitamente una suite de creación 3D compacta y multiplataforma. En\r\nese momento, esto fue un concepto revolucionario ya que la mayoría de los programas\r\ncomerciales de modelado costaban miles de dólares. NaN esperaba conseguir una herramienta\r\nde modelado y animación de un nivel profesional al alcance del público en general. El modelo\r\nde negocio de NaN consistía en proporcionar productos comerciales y servicios alrededor de\r\nBlender. En 1999, NaN asistió a su primera conferencia en el Siggraph en un esfuerzo aún\r\nmayor para promocionar Blender. La primera convención del Siggraph para Blender en 1999\r\nfue un auténtico éxito y provocó un enorme interés tanto de la prensa como de los asistentes a\r\nla convención. ¡Blender fue un gran éxito y se confirmó su tremendo potencial!\r\nEn alas del gran éxito del Siggraph, a principios del año 2000, NaN consiguió una\r\nfinanciación de 4,5 millones de euros procedente de unos inversores. Este gran aporte de\r\ndinero permitió a NaN expander rápidamente sus operaciones. Pronto NaN alardeó de tener\r\nmás de 50 empleados trabajando alrededor del mundo intentando mejorar y promocionar\r\nBlender. En el verano del 2000, Blender 2.0 fue publicado. Esta versión de Blender integraba\r\nun motor de juegos a la suite 3D. Al final del 2000, el número de usuarios registrados en el\r\nsitio web de NaN sobrepasó los 250.000.\r\nDesafortunadamente, las ambiciones y oportunidades de NaN no coincidieron con las\r\ncapacidades de la compañía ni con la realidad del mercado de la época. Este\r\nsobredimensionamiento de la empresa condujo a una reestructuración creando una compañia\r\n(NaN) mas pequeña y con nuevos fondos procedentes de los inversores. Seis meses mas tarde,\r\nel primer producto comercial de NaN, Blender Publisher fue lanzado. Este producto fue\r\ndirigido al emergente mercado de medios interactivos en 3D basados en entornos web.\r\nDebido a las decepcionantes ventas y al continuo clima de dificultades económicas, los\r\nnuevos inversores decidieron dar por terminadas las actividades de NaN. Esto también incluía\r\nparar el desarrollo de Blender. Si bien existían claramente defectos en la actual versión de\r\nBlender, con una arquitectura interna del software compleja, características inacabadas y una\r\nIGU no muy común, la magnífica ayuda de la comunidad y los clientes que habían comprado\r\nBlender Publisher en el pasado provocó que Ton no pudiera permitir que Blender\r\ndesapareciera en el olvido. Como relanzar una nueva compañía con un equipo suficientemente\r\ngrande de desarrolladores no era factible, en marzo de 2002, Ton Roosendaal fundó la\r\norganización no lucrativa Blender Foundation (Fundación Blender).\r\nEl primer objetivo de la Fundación Blender fue encontrar una manera de continuar el\r\ndesarrollo y la promoción de Blender como un proyecto de código abierto basado en la\r\ncomunidad de usuarios. En julio de 2002, Ton logró obtener de los inversores de NaN un "sí"\r\npara que la Fundación Blender llevara a cabo su plan de que Blender fuera código abierto. La\r\ncampaña de "Liberad a Blender" tenía que obtener 100.000 EUR para que la Fundación\r\npudiese comprar los derechos del código fuente y los de propiedad intelectual de Blender a los\r\ninversores de NaN y, posteriormente, liberar Blender a la comunidad de código abierto. Con\r\nun entusiasta grupo de voluntarios, entre los que se encontraban varios ex-empleados de NaN,\r\nfue lanzada la campaña de "Liberad a Blender". Para el deleite y sorpresa de todo el mundo, la\r\ncampaña alcanzó el objetivo de 100.000 EUR en tan sólo 7 semanas. El domingo 13 de\r\noctubre de 2002, Blender fue liberado al mundo bajo los términos de la Licencia Pública\r\n-3-\r\nGeneral de GNU (GPL). El desarrollo de Blender continúa hasta nuestros días conducido por\r\nun equipo de valientes y dedicados voluntarios procedentes de diversas partes del mundo y\r\nliderados por el creador de Blender, Ton Roosendaal.\r\nHistoria de Blender y hoja de ruta\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n1.00 - enero de 1995 - Desarrollo de Blender en el estudio de animación NeoGeo.\r\n1.23 - enero de 1998 - Versión para SGI (IrisGL) publicada en la web.\r\n1.30 - abril de 1998 - Versión para Linux y FreeBSD, se porta a OpenGL y a X.\r\n1.3x - junio de 1998 - Creación de NaN.\r\n1.4x - septiembre de 1998 - Versión para Sun y Linux Alpha publicada.\r\n1.50 - noviembre de 1998 - Primer manual publicado.\r\n1.60 - abril de 1999 - C-key (nuevas caracteristicas necesitan ser desbloqueadas, $95),\r\nla version de Windows se libera.\r\n1.6x - junio de 1999 - Versión para BeOS y PPC publicada.\r\n1.80 - junio de 2000 - Fin de la C-key, Blender es totalmente gratuito de nuevo.\r\n2.00 - agosto de 2000 - Motor en tiempo-real y reproductor interactivo.\r\n2.10 - diciembre de 2000 - Nuevo motor, física y Python.\r\n2.20 - agosto de 2001 - Sistema de animación de personajes.\r\n2.21 - octubre de 2001 - Blender Publisher lanzado.\r\n2.2x - diciembre de 2001 - Versión para Mac OSX publicada.\r\n13 de octubre de 2002 - Blender se convierte en código abierto, primera Conferencia\r\nde Blender.\r\n2.25 - octubre de 2002 - Blender Publisher está de nuevo disponible gratuitamente.\r\nTuhopuu1 - octubre de 2002 - Se crea la rama experimental de Blender, un lugar de\r\npruebas para los programadores.\r\n2.26 - febrero de 2003 - La primera versión de Blender siendo código abierto.\r\n2.27 - mayo de 2003 - La segunda versión de Blender siendo código abierto.\r\n2.28x - julio de 2003 - La primera de las series 2.28x.\r\n2.30 - octubre de 2003 - En la segunda conferencia de Blender, la interfaz 2.3x es\r\npresentada.\r\n2.31 - diciembre de 2003 - Actualización a la interfaz de la versión 2.3x, ya que es\r\nestable.\r\n2.32 - enero de 2004 - Gran revisión de la capacidad del render interno.\r\n2.33 - abril de 2004 - Oclusión Ambiental, nuevos procedimientos de Texturas, ¡el\r\nmotor de juego ha vuelto!.\r\n2.34 - agosto de 2004 - Grandes mejoras: Interacciones de Partículas, mapeado LSCM\r\nUV, integración funcional de YafRay, Pliegues compensados en Subdivisión de\r\nSuperficies, Sombreado de Inclinación (Ramp), OSA completo y muchas muchas más.\r\n2.35 - noviembre de 2004 - Otra versión llena de mejoras: Object hooks, curve\r\ndeforms and curve tapers, particle duplicators y mucho más.\r\n2.36 - febrero de 2005 - Versión más estable, más trabajo en la escena, pocas nuevas\r\nmejoras, mapeado Normal y de Desplazamiento, principalmente.\r\n2.37 - junio de 2005 - Un gran avance: herramientas de Transformación y controles,\r\nSoftbodies, Force fields, deflections, incremental Subdivision Surfaces, sombras\r\ntransparentes, y renderizado multihilo.\r\n2.40 - diciembre de 2005 - Un mayor avance: reescritura del sistema de esqueletos,\r\nteclas de formas, piel con partículas, fluidos y cuerpos rígidos.\r\n2.41 - enero de 2006 - Principalmente añadidos en el Motor de juego y correcciones.\r\n-4-\r\nSobre el Software Libre y la licencia GPL\r\nCuando uno escucha hablar sobre "software libre", la primera cosa que le viene a la mente es\r\n"gratuito". Aunque esto es verdad en la mayoría de los casos, el término "software libre" tal\r\ncomo es usado por la Fundación para el Software Libre (creadores del proyecto GNU y de la\r\nLicencia Pública General GNU) significa "libre, como en libertad" más que "gratis, como en\r\ncerveza gratis" (N. del T. En inglés tienen el problema de que la palabra "free" significa gratis\r\ny libre, por eso al definir "free software" tienden a hacer distinción entre software gratuito y\r\nsoftware libre). Software libre es, en este sentido, aquel software que puedes usar, copiar,\r\nmodificar y distribuir sin ningún límite. Esto contrasta con la licencia de la mayoría de\r\npaquetes de software comerciales, en donde se te permite usar el software en una sola\r\ncomputadora pero no está permitido hacer copias y menos aún ver el código fuente. El\r\nsoftware libre da una increíble libertad al usuario. Como añadidura a todo esto, debido a que\r\nel código fuente está disponible para todo el mundo, los fallos pueden ser detectados y\r\ncorregidos de una manera más eficiente y rápida.\r\nCuando un programa es licenciado bajo la Licencia Pública General GNU (la GPL):\r\n•\r\n•\r\n•\r\n•\r\nTienes el derecho de usar el programa para cualquier propósito.\r\nTienes el derecho de modificar el programa, y tener acceso al código fuente.\r\nTienes el derecho de copiar y distribuir el programa.\r\nTienes el derecho de mejorar el programa, y publicar tus propias versiones.\r\nA cambio de esos derechos, también tienes algunas responsabilidades, que están diseñadas\r\npara proteger tu libertad y la libertad de otros, por lo que si distribuyes un programa GPL:\r\n•\r\n•\r\n•\r\n•\r\nDebes proporcionar una copia de la GPL con el programa, así el usuario es consciente\r\nde los derechos que le otorga la licencia.\r\nDebes incluir el código fuente o hacer que esté disponible gratuitamente.\r\nSi modificas el código y distribuyes una versión modificada, dichas modificaciones\r\ndeben estar licenciadas bajo la GPL y tienes que facilitar el código fuente modificado.\r\n(No puedes usar código GPL como parte de un programa propietario.)\r\nNo puedes licenciar el programa fuera de los términos de la licencia GPL. (No puedes\r\ntransformar un programa GPL en un producto propietario).\r\nPara más información sobre la licencia GPL, visita el sitio web del Proyecto GNU. Para\r\nreferencia, una copia de la licencia pública general de GNU se incluye en el Manual de\r\nReferencia.\r\nConsiga ayuda - La comunidad de usuarios de Blender\r\nAl estar Blender disponible de forma gratuita desde un principio, incluso cuando el código era\r\ncerrado, ayudó mucho en su adopción. Una gran comunidad estable y activa de usuarios ha\r\nestado creciendo alrededor de Blender desde el año 1998.\r\nLa comunidad mostró lo mejor de sí misma en el momento crucial de la liberación de\r\nBlender, convirtiéndolo en código abierto bajo la licencia GNU GPL hacia finales del verano\r\ndel año 2002.\r\n-5-\r\nLa comunidad está ahora dividida en dos sitios con muchas características compartidas:\r\n•\r\n•\r\nLa comunidad de desarrollo, centrada alrededor de la web de la Fundación Blender\r\nhttp://www.blender.org. Aquí es donde están los proyectos de desarrollo, las listas de\r\nfuncionalidades y documentación, el repositorio CVS con las fuentes de Blender,\r\ntodas las fuentes de documentación y foros de discusión. Los desarrolladores de\r\nBlender, los que hacen scripts de python, los documentadores, y cualquiera que trabaje\r\nen el desarrollo de Blender, generalmente, puede ser encontrado aquí\r\nLa comunidad de usuarios, centrada alrededor de un sitio independiente\r\nhttp://www.blenderartists.com. Aquí es donde los artistas, los creadores de juegos y\r\nlos aficionados a Blender se reúnen para mostrar sus creaciones, obteniendo críticas\r\npara mejorarlas, y donde pueden pedir ayuda para obtener una mejor comprensión de\r\nlas funcionalidades de Blender. Algunos tutoriales de Blender y una base con el\r\nconocimiento básico se pueden encontrar también aquí.\r\nEstas dos páginas web no son los únicos recursos de Blender. La comunidad alrededor del\r\nmundo ha creado una gran cantidad de sitios independientes, con diferentes idiomas o\r\nespecializadas en diferentes áreas. Una constante actualización de los recursos para Blender se\r\nencuentra en cualquiera de los sitios mencionados anteriormente.\r\nPara una crítica instantanea, hay tres canales de chat disponibles en irc.freenode.net. Puedes\r\nunirte a la conversación con tu programa IRC favorito.\r\nLos canales son #blenderchat para discusiones generales sobre Blender, #blenderqa para\r\npreguntar sobre el uso de Blender, y #gameblender para discusiones sobre temas relacionados\r\ncon la creación de juegos con el motor de Blender. Para los desarrolladores, también existen\r\n#blendercoders para preguntar y discutir temas de desarrollo, al igual que para cada reunión\r\nde los Sábados a las ?; #blenderpython para discutir sobre el API de Python y el desarrollo de\r\nscripts; #blenderwiki para preguntas relacionadas con la edición del wiki.\r\nInstalando desde Binarios\r\nBlender está disponible en la web de la de la Fundación (http://www.blender.org/) como\r\nejecutable y como código fuente. En la página principal busca la sección de Descargas\r\n('Downloads').\r\nDe todas formas, para una correcta comprensión de este libro, es altamente recomendable\r\nutilizar la versión incluida en el CDROM. Por lo tanto, cuando en el párrafo anterior\r\nmencionábamos "sección de descargas", también asumiremos que puede conseguirse desde el\r\nCDROM.\r\nEl ejecutable está disponible para 6 sistemas operativos:\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\nWindows\r\nLinux\r\nMacOSX\r\nFreeBSD\r\nIrix\r\nSolaris\r\n-6-\r\nLinux actualmente dispone de 4 opciones para las arquitecturas de Intel y PowerPC, con las\r\nlibrerías enlazadas estática o dinamicamente.\r\nLa diferencia entre enlazado dinámico y estático es importante. El estático tiene la librería\r\nOpenGL compilada en su interior. Esto hace que Blender corra en su sistema, sin utilizar la\r\naceleración por hardware de su tarjeta gráfica. Utilice la versión estática para comprobar si\r\nBlender funciona cuando la versión dinámica falle. OpenGL se usa en Blender para todo el\r\ndibujado, incluyendo menús y botones. Esta dependencia hace que la instalación, en tu\r\nsistema, de la librería OpenGL sea necesaria. No todos los fabricantes de tarjetas gráficas 3D\r\ndan soporte a OpenGL, especialmente para las tarjetas más baratas destinadas al mercado de\r\nvideojuegos.\r\nDesde que los 'renders' se hacen en Blender con el motor de renderizado utilizando la\r\nmemoria principal y el procesador de tu computadora, una tarjeta gráfica con aceleración por\r\nhardware no supone ninguna diferencia en el tiempo de renderizado.\r\nWindows\r\nInstalación Rápida\r\nDescargue el fichero blender-2.3#-windows.exe, donde 2.3# es el número de la versión, de la\r\nsección de descargas del sitio web de Blender. Comience la instalación haciendo 'doble click'\r\nsobre el fichero descargado. En este proceso se le harán varias preguntas, para las cuales las\r\nrespuestas que hay por defecto deberían bastar. Después que la instalación haya finalizado,\r\npuede comenzar a usar Blender directamente, o bien, puede usar la entrada que se habrá\r\ncreado en el menú Inicio.\r\nInstrucciones Detalladas\r\nDescargue el fichero blender-2.3#-windows.exe de la sección de descargas del sitio web de\r\nBlender. Elija descargarlo, seleccione un directorio y pulse "salvar" (Save). Entonces, con el\r\nexplorador, dirijase al directorio donde haya guardado el fichero y haga "doble-click" para\r\ncomenzar la instalación.\r\nEl primer diálogo le muestra la licencia de Blender. Si quiere que la instalación continué\r\ntendrá que aceptarla. Después de aceptar la licencia, seleccione los componentes que desee\r\ninstalar (solo hay uno, Blender) y las acciones adicionales que quiera llevar a cabo. Hay tres:\r\nAñadir un enlace directo al menú de Inicio, añadir un icono de Blender al escritorio y asociar\r\nlos archivos .blend con el programa Blender. Por defecto, todas las acciones están\r\nseleccionadas. Si no quiere que se ejecute alguna de esas acciones simplemente\r\ndeseleccionela. Cuando esté hecho, simplemente presione en siguiente (Next).\r\nSeleccione un lugar para instalar los archivos (el lugar que viene por defecto debería valer), y\r\npresione en siguiente (Next) para instalar Blender. Presione cerrar (Close) cuando la\r\ninstalación haya terminado.\r\nPor último, se le preguntará si quiere que el programa de instalación ejecute a continuación\r\nBlender. Una vez que esté instalado Blender puede ejecutarse desde el menú de Inicio (una\r\nentrada se ha creado por el programa de instalación con el nombre de "Blender Foundation")\r\no bien haciendo "doble-click" en un archivo de Blender (*.blend).\r\n-7-\r\nOSX\r\nInstalación\r\nDescargue el fichero blender-2.3#-darwin-6.6-powerpc.dmg de la sección de descargas del\r\nsitio web de Blender. Descomprimalo haciendo "doble-click" en el archivo. Esto abrirá un\r\ndirectorio con varios ficheros.\r\nDesde que Blender usa OpenGL para dibujar su interfaz, y MacOS X también lo utiliza para\r\ndibujar su escritorio, necesita verificar primero que dispone de suficiente memoria VRAM en\r\nsu sistema. Por debajo de 8 MB de memoria VRAM Blender no funcionará. Por encima de 16\r\nMB de memoria VRAM necesitará configurar su sistema para que tenga "miles de colores"\r\n(1000s of colors) en (System Preferences -> Displays).\r\nAhora puede usar Blender simplemente con hacer "doble-click" en el icono de Blender. O\r\narrastrar el icono de Blender al panel principal (Dock) para crear un acceso directo. Blender,\r\npor defecto, se iniciará en una pequeña ventana. Utilice el botón "+" en la cabecera de la\r\nventana para maximizarlo. Más consejos y avisos sobre la versión para MacOS X se\r\nencuentran en el archivo OSX tips.rtf en el directorio donde esté Blender instalado.\r\nLinux\r\nInstalación Rápida\r\nDescargue el fichero blender-2.3#-linux-glibc#.#.#-ARCH.tar.gz de la sección de descargas\r\ndel sitio web de Blender. Aquí 2.3# es la versión de Blender, #.#.# es la versión de la librería\r\nglibc y ARCH es la arquitectura de la computadora, que puede ser i386 o powerpc. Debería\r\nescoger la correspondiente a su sistema, recuerde elegir entre enlazado dinamico o estático.\r\nDesempaquete el fichero en la localización de su elección. Esto creará un directorio\r\ndenominado blender-2.3#-linux-glibc#.#.#-ARCH, en el cual encontrará el binario de blender.\r\nPara comenzar Blender unicamente abre una consola y ejecuta el comando ./blender, por\r\nsupuesto cuando el servidor gráfico 'X' esté funcionando.\r\nInstrucciones detalladas\r\nDescargue el fichero blender-2.3#-linux-glibc#.#.#-ARCH.tar.gz de la sección de descargas\r\ndel sitio web de Blender. Elija descargarlo, seleccione un directorio y pulse "salvar" (Save).\r\nEntonces navegue hasta la localización que haya elegido para la instalación de blender (p.ej.\r\n/usr/local/) y desempaquete el fichero (con el comando tar xzf /ruta/donde/está/blender-2.3#-\r\nlinux-glibc#.#.#-ARCH.tar.gz). Si usted desea, puede renombrar el directorio resultante del\r\ndesempaquetado blender-2.3#-linux-glibc#.#.#-ARCH a algo más corto, como por ejemplo\r\nblender.\r\nAhora Blender está instalado y se puede ejecutar desde la linea de comandos (consola)\r\nsimplemente poniendo ./ruta/donde/está/blender y presionando la tecla "enter". Si usa KDE o\r\nGNOME, puede comenzar Blender usando el explorador de archivos que utilice\r\nhabitualmente navegando hasta donde esté el ejecutable de Blender y haciendo "doble-click"\r\nen él.\r\n-8-\r\nSi usa Sawfish, puede que quiera añadir una linea como esta ("Blender" (system "blender\r\n&")) a su archivo .sawfish/rc de configuración.\r\nAñadir un icono para blender en KDE\r\n1. Seleccione el "Editor de Menú" en el submenu System del menú de KDE.\r\n1. Seleccione el submenú etiquetado como "Gráficos" en la lista.\r\n1. Pinche en el botón "Nuevo dispositivo". Una caja de dialogo aparecerá para que elija\r\nun nombre. Cree el nombre y pinche en "OK". "Blender" o "Blender 2.3#" serían unas\r\nelecciones bastantes lógicas, pero elegir otro cualquiera no afectará al funcionamiento\r\ndel programa.\r\n1. Será devuelto al listado del menú, y el submenú "Gráficos" se expanderá, con su\r\nnueva entrada resaltada. En la sección de la derecha, aseguresé de que los siguientes\r\ncampos son rellenados: "Nombre", "Comentario", "Comando", "Tipo" y "Ruta de\r\ntrabajo".\r\n•\r\n•\r\n•\r\n•\r\n•\r\nEl campo "Nombre" debería estar ya rellenado , pero puede modificarlo en\r\ncualquier momento.\r\nRellene el campo "Comentario". Aquí es donde define la etiqueta que\r\naparecerá sobre el icono cuando pase con el puntero por encima.\r\nPinche en el icono de la carpeta al final del campo "Comando" para buscar el\r\nicono de blender. Selecione el icono y pulse en "OK" para volver al "Editor de\r\nMenú".\r\nEl campo "Tipo" debería ser "Application".\r\nEl campo "Ruta de trabajo" debería ser el mismo que el del campo "Comando",\r\ncon el nombre del programa suprimido. Por ejemplo, si en el campo\r\n"Comando"\r\npone\r\n/home/user/blender-publisher-#.##-linux-glibc#.#.#-\r\nARCH/blender, el campo "Ruta de trabajo" debería ser /home/user/blender-\r\npublisher-#.##-linux-glibc#.#.#-ARCH/.\r\n1. Pinche en "Aplicar" y cierre el "Editor de Menú".\r\nPara añadir un enlace a Blender en el panel de KDE, pulse el boton derecho del ratón sobre un\r\nespacio vacio del panel, y entonces pulse "Añadir", luego "Botón", después "Gráficos" y por\r\núltimo selecciona "Blender" (o el nombre que haya elegido en el paso 3). Alternativamente,\r\npuede navegar a través del submenú "Panel de configuración" del menú de KDE y hacer\r\n"Añadir", "Botón", "Gráficos" y "Blender".\r\nPara añadir un icono para Blender en el escritorio, abra el navegador Konqueror (que se puede\r\nencontrar en el Panel, o en submenú "Sistema" del menú de KDE) y navegue hasta el icono de\r\nBlender que se encuentra donde descomprimió por primera vez el programa. Pinche y\r\nseleccione el icono y muevalo desde el navegador hasta un espacio vacio de su escritorio. Se\r\nle preguntará si quiere copiarlo, moverlo o enlazarlo en esa localización. Elija enlazarlo.\r\n-9-\r\nAñadir un icono para blender en GNOME\r\n1. Selecciona "Editar menús" en el submenú Panel del menú de GNOME.\r\n1. Selecciona el submenú "Gráficos", y pinche en el botón "Nuevo dispositivo".\r\n1. En el panel derecho, rellene los campos "Nombre:", "Comentario:" y "Comando:".\r\nRellene el campo "Nombre:" con el nombre del programa, por ejemplo "Blender".\r\nPuede darle el nombre que más le guste, solo es lo que aparecerá en el menu, pero no\r\nafectará a la funcionalidad del programa. Rellene el campo "Comentario:" con un\r\ncomentario descriptivo. Esto es lo que se mostrará en las etiquetas emergentes.\r\nRellene el campo "Comando:" con la ruta hasta el programa blender, por ejemplo,\r\n/home/user/blender-publisher-#.##-linux-glibc#.#.#-ARCH/blender\r\n1. Pinche en el botón "No Icono" para elegir un icono. Puede haber o no un icono para\r\nBlender en la localización por defecto. Puede hacer uno, o buscar el que viene con\r\nKDE.\r\nEl\r\nicono\r\nde\r\nKDe\r\ndebería\r\nestar\r\nen\r\n/opt/kde/share/icons/hicolor/48x48/apps/blender.png. Si su directorio de instalación es\r\ndiferente, puede buscarlo usando este comando en un terminal o una consola: find / -\r\nname "blender.png" -print\r\n1. Pinche en el botón "Salvar" y cierre el "Editor de Menú".\r\nPara añadir un icono al panel, pincha con el botón derecho del ratón en un espacio vacio del\r\nPanel, entonces selecciona "Programas", luego "Gráficos", y después "Blender".\r\nAlternativamente, podría pinchar en el menú GNOME, seleccionar "Panel", entonces "Añadir\r\nal panel", luego "Lanzar desde el menu", después "Gráficos", y por último "Blender".\r\nPara añadir un icono para Blender en el escritorio, abra el navegador Nautilus (doble-click en\r\nel icono de la casa en la esquina superior izquierda de su escritorio, o pinche en el menú\r\nGNOME, entonces "Programas", luego "Aplicaciones", y "Nautilus"). Navegue hasta el\r\ndirectorio que contiene el icono del programa Blender. Piche con el botón derecho del ratón, y\r\nmuevaló hacia el escritorio. Un menú aparecerá preguntandole si quiere copiar, mover,\r\nenlazar o cancelar. Seleccione enlazar.\r\nFreeBSD\r\nIntalación\r\nDescargue el archivo blender-2.3#-freebsd-#.#-i386.tar.gz de la sección de descargas del sitio\r\nweb de Blender. Aquí 2.3# es la versión de Blender, #.# es la versión de FreeBSD y i386 es la\r\narquitectura de la computadora.\r\nPara comenzar Blender unicamente abra una consola y ejecute el comando ./blender, por\r\nsupuesto cuando el servidor gráfico 'X' esté funcionando.\r\n- 10 -\r\nIrix\r\nInstalación\r\nDescargue el archivo blender-2.3#-irix-6.5-mips.tar.gz desde la sección de descargas de la\r\nweb de Blender. Aquí 2.3# es la versión de Blender, 6.5 es la versión de Irix y mips es la\r\narquitectura del ordenador.\r\nPara comenzar Blender unicamente abra una consola y ejecute el comando ./blender, por\r\nsupuesto cuando el servidor gráfico 'X' esté funcionando. Blender se desarrolló originalmente\r\npara la plataforma IRIX, pero actualmente esta plataforma no está siendo activamente\r\nmantenida en todas sus versiones. Para algunas estaciones de trabajo se ha informado de la\r\nexistencia de algunos problemas que afectan al rendimiento.\r\nSolaris\r\nInstalación\r\nDescargue el archivo blender-2.3#-solaris-2.8-sparc.tar.gz desde la sección de descargas de la\r\nweb de Blender. Aquí 2.3# es la versión de Blender, 2.8 es la versión de Solaris y sparc es la\r\narquitectura de la computadora.\r\nActualmente no hay instrucciones disponibles para Solaris. Por favor utilice los foros del sitio\r\nweb de Blender para obtener ayuda.\r\n- 11 -\r\nLa Interfaz\r\nSi es nuevo en Blender, debería asimilar como trabajar con la interfaz de usuario antes de\r\nponerse a modelar. Los conceptos detrás de la interfaz de Blender hacen que esta no sea muy\r\nestándar, sino que sea diferente de los otros paquetes 3D. Especialmente los usuarios de\r\nWindows necesitarán coger el truco a la manera en la que Blender maneja los controles, tales\r\ncomo botones o movimientos de ratón. Pero esta diferencia es de hecho la gran fuerza de\r\nblender: una vez comprenda la manera en la que funciona Blender, encontrará que puede\r\nhacer su trabajo extraordinariamente rápido y de manera muy productiva.\r\nPor otro lado, la interfaz de Blender ha cambiado sustanciosamente desde la versión 2.28 a la\r\nversión 2.3, así que incluso los usuarios más experimentados podrán sacar partido a este\r\ncapítulo.\r\nConceptos de la Interfaz de Blender\r\nLa interfaz de usuario es el mecanismo de interacción mutua entre el usuario y el programa.\r\nEl usuario se comunica con el programa mediante el teclado y el ratón, el programa responde\r\npor medio de lo que muestra en pantalla.\r\nEl teclado y el ratón\r\nLa interfaz de Blender saca provecho de los ratones de tres botones y una amplia gama de\r\natajos de teclado (en el Volumen II se encuentra una descripción detallada). Si el ratón sólo\r\ntiene dos botones, es posible emular el botón central (interface_functions_settings describe\r\ncomo). Es posible usar un ratón con rueda, pero no es obligatorio, ya que también existen\r\natajos de teclado que cumplen la misma función. Este libro asume las siguientes convenciones\r\npara describir la entrada de usuario:\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\nLos botones del ratón se abrevian como BIR (botón izquierdo del ratón), BMR (botón\r\nmedio del ratón) y BDR (botón derecho del ratón).\r\nSi el ratón tiene una rueda, BMR se refiere a hacer click con la rueda como si ésta\r\nfuera un botón, mientras que RR significa girar la rueda.\r\nLas letras de los atajos se nombran añadiendo TECLA a la letra, es decir TECLAG se\r\nrefiere a la letra g en el teclado. Las teclas pueden ser combinadas con los\r\nmodificadores SHIFT, CTRL y/o ALT. Generalmente para las teclas modificadas el\r\nsufijo TECLA se descarta, por ejemplo CTRL-W o SHIFT-ALT-A.\r\nNUM0 a NUM9, NUM+ y así sucesivamente, se refiere a las teclas ubicadas en el\r\nteclado numérico. Generalmente NumLock debería ser activada.\r\nEn el caso de otras teclas, se les refiere usando sus nombres, tal como ESC, TAB, F1 a\r\nF12.\r\nOtras teclas especiales para tener en cuenta son las teclas de dirección, ARRIBA,\r\nABAJO, IZQUIERDA y DERECHA.\r\nDado que Blender hace un uso tan extensivo del ratón y el teclado, entre los usuarios se ha\r\nhecho popular una "regla de oro": mantener una mano en el ratón y la otra en el teclado! Si\r\nnormalmente usa un teclado que es considerablemente diferente de la distribución de teclas\r\ninglesa, podría ir pensando en cambiar a uno con ésta o la distribución americana para el\r\n- 12 -\r\ntrabajo con Blender. Las teclas de mayor uso están agrupadas de tal manera que pueden ser\r\nalcanzadas con la mano izquierda en posición estándar (dedo índice sobre TECLAF) en la\r\ndistribución de teclado inglesa. Se asume que se usa el ratón con la mano derecha.\r\nEl sistema de ventanas\r\nAhora es tiempo de iniciar Blender y empezar a explorar.\r\nLa escena por defecto de Blender.\r\nLa escena por defecto de Blender. muestra la vista de pantalla que debe obtenerse al haber\r\niniciado Blender(excepto por las flechas y el texto añadido). Por defecto está separada en tres\r\nventanas: el menu principal en la parte alta, la vista 3D grande y la Ventana de Botones abajo.\r\nLa mayoría de las ventanas tiene un encabezado (la franja con un fondo gris claro que\r\ncontiene botones con iconos - por esto se le llamará, también, Barra de Herramientas); si está\r\npresente, el encabezado puede ubicarse en la parte alta (como en la Ventana de Botones) o en\r\nla parte baja (como en la vista 3D) del área de una ventana. Si se mueve el ratón sobre una\r\nventana, es posible notar que su encabezado cambia a un gris más claro. Esto significa que\r\nésta está "enfocada"; todos los atajos de teclado que se presionen afectarán ahora el contenido\r\nde esta ventana. Es posible personalizar el sistema de ventanas de Blender para satisfacer las\r\nnecesidades y gustos del usuario. Una ventana nueva puede ser creada fraccionando una\r\nexistente. Esto se hace "enfocando" la ventana que se quiere fraccionar (poner el puntero del\r\nratón dentro de esta), hacer click en el borde con BCR o BDR y seleccionar Split Area (El\r\nmenu de Split para crear ventanas nuevas.). Ahora es posible ubicar el nuevo borde haciendo\r\nclick con BIR, o cancelar el fraccionamiento presionando la tecla ESC. La nueva ventana será\r\n- 13 -\r\nun clon de la ventana que fue fraccionada, pero ahora puede ser convertida a una ventana de\r\notro tipo, o hacer que muestre la escena desde otro punto de vista.\r\nElementos de la Interface: Las etiquetas en los botones de la interface,\r\nlos elementos de menú y, en general, cualquier texto mostrado en la\r\npantalla se resalta en este libro de esta manera.\r\nEl menu de Split para crear ventanas nuevas.\r\nUn nuevo borde vertical es creado al escoger Split Area en un borde horizontal y viceversa.\r\nCada ventana puede ser redimensionada arrastrando un borde con el BIR. Para reducir el\r\nnúmero de ventanas, se hace click en un borde entre dos ventanas con BCR o BDR y se\r\nescoge Join Areas. La ventana resultante recibe las propiedades de la ventana enfocada\r\npreviamente. Para ajustar la posición de un encabezado se hace click con el BDR sobre el\r\nencabezado y se escoge Top o Bottom. También es posible ocultar el encabezado\r\nseleccionando No Header, pero esta opción sólo se recomienda si todos los atajos de teclado\r\nrelativos se conocen. Un encabezado oculto se puede volver a mostrar haciendo click en el\r\nborde de la ventana con BCR o BDR y seleccionando Add Header.\r\nTipos de ventanas\r\nEl marco de cada ventana puede contener diferentes tipos y conjuntos de datos, dependiendo\r\nde lo que se está haciendo. Estos pueden incluir modelos 3D, animación, materiales de la\r\nsuperficie, scripts Python, y así sucesivamente. Se puede seleccionar el tipo de cada ventana\r\nhaciendo click en el botón de más a la izquierda en su encabezado con el BIR (El menú de\r\nselección del tipo de ventana.).\r\nEl menú de selección del tipo de ventana.\r\n- 14 -\r\nSe explicarán las funciones y el uso de cada tipo de ventana a lo largo del libro. Por ahora\r\nsólo se prestará atención a los tres tipos de ventana que se encuentran en la escena por defecto\r\nde Blender:\r\n•\r\nVista 3D\r\nProvee una vista gráfica de la escena en la cual se está trabajando. Es posible ver la\r\nescena desde cualquier ángulo con una variedad de opciones; para información\r\ndetallada, vease interface_3d. Tener varias vistas en la misma pantalla es útil si se\r\ndesea observar el efecto de los cambios desde distintas perspectivas al mismo tiempo.\r\n•\r\nButtons Window(Ventana de Botones)\r\nContiene la mayoría de las herramientas para editar objetos, superficies, texturas, luces\r\ny mucho más. Esta ventana se usa constantemente si los atajos de teclado no se saben\r\nde memoria. Por supuesto, es posible tener más de una ventana de estas, cada una con\r\nun conjunto de herramientas diferente.\r\n•\r\nPreferencias de Usuario (Menu Principal)\r\nUsualmente esta ventana está oculta, así que sólo la parte del menú está visible - para detalles,\r\nver la interface_functions_settings. Raramente se usa, pues contiene ajustes de la\r\nconfiguración global.\r\nEn Blender 2.30 hay varias novedades. Primero que todo, los encabezados de ventana tienden\r\na ser mucho más limpios, menos saturados por botones y los menús ahora están presentes en\r\nmuchos encabezados. La mayoría de los encabezados, inmediatamente después del botón de\r\nmenú "Tipo de Ventana", exhibe un grupo de menús; esta es una de las nuevas características\r\nprincipales de la interface 2.30. Los menús ahora permiten acceder directamente a muchas de\r\nlas características y comandos que anteriormente sólo eran accesibles por medio de atajos de\r\nteclado o botones misteriosos. Los menús pueden ser ocultados y mostrados por medio del\r\nbotón triangular junto a ellos. Los menús no son sólo dependientes de la ventana (cambian\r\ncon el tipo de ventana) sino también dependientes del contexto (cambian de acuerdo con el\r\nobjeto seleccionado) así que siempre son muy compactos, mostrando sólo las acciones que\r\npueden ser realizadas. Todas las entradas de menú muestran el atajo de teclado relativo, si lo\r\nhay. El flujo de trabajo de Blender se optimiza al máximo cuando se usan atajos de teclado.\r\nAsí que el resto de este libro ofrecerá mayormente atajos de teclado, en lugar de elementos de\r\nmenú. De todas formas los menús son muy preciados, pues ofrecen una visión general, hasta\r\ndonde es posible, de todas las herramientas y comandos que Blender ofrece. Una\r\ncaracterística de las ventanas que a veces resulta práctica para hacer edición precisa es la de\r\nmaximizar a pantalla completa. Si se usa el elemento de menú View>Maximize Window\r\napropiado o el atajo de teclado CTRL-ABAJO, la ventana enfocada se extenderá para llenar la\r\npantalla completa. Para regresar al modo de tamaño normal, se usa el elemento de menú\r\nView>Tile Window o CTRL-ARRIBA.\r\nContextos, Paneles y Botones\r\nLos botones de Blender son mucho más emocionantes que los de la mayoría de otras\r\ninterfaces de usuario y se volvieron aún mejores en la versión 2.30. Esto es mayormente\r\ndebido al hecho de que son basados en vectores y dibujados en OpenGL, lo que los hace\r\n- 15 -\r\nelegantes y permite hacer zoom en ellos. Los botones se hallan agrupados mayormente en la\r\nVentana de Botones. Desde Blender 2.3 la Ventana de Botones muestra seis contextos\r\nprincipales, los cuales se pueden seleccionar por medio de alguno de los botones en el primer\r\ngrupo en el encabezado (Contextos y Sub-Contextos), a su vez cada uno de estos puede ser\r\nsubdividido en un número variable de sub-contextos, a los cuales se puede acceder a través de\r\nlos botones del segundo grupo en el encabezado (Contextos y Sub-Contextos):\r\nContextos y Sub-Contextos\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\nLógica - atajo F4\r\nScripts - sin atajo\r\nShading - atajo F5\r\nLámpara - sin atajo\r\nMaterial - sin atajo\r\nTextura - atajo F6\r\nRadiosidad - sin atajo\r\nMundo - atajo F8\r\nObjeto - atajo F7\r\nEdición - atajo F9\r\nEscena - atajo F10\r\nRenderizado - sin atajo\r\nAnimación/Reproducción - sin atajo\r\nSonido - sin atajo\r\nUsualmente, una vez el contexto ha sido seleccionado por el usuario, el subcontexto es\r\ndeterminado por Blender basándose en el objeto activo. Por ejemplo, en el contexto\r\n"Shading", si una lámpara está seleccionada, el subcontexto muestra los Botones de Lámpara,\r\nsi una malla u otro objeto renderizable está seleccionado, entonces el subcontexto activo\r\nvendrá a ser el de Botones de Material y si una cámara está seleccionada el subcontexto activo\r\nes Mundo. La novedad más notable en la interface es probablemente la presencia de Paneles\r\npara agrupar lógicamente los botones. Cada panel es del mismo tamaño. Pueden ser movidos\r\nhaciendo click con el BIR en su encabezado y arrastrando. Los paneles pueden ser alineados\r\nhaciendo click con el BDR en la ventana de botones y escogiendo la distribución deseada en\r\nel menú que aparece (Menu de la Ventana de Botones.).\r\nMenu de la Ventana de Botones.\r\nLa RR desplaza los paneles en su dirección de alineamiento, CTRL-RR y CTRL-BCR hacen\r\nzoom de acercamiento y alejamiento. Paneles individuales pueden ser colapsados/expandidos\r\nhaciendo click con el BIR en el triángulo ubicado a la izquierda de su encabezado. Los\r\npaneles particularmente complejos se organizan en Fichas. Haciendo click con el BIR en una\r\nficha en el encabezado del panel cambian los botones mostrados (Paneles con fichas). Las\r\n- 16 -\r\nfichas se pueden "desligar" de un panel para formar paneles independientes haciendo click\r\nsostenido con el BIR en su encabezado y arrastrándolas fuera. De manera similar, paneles\r\nseparados se pueden convertir en un solo panel con fichas soltando el encabezado de un panel\r\nsobre otro.\r\nPanel con fichas.\r\nComo un último elemento de interface, hay varios tipos de botones que se disponen en las\r\nfichas de los paneles:\r\n•\r\nBotones de Operación.\r\nEstos son botones que efectúan una operación cuando se les hace click (con el BIR,\r\ncomo todos los botones). Pueden ser identificados por el color pardusco que tienen en\r\nel esquema visual por defecto de Blender. (Un botón de operación).\r\nUn botón de operación\r\n•\r\nBotón Alternante.\r\nLos botones alternantes vienen en varios tamaños y colores (Botones alternantes). Los\r\ncolores verde, violeta y gris no modifican la función, sólo ayudan a facilitar la\r\nagrupación visual y reconocer el contenido de la interface más rápidamente. Hacer\r\nclick en un botón de estos no genera acción alguna, sólo alterna un estado entre "on" y\r\n"off".\r\nAlgunos botones también tienen un tercer estado que se puede identificar por que el\r\ntexto se vuelve amarillo (el botón Ref en Botones alternantes). Usualmente el tercer\r\nestado significa "negativo" y el estado normal "on" significa "positivo".\r\nBotones alternantes\r\n•\r\nBotones de Radio.\r\nLos botones de radio son grupos particulares de botones alternantes mutuamente\r\nexcluyentes. Tan sólo uno de estos botones puede estar "on" en un momento dado.\r\n•\r\nBotones Numéricos.\r\n- 17 -\r\nLos botones numéricos (Botones numéricos) pueden ser identificados por sus títulos,\r\nque contienen ":" seguido por un número. Los botones numéricos son manipulados de\r\nvarias formas:\r\nPara incrementar el valor, se hace click con el BIR en la parte derecha del botón,\r\ndonde se observa un triángulo pequeño; para decrementarlo, se hace click en la parte\r\nizquierda del botón, donde se encuentra otro triángulo.\r\nPara cambiar el valor en un rango más amplio, se hace click sostenido con el BIR y se\r\narrastra el ratón a la derecha o a la izquierda.\r\nSi mantiene oprimida la tecla CTRL mientras lo hace, el valor cambia con saltos\r\ngrandes; si sostiene oprimida la tecla SHIFT, tendrá un control más sutil sobre los\r\nvalores. La tecla ENTER presta la misma utilidad que el BIR.\r\nBotones numéricos\r\nEs posible ingresar un valor usando el teclado si se sostiene la tecla SHIFT y se hace\r\nclick con el BIR. Presionando la combinación SHIFT-RETROCESO se elimina el\r\nvalor contenido en el botón; con SHIFT-IZQUIERDA se mueve el cursor al inicio; y\r\nSHIFT-DERECHA mueve el cursor al final. Presionando ESC se restaura el valor\r\noriginal. Algunos botones de número contienen un deslizador y no sólo un número con\r\ntriángulos laterales. El mismo método de operación se aplica para estos, excepto que el\r\nclick con el BIR se debe efectuar en la parte izquierda o derecha del deslizador, en\r\ntanto que hacer click en la etiqueta o el número automáticamente iniciará el modo de\r\nentrada por teclado.\r\n•\r\nBotones de Menú.\r\nLos botones de menú se usan para escoger de una lista de elementos creada\r\ndinámicamente. Los botones de menú son usados principalmente para enlazar\r\n"DataBlocks" entre sí. (DataBlocks son estructuras como Mallas, Objetos, Materiales,\r\nTexturas y otros; al enlazar un material a un objeto, éste queda asignado). Un ejemplo\r\nde este tipo de bloque de botones se muestra en Botones de enlace de DataBlocks. El\r\nprimer botón (con los diminutos triángulos apuntando arriba y abajo) abre un menú\r\nque permite seleccionar el DataBlock al cual efectuar el enlace, esto se hace\r\nsosteniendo oprimido el BIR y liberándolo cuando el puntero se halle sobre el\r\nelemento deseado. El segundo botón muestra el tipo y nombre del DataBlock enlazado\r\ny permite editar su nombre después de hacer click con el BIR. El botón con la "X"\r\nelimina el enlace, el botón con el "carro" genera un nombre automáticamente para el\r\nDataBlock y el botón con la "F" especifica que el DataBlock deberá ser almacenado\r\nen el archivo aún si no está siendo usado (no tiene enlace alguno).\r\nObjetos sin enlace alguno: Los datos sin enlace sólo se pierden hasta que\r\nse cierra Blender. Esta es una poderosa característica que permite deshacer\r\nerrores. Si un objeto es eliminado el material que tiene asignado pasa a\r\nestar sin enlace, pero aún existe! Solo se debe re-enlazar a otro objeto o\r\npresionar el botón "F".\r\n- 18 -\r\nBotones de enlace de DataBlocks\r\nCaja de Herramientas (ToolBox)\r\nAl presionar la tecla ESPACIO en la Vista 3D, o sostener el BIR o el BDR con el ratón quieto\r\ndurante más de medio segundo se abre la Caja de Herramientas. Esta contiene 6 contextos\r\nprincipales dispuestos en dos líneas, cada uno de los cuales abre menús y submenús. Tres de\r\nestos contextos abren los mismos tres menús presentes en el encabezado de la vista 3D; los\r\notros tres, Add permite añadir objetos nuevos a la escena mientras Edit y Transform muestran\r\ntodas las operaciones que se pueden efectuar sobre el(los) objetos seleccionado(s). (La Caja\r\nde Herramientas).\r\nLa Caja de Herramientas\r\nPantallas (Screens)\r\nLa flexibilidad de las ventanas de Blender permite crear entornos de trabajo personalizados\r\npara diferentes tareas, tales como modelado, animación y creación de scripts. A menudo\r\nresulta útil intercambiar rápidamente entre diferentes entornos dentro del mismo archivo. Esto\r\nes posible al crear varias Pantallas: Todos los cambios a las ventanas que se describen en El\r\nsistema de ventanas y Tipos de ventanas se almacenan en una pantalla, de modo que si las\r\n- 19 -\r\nventanas de una pantalla son modificadas, las otras no resultarán afectadas en lo absoluto.\r\nPero la escena en la cual se está trabajando es la misma en todas las pantallas. Blender incluye\r\npor defecto tres pantallas diferentes; están disponibles a través del Botón de Menú SCR en el\r\nencabezado de la Ventana de Preferencias de Usuario mostrado en Selectores de Pantalla y\r\nEscena. Para cambiar a la pantalla siguiente, alfabéticamente, se debe presionar la\r\ncombinación CTRL-DERECHA; para cambiar a la pantalla previa, alfabéticamente, se\r\npresiona la combinación CTRL-IZQUIERDA.\r\nSelectores de Pantalla y Escena\r\nEscenas\r\nTambién es posible tener varias escenas dentro del mismo archivo de Blender. Las escenas\r\npueden usar objetos de otras o ser completamente independientes entre sí. Con el botón de\r\nmenú SCE, ubicado en el encabezado de la Ventana de Preferencias de Usuario, se puede\r\ncrear o seleccionar una escena (Selectores de Pantalla y Escena). Cuando se crea una escena\r\nnueva, es posible escoger entre cuatro opciones para controlar su contenido:\r\n• Empty Crea una escena vacía.\r\n• Link Objects crea la escena nueva con el mismo contenido de la escena seleccionada\r\n   actualmente. Los cambios en una escena afectarán igualmente a la otra.\r\n• Link ObData crea la nueva escena basada en la escena seleccionada actualmente, con\r\n   enlaces a las mismas mallas, materiales, etc. Esto significa que la posición de los\r\n   objetos puede ser cambiada, junto con otras propiedades, pero modificaciones de las\r\n  mallas, materiales, etc. afectarán igualmente la otra escena, a menos que se indique\r\n  manualmente la creación de copias con usuario único (single-user copies).\r\n• Full Copy crea una escena completamente independiente con copias del contenido de\r\n   la escena seleccionada actualmente.\r\n- 20 -\r\nNavegando en el Entorno 3D\r\nBlender te permite trabajar en un espacio tridimensional, pero las pantallas de nuestros\r\nmonitores son sólo bi-dimensionales. Para poder trabajar en tres dimensiones, debes ser capaz\r\nde cambiar tanto tu punto de vista como la dirección en la que ves la escena. Esto es posible\r\nen todas las vistas 3D. Aunque vamos a describir la ventana de vista en 3D, la mayoría de las\r\nventanas no-3D usan una serie de funciones equivalentes, por ejemplo es incluso posible\r\narrastrar y escalar una Ventana de Botones y sus Paneles.\r\nLa dirección de la vista (rotando)\r\nBlender ofrece tres direcciones de vista por defecto: Lateral, Frontal, and Superior. Como\r\nBlender usa un sistema de coordenadas "de mano derecha" con el eje Z apuntando hacia\r\narriba, la vista "Lateral" corresponde a una mirada desde el eje X axis, en la dirección\r\nnegativa; la vista "Frontal" es desde el eje Y; y la "Superior" desde el eje Z. Puedes\r\nseleccionar la dirección de la vista para una ventana 3D con las entradas de Menú Vista (El\r\nmenú de vistas de una ventana 3D.) o presionando los atajos de teclado NUM3 para "Lateral",\r\nNUM1 para "Frontal", y NUM7 para "Superior".\r\nAtajos de teclado: Recuerda que la mayoría de los atajos de teclado afectan a la ventana\r\nactiva, así que comprueba que el cursor del ratón está en el área donde quieres trabajar\r\nantes de usar los atajos de teclado!\r\nEl menú de vistas de una ventana 3D.\r\n- 21 -\r\nAparte de estas tres direcciones por defecto, la vista puede ser girada con cualquier ángulo\r\nque necesites. Haz clic y arrastra MMB en el área de la ventana: si comienzas en el medio de\r\nla ventana y te mueves hacia arriba y hacia abajo o hacia la derecha y la izquierda, la vista\r\ngira alrededor del centro de la ventana. Si comienzas en el borde y no te mueves hacia el\r\ncentro, puedes girar alrededor de tu eje de vista. Juega un poco con esta función hasta que\r\ncontroles su manejo. Para cambiar el ángulo de vista en pasos sucesivos, usa NUM8 y NUM2,\r\nque corresponden al arrastre vertical. MMB o usa NUM4 y NUM6, que corresponden al\r\narrastre horizontal MMB.\r\nTrasladando y Escalando la Vista\r\nPara trasladar la vista, pulsa SHIFT y arrastra MMB en la Ventana 3D. Para hacerlo en pasos\r\nsucesivos, usa las combinaciones de teclas CTRL-NUM8, CTRL-NUM2, CTRL-NUM4 y\r\nCTRL-NUM6 como con las rotaciones. Puedes escalar la vista (acercarte y alejarte) pulsando\r\nCTRL y arrastrando MMB. Los atajos de teclado son NUM+ y NUM- . Los sub-menús\r\nView>>Viewport Navigation contienen también estas funciones.\r\nProyección en Perspectiva y Ortográfica\r\nCada Ventana 3D soporta dos tipos diferentes de proyección. Los mostramos en Ortográfica\r\n(izquierda) y perspectiva (derecha).: ortográfica (izquierda) y perspectiva (derecha).\r\nOrtográfica (izquierda) y perspectiva (derecha).\r\nNuestro ojo está acostumbrado a ver en perspectiva porque los objetos distantes parecen más\r\npequeños. La proyección Ortográfica, a menudo, parece incorrecta al principio porque los\r\nobjetos permanecen del mismo tamañoo independientemente de su distancia: es como ver la\r\nescena desde un punto infinitamente distante. Al contrario, la vista ortográfica es muy útil (es\r\nel modo por defecto en Blender y en la mayoría de aplicaciones 3D), porque ofrece un aspecto\r\nmás "técnico" de la escena, facilitando el dibujo y los cálculos de proporciones.\r\nPerspectiva and Ortográfica: La vista en Perspectiva se construye geométricamente de esta\r\nmanera: tienes una escena en 3D y tu eres un observador situado en un punto O. La escena\r\ncon perspectiva 2D se construye situando un plano, una hoja de papel donde la escena 2D se\r\ndibuja en frente del punto O, perpendicular a la dirección de la vista. Para cada punto P en la\r\n- 22 -\r\nescena 3D se dibuja una linea, pasando entre O y P. El punto de intersección S entre esta\r\nlínea y el plano es la proyección en perspectiva de ese punto. Proyectando todos los puntos P\r\nde la escena obtendremos una vista en perspectiva. En una proyección ortográfica, también\r\nllamadas "ortonormales", por otra parte, tienes una dirección de vista pero no un punto de\r\nvista O. La línea que se dibuja atraviesa el punto P de forma paralela a la dirección de la\r\nvista. Las intersecciones S entre la línea y el plano conforman la proyección ortográfica. Y\r\nproyectando todos los puntos P de le escena obtenemos la vista ortográfica.\r\nPara cambiar la proyección de una ventana 3D Viewport, elige Vista>>Ortográfica o\r\nVista>>Perspectiva entradas de Menú (El menú de vistas de una ventana 3D.). El atajo de\r\nteclado NUM5 cambia entre los dos modos.\r\nLa entrada de Menú Vista>>Cámara pone la vista 3D en modo Cámara (Atajo: NUM0).\r\nEntonces la escena se muestra como será renderizada luego (vea Demostración de vista de\r\nCámara.): la imagen renderizada contendrá todo lo que abarque la línea de puntos exterior. Es\r\nposible acercarse y alejarse en esta vista, pero para cambiar el punto de vista tendremos que\r\nmover o girar la Cámara.\r\nDemostración de vista de Cámara.\r\nModo de Dibujado\r\nDependiendo de la velocidad de tu ordenador, de la complejidad de tu escena y del tipo de\r\ntrabajo que estés haciendo, puedes alternar entre diferentes modos de dibujado:\r\n• Texturizado - Intenta dibujarlo todo tan completamente como sea posible, aunque no\r\n   es aún una alternativa al renderizado. Nota que si no hay ninguna luz en tu escena todo\r\n   saldrá negro.\r\n• Sombreado - Dibuja superficies sólidas incluyendo el cálculo de iluminación. Como\r\n      en el modo Texturado, no verás nada sin luces.\r\n- 23 -\r\n• Sólido - Las Superficies se dibujan como Sólidos, pero también funciona sin luces.\r\n• Enrejado - Los objectos sólo consisten en líneas que hacen reconocibles las formas.\r\n     Este es el modo de dibujado por defecto.\r\n• Caja de Límites - Los objetos no son dibujados en absoluto; en vez de eso, este modo\r\n    enseña sólo las cajas rectangulares que corresponden al tamaño y a la forma de cada\r\n      objeto.\r\nEl modo de dibujado puede se elegido con el botón de menú apropiado en la cabecera (Un\r\nbotón de modo de dibujado de una vista 3D.) o con atajos de teclado: ZKEY cambia entre\r\nEnrejado y Sólido, SHIFT-Z cambia entre Enrejado y Sombreado.\r\nUn botón de modo de dibujado de una vista 3D.\r\nVista Local\r\nEn vista local, sólo los objetos seleccionados son mostrados, lo que puee facilitar la edición\r\nen escenas complejas. Para entrar en vista local, primero selecciona los objetos que quieres\r\n(ver mesh_modelling_objectmode_selecting) y después usa la entrada de menú; Vista>>Vista\r\nLocal usa la entrada de menú Vista>>Vista Global para volver a la vista global. (El menú de\r\nvistas de una ventana 3D.). El atajo es NUM/, que cambia entre vista Local y Global.\r\nEl sistema de Capas\r\nLas escenas en 3D a menudo se hacen mucho más confusas a medida que aumenta su\r\ncomplejidad. Para mantenerlas bajo control, los objetos pueden ser agrupados en "capas", para\r\nque sólo las capas que elijas sean mostradas en cualquier momento. Las capas de 3D difieren\r\nde las capas que puedes conocer de las aplicaciones gráficas en 2D: no tienen influencia en el\r\norden de dibujado y están ahí (a excepción de algunas funciones especiales) únicamente para\r\nofrecer al modelador un mejor control de las vistas. Blender utiliza 20 capas; tú eliges las que\r\nse muestran con los pequeños botones sin título de la cabecera (Los botones de Capas de una\r\nvista 3D.). Para seleccionar sólo una capa, haz clic en el botón apropiado con LMB; para\r\nseleccionar más de una, presiona MAYÚS mientras haces clic.\r\nLos botones de Capas de una vista 3D.\r\n- 24 -\r\nPara seleccionar capas con el teclado, presiona desde la tecla 1KEY hasta la tecla 0KEY (en\r\nel área principal del teclado) para las capas de 1 a 10 (la fila superior de botones), y ALT-1\r\nhasta ALT-0 para las capas 11 a 20 (la fila inferior). La tecla MAYÚS para selecciones\r\nmúltiples también funciona con estos atajos. Por defecto, el botón de bloquear a la derecha del\r\nbloque de capas está activado; esto significa que los cambios a la visibilidad de las capas\r\nafecta a todas las ventanas 3D. Para seleccionar ciertas capas sólo en una ventana, desactiva\r\nprimero el bloqueo. Para mover los objetos seleccionados a una capa diferente, presiona\r\nMKEY, selecciona la capa que quieres en el diálogo emergente, y finalmente haz clic en OK .\r\nCargando archivos\r\nBlender usa el formato de archivo .blend para salvar casi todo: Objectos, escenas, texturas, e\r\nincluso todas tus opciones de la ventana de preferencias del usuario. Para cargar un archivo\r\nBlender del disco, presiona F1. La ventana activa se transformará temporalmente en la\r\nVentana de selección de archivos como se muestra en la Ventana de Selección de Archivos -\r\ncargando.. La barra de la izquierda puede ser arrastrada con LMB para ver el resto de la lista.\r\nPara cargar un archivo, seleccionalo con LMB y presiona ENTER, o simplemente haz clic en\r\nél con MMB.\r\nVentana de Selección de Archivos - cargando.\r\nLa caja de texto superior muestra la ruta del directorio actual, y la inferior contiene el nombre\r\nde archivo seleccionado. El botón P (PKEY) te sitúa en el directorio anterior y el botón con la\r\ncoma mantiene un listado de rutas usadas recientemente. En Sistemas operativos Windows,\r\neste último también contiene una lista de todos los discos (C:, D:, etc).\r\nNota: Blender espera que tú sepas lo que estás haciendo! Cuando cargas un archivo, no se\r\nte pregunta si quieres guardar los cambios de la escena que tenías abierta: completar el\r\ndiálogo de carga de un archivo se considera suficiente confirmación de que no lo has hecho\r\npor accidente. Asegúrate de salvar tus archivos.\r\n- 25 -\r\nGuardando archivos\r\nGuardar archivos es como cargarlos: Cuando presionas F2, la ventana activa cambia\r\ntemporalmente a una ventana de selección de archivos, como se muestra en la Ventana de\r\nSelección de Archivos - guardando.. Haz clic en la ventana de edición inferior para escribir un\r\nnombre de archivo. Si no lo acabas con ".blend," la extension es añadida automáticamente.\r\nDespués presiona ENTER para guardar el archivo. Si ya existe un archivo con el mismo\r\nnombre, tendrás que confirmar que quieres guardar el archivo en la pregunta de sobre-escribir.\r\nVentana de Selección de Archivos - guardando.\r\nEl diáologo de salvar tiene una pequeña cualidad añadida para ayudarte a crear múltiples\r\nversiones de tu trabajo: Presionando NUM+ o NUM- incrementará o disminuirá un número\r\ncontenido en el nombre del archivo. Para simplemente salvar sobre el archivo actualmente\r\ncargado evitando el diálogo de salvar, presiona CTRL-W en vez de F2 y sólo tendrás que\r\nconfirmar la pregunta.\r\nRenderizando\r\nEsta sección te ofrece sólo un repaso rápido de lo que necesitarás para renderizar tu escena.\r\nEncontrarás una descripción detallada de todas las opciones en chapter_rendering. Las\r\nOpciones de Render están en el contexto Escena y en el sub-contexto Botones de Renderizado\r\n(Opciones de Renderizado en los Botones de Render.) al que se accede haciendo clic en\r\npresionando F10.\r\n- 26 -\r\n,o\r\nOpciones de Renderizado en los Botones de Render.\r\nPor ahora sólo nos interesa el panel Formato. El tamaño (número de pixeles horizontales y\r\nverticales) y el formato de archivo de la imagen a crear se eligen aquí. Puedes fijar el tamaño\r\nusando los botones SizeX y SizeY. Haciendo clic en la caja de selección de debajo (en\r\nOpciones de Renderizado en los Botones de Render., está seleccionado "Targa") abre un\r\nmenú con todos los formatos de salida disponibles para imágenes y animaciones. Para\r\nimágenes fijas podemos elegir Jpeg, por ejemplo. Ahora que las opciones están completas, la\r\nescena puede ser renderizada presionando el botón RENDER en el panel Render o\r\npresionando F12. Dependiendo de la complejidad de la escena, esto puede tardar\r\nnormalmente entre unos pocos segundos y varios minutos, y el progreso es mostrado en una\r\nventana separada. Si la escena contiene una animación, sólo se renderiza el fotograma actual\r\n(Para renderizar la animación completa, ver rendering_animation). Si no ves nada en la vista\r\nrenderizada, asegúrate de que tu escena está construida convenientemente. ¿Tiene luz? Está la\r\ncámara situada correctamente, y apunta en la buena dirección? ¿Están visibles todas las capas\r\nque quieres renderizar?\r\nNota: Una imagen renderizada no se salva automáticamente en el disco. Si estás satisfecho\r\ncon el renderizado, debes salvarlo presionando F3 y usando el diálogo de salvar tal como\r\ndescribimos en Section 3.3.2. La imagen es salvada en el formato que hayas seleccionado\r\npreviamente en los botones de Display.\r\nExtensiones de archivo: Blender no añade la extensión del formato automáticamente a los\r\narchivos de imagen! Tienes que escribir la extensión explícitamente, si la necesitas.\r\nPreferencias de usuario y Temas\r\nBlender tiene unas pocas opciones que no son guardadas con cada archivo, sino que se aplican\r\nse aplican a todos los archivos de un usuario. Estas preferencias incluyen detalles de la\r\nentrefaz del usuario, y propiedades del sistema como el ratón, las fuentes y los lenguajes.\r\nComo las preferencias del usuario son raramente necesarias, están escondidas bajo el menú\r\nprincipal. Para hacerlas visibles, baja el borde de la ventana del menú (normalmente el borde\r\nsuperior en la pantalla). Las opciones están agrupadas en siete categorías que pueden ser\r\nseleccionadas con los botones violeta mostrados en la Ventana de Preferencias del Usuario..\r\nVentana de Preferencias del Usuario.\r\n- 27 -\r\nYa que la mayoría de los botones se explican por sí mismos o muestran una útil ayuda si\r\nmantienes el cursor parado sobre ellos, no vamos a describirlos en detalle aquí. En lugar de\r\neso, te ofrecemos un repaso de las categorías de Preferencias:\r\n•\r\nVista & Controles\r\nLas opciones concernientes a cómo debe reaccionar la entrefaz a las acciones del\r\nusuario, como qué método de rotación debe usarse en las vistas 3D. Aquí puedes\r\nactivar también la emulación del ratón de 3 botones si el tuyo tiene sólo dos. MMB\r\npuede ser emulado con ALT-LMB.\r\n•\r\nMétodos de Edición\r\nTe permite especificar los detalles del funcionamiento de ciertos comandos de edición\r\ncomo duplicar.\r\n•\r\nLanguaje & Fuentes\r\nSelecciona una fuente TrueType alternativa para mostrar en la entrefaz, y elige entre\r\nlos lenguajes disponibles para la entrefaz.\r\n•\r\nTemas\r\nDesde la versión 2.30 Blender permite la utilización de Temas para definir colores\r\npersonalizados para la interfaz. Puedes crear y manejar temas desde aquí.\r\n•\r\nGuardar Automáticamente\r\nPuedes configurar Guardar Automáticamente para tener una copia de emergencia en\r\ncaso de que algo vaya mal. Estos archivos se llamarán Nombre.blend1,\r\nNombre.blend2, etc.\r\n•\r\nSistema & OpenGL\r\nDebes consultar esta sección si experimentas problemas con los gráficos o con la\r\nsalida de audio, o si no dispones de un teclado numérico y quieres imitarlo (para\r\nportátiles). Además, aquí puedes también configurar el esquema de luces para los\r\nmodos de dibujado Solido y Sombreado.\r\n•\r\nDirectorios de Archivos\r\nEscoge el directorio por defecto para varios diálogos de carga de archivos.\r\nConfigurando la escena por defecto\r\nNo te gusta la configuración de ventanas por defecto de Blender, o quieres unas opciones\r\nespecíficas de render para cada nuevo proyecto que empieces, o quieres guardar tu Tema? No\r\nhay problema. Puedes usar cualquier archivo de escena como opciones por defecto cuando\r\narranca Blender. Convierte la escena en la que estas trabajando en la opción por defecto\r\npresionando CTRL-U. La escena será copiada en un archivo denominado .B.blend en tu\r\n- 28 -\r\ndirectorio principal. Puedes borrar el proyecto actual y volver a la escena por defecto en\r\ncualquier momento presionando CTRL-X. Pero recuerda salvar primero tus cambios a la\r\nescena previa!\r\nSu Primera Animación en 30 Minutos I\r\nEste capítulo le guiará paso a paso a través de la animación de un pequeño personaje, "el\r\nhombre galleta". Describiremos completamente todas las acciones, pero asumiremos que se\r\nha leído enteramente el capitulo La interfaz, y que entiende las convenciones que se van a\r\nusar en el libro. En los primeros 30 minutos de este tutorial construiremos un hombre de\r\ngalleta estático. En los siguientes 30 minutos, le proporcionaremos un esqueleto y le\r\nanimaremos para que camine (walk cycle).\r\nCalentando\r\nComencemos.\r\n1. Arranque Blender haciendo doble-click en su icono o ejecutelo desde la linea de\r\ncomandos. Blender se abrirá mostrándole, desde la vista superior (top view), la\r\nconfiguración por defecto: una cámara y un plano. El plano está de color rosa, lo que\r\nsignifica que está seleccionado (Blender recien iniciado.). Elimine el plano con la\r\nTecla X y confirme su eliminación pinchando en Erase Selected en el dialogo que\r\naparecerá.\r\nBlender recién iniciado.\r\n- 29 -\r\nAhora seleccione la cámara con el RMB y presione la Tecla M. Una pequeña caja de\r\nherramientas, como esta Caja de herramientas para el control de capas., aparecerá bajo su\r\npuntero, con el primer botón ya seleccionado. En la fila de arriba seleccione el botón más a la\r\nderecha y luego pinche en el botón OK. Esto moverá su cámara a la capa (layer) 10.\r\nCaja de herramientas para el control de capas.\r\nBlender le proporciona 20 capas para ayudarle a organizar su trabajo. Puede ver que capas son\r\nvisibles actualmente a través del grupo de veinte botones en la barra de herramientas de la\r\nventana 3D (3D windows toolbar) (Controles de visibilidad de las capas.). Puede elegir que\r\ncapa quiere que sea visible con el LMB y seleccionar que varias capas sean visibles a la vez\r\ncon SHIFT-LMB.\r\nControles de visibilidad de las capas.\r\nConstruyendo el cuerpo\r\nCambie a la vista frontal (front view) con NUM1 y añada un cubo presionando en la Barra\r\nEspaciadora (SPACE) y seleccione el menú Add, el submenú Mesh, y luego Cube. (En el libro\r\nusaremos SPACE >> Add >> Mesh >> Cube como abreviatura para esta clase de acciones).\r\nUn cubo aparecerá (Nuestro cubo en Modo Edición, todos los vértices seleccionados.). Este\r\ncubo está en Modo Edición (EditMode), un modo en el cual puedes mover los vértices que\r\ncomponen la malla (mesh). Por defecto, todos los vertices están seleccionados (amarillos).\r\nLos vértices sin seleccionar son rosas.\r\nNuestro cubo en Modo Edición, todos los vértices seleccionados.\r\nLlamaremos a nuestro hombre galleta "Gus". Nuestro primer cometido es construir el cuerpo\r\nde Gus modificando nuestro cubo en Modo Edición. Para ver las herramientas que\r\nutilizaremos para este propósito, pulse el botón que muestra un cuadrado con vértices\r\namarillos en la cabecera de la ventana (El botón de la ventana de Edición.), o presione F9.\r\nEl botón de la ventana de Edición.\r\n- 30 -\r\nAhora localice el botón Subdivisión (Subdivide) en el panel Herramientas de Malla (Mesh\r\nTools) y presionele una vez (El panel Mesh Tools dentro de la ventana de Edición.). Esto\r\npartirá cada lado del cubo en dos, creando nuevos vértices y caras (El cubo, subdividido una\r\nvez.).\r\nEl panel Mesh Tools dentro de la ventana de Edición.\r\nEl cubo, subdividido una vez.\r\nCon el cursor sobre la ventana 3D (3D Window), presione la Tecla A para deseleccionar\r\ntodos los elementos. Los vértices se volverán rosas. Ahora presione la Tecla B; el cursor se\r\ntransformará en un par de lineas grises ortogonales (Box select).\r\nMueva su ratón sobre la parte superior izquierda del cubo y a continuación presione y\r\nmantenga el LMB, entonces arrastre el ratón hacia abajo y hacia la derecha para seleccionar\r\ntodos los vértices que se encuentren a la izquierda. Ahora deje de pulsar el LMB. Esta\r\nsecuencia, la cual le permite seleccionar un grupo de vértices con una caja, está descrita en La\r\nsecuencia de seleccionar con una caja un grupo de vértices..\r\n- 31 -\r\nLa secuencia de seleccionar con una caja un grupo de vértices.\r\nAhora presiona la Tecla X y, en el menú emergente, selecciona Vertices para eliminar los\r\nvértices seleccionados (El menú emergente para borrar (Tecla X) en acción.).\r\nEl menú emergente para borrar (Tecla X) en acción.\r\nAhora, usando la secuencia que acaba de aprender, seleccione con una caja los dos vértices de\r\nla esquina superior derecha (Extruyendo los brazos en dos pasos., derecha). Presione la Tecla\r\nE y pinche en la entrada de menú Extrude para extruirlos. Esto creará nuevos vértices y\r\nnuevas caras que podrá mover y que seguirán al puntero del ratón. Muevalas a la derecha.\r\nPara restringir el movimiento horizontal o verticalmente, pulse MMB mientras se este\r\nmoviendo. Puede cambiar a un movimiento sin restricciones pulsando MMB de nuevo.\r\nAlternativamente puede usar la Tecla X para restringir el movimiento al eje x, la Tecla Y para\r\nrestringirlo al eje y, etc. Vamos a crear brazos y piernas a Gus. Mueva esos vértices nuevos un\r\ncuadrado y medio a la derecha, entonces pulse LMB para fijar su posición. Extruya de nuevo\r\ncon la Tecla E entonces mueva los vértices nuevos otro medio cuadrado a la derecha.\r\nExtruyendo los brazos en dos pasos. muestra esta secuencia.\r\nExtruyendo los brazos en dos pasos.\r\nGus debería tener actualmente un brazo izquierdo (ey! Gus nos está mirando). Contruiremos\r\nla pierna izquierda de la misma manera, extruyendo los vértices inferiores. Intente hacerlo tal\r\ny como se muestra en Medio cuerpo.. Usaremos la herramienta de extruir 3 veces para crear la\r\npierna. ¡No se preocupe por los codos, pero necesitaremos una rodilla más tarde!\r\n- 32 -\r\nMedio cuerpo.\r\nNota: El CD contiene un fichero .blend con este ejemplo, guardado en varias fases del\r\nmodelado. El primer fichero, Quickstart00.blend contiene lo que debería haber conseguido\r\nhasta ahora. Los pasos subsiguientes son numerados progresivamente, Quickstart01.blend,\r\nQuickstart02.blend y así, mientras Quickstart.blend contiene el resultado final. Este\r\nestándar se aplica a todos los otros ejemplos en este libro.\r\nAhora crearemos la otra mitad de Gus:\r\n• Seleccione todos los vértices (Tecla A) y elige la entrada 3D Cursor en el menú\r\n     Rotation/Scaling Pivot (eje o punto de rotación/escalado) de la cabecera de la ventana\r\n     3D (Configure el centro de referencia a el cursor.).\r\n• Presione SHIFT-D para duplicar todos los vértices, aristas y caras seleccionadas. Al\r\n    duplicar nos encontraremos en modo de movimiento, presione ESC para salir de este\r\n   modo sin mover los vértices.\r\n• Presione la Tecla M para abrir el menú Mirror Axis (eje de reflexión). Elija Global X\r\n     (eje X global). El resultado es el mostrado en Voltee la copia de la mitad del cuerpo\r\n    para obtener un cuerpo completo..\r\nConfigure el centro de referencia a el cursor.\r\n- 33 -\r\nVoltee la copia de la mitad del cuerpo para obtener un cuerpo completo.\r\n•\r\nDeseleccione todo y entonces vuelva seleccionarlo presionando la Tecla A dos veces,\r\nentonces elimine los vértices coincidentes presionando el botón Remove doubles (La\r\nventana de botones de edición.). Una ventana aparecerá, notificandole que ocho\r\nvértices han sido eliminados.\r\nGus Necesita una cabeza:\r\n• Mueva exactamente el cursor a un cuadrado de la rejilla por encima del cuerpo de Gus\r\n   (La secuencia de añadir una cabeza., izquierda). Añada un nuevo cubo aquí\r\n     (SPACE>>ADD>>Mesh>>Cube).\r\n• Presione la Tecla G para cambiar al Modo Movimiento y mover los vértices creados\r\n    hacia abajo restringiendo el movimiento con MMB, más o menos una tercera parte de\r\n    una unidad de rejilla (La secuencia de añadir una cabeza., derecha).\r\nLa secuencia de añadir una cabeza.\r\n•\r\nEsto produce una figura muy tosca. Para hacerla mas suave, localice el botón SubSurf\r\n(Subdivisión de superficies) Figure 4-16 en el panel de Mesh y activelo. Asegurese de\r\nponer a 2, ambos botones inferiores.\r\nNota: Subdivisión de superficies es una herramienta de modelado avanzado, que\r\ndinamicamente crea una malla mucho más densa a partir de los vértices de la malla inicial,\r\nhaciendo de esta forma una malla mas suave y uniforme que sigue la forma original de la\r\nmalla que es mucho más tosca. La forma del objeto está aún controlada por la localización de\r\nlos vértices de la malla original, pero la forma que se renderiza es la malla subdividida, que\r\nes mucho más suave.\r\n- 34 -\r\n•\r\nSalga del modo Edición (TAB) y cambie la visión del objeto del Modo Alambre\r\n(Wireframe mode) al Modo Sólido (Solid Mode) con la Tecla Z. para echarle un\r\nvistazo a Gus (Haciendo a Gus más suave., izquierda).\r\nLa ventana de botones de Edición.\r\nHaciendo a Gus más suave.\r\n•\r\nPara hacer que Gus parezca más liso, presione el botón SetSmooth (La ventana de\r\nbotones de Edición.). Ahora Gus aparecerá liso pero con divertidas lineas negras en\r\nmedio (Haciendo a Gus más suave., medio). Esas lineas aparecen porque la malla\r\nsubdividida está calculada usando las direcciones normales de la malla tosca, las\r\ncuales pueden no ser muy consistentes, esto es, que algunas normales de las caras\r\npueden apuntar hacia dentro, algunas hacia fuera, si extrusiones o volteados han sido\r\nhechos. Para resetear las normales, regrese al modo Edición (TAB), seleccione todos\r\nlos vértices (AKEY), y presione CTRL-N. Pulse con LMB en Recalc normals outside\r\n(Recalcular las normales hacia fuera) en la ventana que aparecerá. Ahora Gus debería\r\naparecer correctamente, tal como se muestra Haciendo a Gus más suave.. Presione\r\nMMB y arrastre el ratón alrededor de Gus para verle desde todos los ángulos. Oh, ¡es\r\ndemasiado grueso!. Para corregir esto, cambia a la vista lateral NUM3. Ahora, entra en\r\nel Modo Edición (si no te encuentras en él), y regresa al modo Alambre (Tecla Z), y\r\nselecciona todos los vértices con la Tecla A (Adelgazando a Gus utilizando el\r\nescalado restringido.).\r\n- 35 -\r\nAdelgazando a Gus utilizando el escalado restringido.\r\nVamos a hacer a Gus más delgado:\r\n• Presione la Tecla S y comience a mover el ratón horizontalmente. Pulse MMB para\r\n    restringir el escalado solo a un eje o presione la Tecla Y para obtener el mismo\r\n   resultado. Si ahora movemos el ratón veremos como Gus comienza a hacerse más\r\n    delgado pero manteniendo la misma altura.\r\n• Los tres numeros en la barra de herramientas de la ventana 3D muestran el factor de\r\n   escalado. Una vez que el escalado está restringido, solo uno de esos numeros variará.\r\n    Presione y mantenga CTRL. El factor de escalado ahora variará de 0.1 en 0.1.\r\n    Reduzca a Gus con un factor de 0.2, introduciendo su dimensión pulsando LMB.\r\n• Regrese a la vista frontal y al Modo Sólido (Tecla Z), entonces rote su vista con\r\n    MMB. ¡Gus está mucho mejor ahora!\r\nVeamos como se ve Gus\r\nEstamos listos para ver nuestro primer renderizado, pero antes de eso, tenemos algún trabajo\r\nque hacer.\r\n•\r\nShift-LMB en la esquina superior derecha para accionar el pequeño botón de los\r\nbotones de visibilidad de las capas en la barra de herramientas de la ventana 3D\r\n(Haciendo visibles las capas 1 y 10.) para conseguir que tanto la capa 1 (la capa de\r\nGus) como la capa 10 (la capa de la cámara) sean visibles.\r\nHaciendo visibles las capas 1 y 10.\r\n- 36 -\r\nNota: Recuerde que la última capa seleccionada es la capa activa, por lo que todas los\r\nañadidos subsecuentes se harán automaticamente en la capa 10.\r\n•\r\nSeleccione la cámara (RMB) y muevalá a la siguiente localización (x=7, y=-10, z=7).\r\nPuede hacer esto presionando la Tecla G y arrastrando la cámara mientras mantiene\r\npresionado CTRL para moverla en pasos de 1 unidad en 1 unidad de rejilla.\r\nPara conseguir que la cámara apunte a Gus, mantenga su cámara seleccionada y entonces\r\nseleccione a Gus con SHIFT-RMB. La cámara debería estar de color rosa y Gus de color rosa\r\nclaro. Ahora presione CTRL-T y seleccione la entrada Old Track en la ventana emergente.\r\nEsto forzará a la cámara a seguir a Gus y siempre le seguirá. Esto significa que puede mover\r\nla cámara donde quiera y puede estar seguro que Gus siempre estará en el centro de la vista de\r\nla cámara.\r\n{{Tip|Seguimiento (Tracking)| Si el objeto a seguir ha sufrido ya una rotación, como acurre\r\nmuy a menudo, el resultado de pulsar CTRL-T puede no ser el esperado. Si le ocurre esto,\r\nseleccione el objeto que realiza el seguimiento (en nuestro caso la cámara), y presione ALT-R\r\npara borrar cualquier rotación del objeto. Una vez que haga esto la cámara realmente seguirá a\r\nGus.\r\nLa posición de la cámara con respecto a Gus. muestra las vistas superior, frontal, lateral y de\r\ncámara de Gus. Para obtener una vista de cámara presione la Tecla NUM0.\r\nLa posición de la cámara con respecto a Gus.\r\nAhora necesitamos crear el terreno para que Gus se mantenga de pie.\r\n•\r\nEn la vista superior (NUM7), y fuera del modo Edición, añada un plano\r\n(SPACE>>ADD>>Mesh>>Plane).\r\n- 37 -\r\nNota: Es importante salir del modo Edición, porque si no el objeto añadido formará parte del\r\nobjeto que actualmente se encuentra en modo Edición, como hicimos con la cabeza de Gus\r\ncuando la añadimos. Si el cursor está donde se muestra Figure 4-21, el plano se añadirá en\r\nmitad del cuerpo de Gus.\r\n• Cambia a modo Objeto y a la vista frontal (NUM1) y mueva (Tecla G) el plano hasta\r\n   los pies de Gus, usando CTRL para mantenerlo alineado con Gus.\r\n• Cambiamos el centro de referencia de cursor (donde lo configuramos al principio) a\r\n   objeto presionando el botón resaltado Seleccione el centro de referencia al centro del\r\n   objeto..\r\n• Ve a la vista de cámara (NUM0) y, con el plano aún seleccionado, presiona la Tecla S\r\n     para comenzar a escalarlo.\r\nSeleccione el centro de referencia al centro del objeto.\r\n•\r\nAlargue el plano hasta que sus lados se extiendan más allá del area de visión de la\r\ncámara , que está indicado por el rectangulo de rayas blancas en la vista de cámara.\r\nAhora, ¡algo de luz!\r\n•\r\nEn la vista superior (NUM7), añada una lámpara de luz (Lamp)\r\n(SPACE>>ADD>>Lamp) en frente de Gus, pero en el otro lado de la cámara; por\r\nejemplo en (x=-9, y=-10, z=7) (Insertando una lámpara.).\r\n- 38 -\r\nInsertando un lámpara.\r\n•\r\nCambie a los botones de lámpara (Lamp Buttons) en el contexto de materiales a través\r\ndel botón con una lámpara en la barra de herramientas de la ventana de botones (El\r\nbotón para el panel de lámparas.) o presione simplemente F5.\r\nEl botón para el panel de lámparas.\r\n•\r\nEn la ventana de botones, en el panel Preview, presione el botón Spot para convertir la\r\nlámpara en una Spotlight (luz tipo foco) (Configuración de una luz Spot.) de color\r\namarillo claro (R=1, G=1, B=0.9). Ajuste ClipSta: a 5, Samples: a 4, y Soft: a 8.\r\nConfiguración de una luz Spot.\r\n• Haga que la luz Spot siga a Gus, tal como hizo con la cámara, seleccionando la luz,\r\n    luego presionando SHIFT, luego Gus, y por último Ctrl-T. Si ha añadido la luz Spot\r\n     en la vista superior no debería necesitar borrar su rotación a través de Alt-R.\r\n• Añada una segunda lámpara en la misma localización que la luz Spot, y de nuevo en la\r\n      vista superior , con (SPACE>>ADD>>Lamp). Haga esta lámpara, una lámpara Hemi\r\n       con una energía de valor 0.6 (La configuración de la lámpara Hemi).\r\nLa configuración de la lámpara Hemi\r\n¿Dos lámparas?: Usar dos o más lámparas ayuda a producir una iluminación más suave y\r\nrealística porque en realidad la luz natural nunca viene de un solo punto. Aprenderá más sobre\r\nesto en chapter_lighting.\r\nEstamos casi listos para renderizar. Como primer paso, vaya al panel Scene (Escena)\r\npresionando el boton que muestra una imagen en la barra de herramientas de la ventana de\r\nbotones (El panel de botones de renderizado.) o presione F10.\r\n- 39 -\r\nEl panel de botones de renderizado.\r\nEn los botones de render, en el panel Format, ponga el tamaño de la imagen a 640x480. En el\r\npanel Render pulsa el botón Shadows (sombras) que esta arriba en el centro, y el botón OSA\r\nen el centro a la izquierda (La ventana de botones de renderizado). Esos últimos botones\r\nhabilitarán las sombras y el oversampling (alisado) el cual prevendrá los bordes de sierra.\r\nLa ventana de botones de renderizado\r\nAhora presione el botón RENDER o pulse F12. El resultado, tal como se muestra en Su\r\nprimer renderizado. ¡Felicidades!, es actualmente bastante lamentable. Aún necesitamos\r\nponer materiales, y montones de detalles, tales como ojos, y cosas por el estilo.\r\nSu primer renderizado. ¡Felicidades!\r\nMateriales y Texturas\r\nEs hora de dar a Gus algún buen material que simule una galleta:\r\n•\r\nSeleccione a Gus. Entonces, en la cabecera de la ventana de botones, seleccione la\r\nventana de materiales presionando el botón de la bola roja (El botón de la ventana de\r\nbotones de materiales.) o usando la tecla F5.\r\nEl botón de la ventana de botones de materiales.\r\n- 40 -\r\n•\r\nLa ventana de botones estará casi vacia porque Gus no tiene aún materiales asignados.\r\nPara añadir un material, pincha en el Panel Material (donde están los dos triangulos,\r\nuno hacia arriba y otro hacia abajo) y selecciona Add New (Añadir nuevo) (El botón en\r\nel menú de los materiales.).\r\nEl botón en el menú de los materiales.\r\n• La ventana de botones se llenará con Paneles y botones y un hueco con el nombre del\r\n    material, que por defecto será "Material", que aparecerá próximo al botón cuadrado de\r\n       color blanco. Cambie esto a algo más significativo, como GingerBread (galleta de\r\n       jengibre).\r\n• Modifique los valores como aparece en La ventana de botones del material y un\r\n   primer material de jengibre. para obtener un primer material áspero.\r\nLa ventana de botones del material y un primer material de jengibre.\r\n•\r\nPresione el botón de menú en el area del panel de texturas (Panel texturas en la\r\nventana de materiales) y seleccione Add new. Con esto añadiremos una textura en el\r\nprimer canal. Llamela "GingerTex."\r\nPanel texturas en la ventana de materiales.\r\n•\r\nSeleccione la ventana de texturas pinchando en el botón El botón de la ventana de\r\ntexturas. o presionando F6.\r\nEl botón de la ventana de texturas.\r\n- 41 -\r\n•\r\nDe las columnas de botones que aparecen en el panel Texture (Textura) seleccione\r\nStucci y configure todos los parámetros como en La ventana de los botones de textura\r\ncon una textura stucci..\r\nLa ventana de los botones de textura con una textura stucci.\r\n•\r\nVuelva a la ventana de materiales (F5) y configure las pestañas Map Input y Map To\r\ndel panel de Texturas como en Configuración para la textura Stucci en la ventana de\r\nbotones del material.. Deseleccione el botón Col y seleccione el botón Nor, entonces\r\nmueva el deslizador Nor a 0.75. Esos cambios harán que nuestra textura stucci actué\r\ncomo un "bumpmap" (mapa de rugosidad) y haga que Gus parezca más de galleta.\r\nConfiguración para la textura Stucci en la ventana de botones del material.\r\n•\r\nAhora añada una segunda textura, llamela "Grain", y seleccione solo la propiedad Ref\r\ny un valor de 0.4 en el deslizador Var (Configuración para una textura adicional de\r\nruido en el canal 2.). La textura es una textura de Noise (Ruido).\r\nConfiguración para una textura adicional de ruido en el canal 2.\r\nDele al suelo un material apropiado, como el azul oscuro que se muestra en Un material muy\r\nsimple para el suelo..\r\n- 42 -\r\nUn material muy simple para el suelo.\r\nPara darle algunos toques finales, le añadiremos ojos y otros detalles.\r\n•\r\nPrimero haremos que la única capa visible sea la 1 pinchando con LMB en el botón de\r\nla capa 1 (Los botones de visibilidad de las capas en la barra de herramientas.]]).\r\nEsto ocultará las luces, la cámara y el suelo.\r\nLos botones de visibilidad de las capas en la barra de herramientas.\r\n• Situé el cursor en el centro de la cabeza de Gus. ¡Recuerde que está en 3D así que\r\n       asegúrese de comprobar al menos dos vistas para comprobarlo!.\r\n• Añada una esfera (SPACE>>ADD>>Mesh>>UVsphere). Se le preguntará por el\r\n     número de Segments (Segmentos) (meridianos) y Rings: (Anillos) (paralelos) en los\r\n     que se dividirá la esfera. El valor por defecto de 32 es más de lo que necesitamos aquí,\r\n       así que usaremos un valor de 16 para ambos. La esfera está en la primera imagen\r\n        arriba a la izquierda en la secuencia Secuencia de creación de los ojos..\r\n• Disminuya la esfera escalándola (SKEY) con un factor de 0.1 en todas las\r\n    dimensiones, entonces cambie a la vista lateral (NUM3) y escálela solo en la dirección\r\n     horizontal (Tecla Y) un valor de 0.5 (vea las siguientes dos imágenes en Secuencia de\r\n     creación de los ojos.).\r\nSecuencia de creación de los ojos.\r\n- 43 -\r\n• Aplique un poco el Zoom si es necesario con NUM+, MW, o CTRL-MMB, y mueva\r\n   la esfera (GKEY) a la izquierda para que esté en la mitad de la cabeza (como se\r\n   muestra en la primera imagen de la segunda fila de Secuencia de creación de los\r\n   ojos.).\r\n• Vuelva a la vista frontal (NUM1) y mueva la esfera a la derecha. Colóquela donde\r\n    Gus debería tener un ojo.\r\n• Voltee un duplicado alrededor del cursor siguiendo la secuencia que aprendió cuando\r\n    volteó el cuerpo de Gus. (Seleccione el cursor 3D, en modo Edición seleccione todo\r\n     AKEY, y haga SHIFT-D, ESC, MKEY, Global X). Ahora Gus tiene dos ojos.\r\n• Salga del modo Edición (TAB), y sitúe el cursor tan cerca como pueda del centro de la\r\n     cara de Gus. Añada una nueva esfera y escálela y muevala exactamente como antes,\r\n      pero hágala más pequeña y Colóquela más abajo y a la derecha del cursor, centrada\r\n          sobre el vértices de la malla subdividida Creando una boca con herramientas de\r\n          spinning (revolución).).\r\nCreando una boca con herramientas de spinning (revolución).\r\n•\r\nAhora, en los botones de Edición (F9), localice el grupo de botones en la parte\r\nsuperior del Panel Mesh Tools (Herramientas de malla) (Los botones de la\r\nherramienta Spin en la ventana de botones de Edición.). Configure Degr: a 90, Steps:\r\na 3, y verifique que esta pulsado el botón Clockwise:. Entonces, con todos los vértices\r\naún seleccionados, presione SpinDup. Esto creará tres duplicados de los vértices\r\nseleccionados en un arco de 90 grados, centrados alrededor del cursor. El resultado\r\ndebería ser la boca de Gus, tal como se muestra en la última imagen de secuencia\r\nmostrada en Creando una boca con herramientas de spinning (revolución)..\r\nLos botones de la herramienta Spin en la ventana de botones de Edición.\r\n- 44 -\r\nAhora que ha aprendido el truco, añada tres más de esas elipsoides para crear los botones de\r\nGus. Una vez que haya hecho un botón, puede simplemente salir del modo Edición, presionar\r\nSHIFT-D para crear un duplicado, y mover el duplicado a su lugar, tal y como se muestra en\r\n¡Gus completado!.\r\n¡Gus completado!\r\nDé a los ojos un material parecido al chocolate, como el que se muestra en la parte superior\r\nAlgunos materiales de caramelo.. Dé a la boca un material blanco parecido al azúcar, como el\r\nsegundo que se muestra en Algunos materiales de caramelo., y dé a los botones un material\r\nrojo, blanco y verde parecido de nuevo al azucar. Estos materiales son mostrados de arriba a\r\nabajo en Algunos materiales de caramelo..\r\n- 45 -\r\nAlgunos materiales de caramelo.\r\nUna vez que haya terminado de asignar los materiales, haga la capa 10 visible de nuevo (ya\r\ndebe saber como), para que esas luces y la cámara tambien aparezcan, y haga un nuevo\r\nrenderizado (F12). El resultado debería asemejarse más o menos a esto Renderizado estático\r\nde Gus una vez terminado..\r\nRenderizado estático de Gus una vez terminado.\r\nSalve su imagen, si así lo desea, presionando F3. Introduzca el nombre de su imagen en la\r\nventana de archivos y guardelo.\r\n- 46 -\r\nSu Primera Animación en 30 Minutos II\r\nConstruyendo un esqueleto (Rigging)\r\nSi hubiésemos querido hacer una imagen estática, nuestro trabajo hasta este punto sería\r\nsuficiente, pero ¡queremos que Gus se mueva!. El siguiente paso será darle a Gus un\r\nesqueleto, o armadura, con la cual se podrá mover. Esto se llama el arte del rigging. Gus\r\ntendrá un esqueleto muy simple: cuatro extremidades (dos brazos y dos piernas) y una pocas\r\nuniones (sin codos, solo con rodillas), pero sin pies o manos. Para añadir el esqueleto:\r\n•\r\nSitué el cursor donde debería estar el hombro, presione SPACE>>Add>>Armature.\r\nUn objeto romboidal aparecerá, un hueso del sistema del esqueleto, que va desde el\r\ncursor 3D al puntero del ratón. Situé el fin del hueso en la mano de Gus (Añadiendo el\r\nprimer hueso del brazo.) con LMB. Esto fijará el hueso y creará uno nuevo que partirá\r\ndel punto final del anterior, produciendo una cadena de huesos. De momento no\r\nnecesitamos más huesos, así que presione ESC para salir.\r\nAñadiendo el primer hueso del brazo.\r\n2. Estando en modo Edición, mueva el cursor hasta la unión de la pierna con el tronco y añada\r\nun nuevo hueso (SPACE>>ADD>>Armature) hasta la rodilla. Presione LMB y un nuevo\r\nhueso debería aparecer estomáticamente ahí. Lleve este hueso hasta el pie (Añadiendo el\r\nsegundo y el tercer hueso, una cadena de huesos en la pierna.).\r\nAñadiendo el segundo y el tercer hueso, una cadena de huesos en la pierna.\r\n- 47 -\r\nPosición de los huesos: Los huesos que está añadiendo deformarán la malla del cuerpo de\r\nGus. Para producir un resultado correcto, intente situar las uniones de los huesos como se\r\nmuestra en las ilustraciones.\r\n•\r\nAhora situé el cursor en el centro y seleccione todos los huesos con la Tecla A.\r\nDuplíquelos con Shift-D salga de modo de movimiento con la Tecla ESC entonces\r\nvoltéelos con la Tecla M relativamente al cursor y al eje X Global como hizo con las\r\nmallas (El esqueleto completo después de duplicarlo y voltearlo.).\r\nEl esqueleto completo después de duplicarlo y voltearlo.\r\nUna vez que haya seleccionado todos los huesos (Tecla A), la ventana de botones de edición\r\ndebería mostrar un panel Armature Bones (huesos del esqueleto) el cual debería mostrar los\r\nbotones de la armadura (La ventana de botones de edición para una armadura.).\r\nLa ventana de botones de edición para una armadura.\r\nPresione el botón Draw Names (Dibujar nombres) para ver los nombres de los huesos,\r\nentonces SHIFT-LMB en los nombres en la ventana de botones de edición (La ventana de\r\nbotones de edición para una armadura.) para cambiarlos a algo más apropiado tal como\r\nArm.R, Arm.L, UpLeg.R, LoLeg.R, UpLeg.L, y LoLeg.L. Salga del modo Edición con\r\n(TAB).\r\n- 48 -\r\nRenombrando los huesos: Es muy Importante que llame a sus huesos con un sufijo '.L' or\r\n'.R' para distinguir los que pertenecen a la izquierda (left) y los que pertenecen a la derecha\r\n(right), así el editor de acciones (Action editor) será capaz de voltear automáticamente sus\r\nposes.\r\nAsignación del esqueleto (Skinning)\r\nAhora debemos conseguir que una deformación en el esqueleto provoque una deformación\r\nproporcional en el cuerpo. Haremos esto con la técnica Skinning, la cual asigna los vértices a\r\nlos huesos de tal forma que los primeros están sujetos al movimiento de los últimos.\r\n• Selecciona el cuerpo de Gus, entonces presionando la tecla SHIFT selecciona el\r\n   esqueleto de tal forma que el cuerpo este morado y el esqueleto está de color rosa\r\n   claro.\r\n• Presiona CTRL-P para encajar el cuerpo al esqueleto. Un dialogo emergente aparecerá\r\n    (La ventana emerge cuando encajamos un Objeto a una esqueleto.). Selecciona la\r\n   entrada Use Armature (Usar esqueleto).\r\nLa ventana emerge cuando encajamos un Objeto a una esqueleto.\r\n•\r\nUn nuevo menú aparecerá, preguntándole si quiere que Blender no haga nada, cree\r\ngrupos de vértices vacíos o grupos de vértices poblados. (Opciones de Skinning\r\nautomático.).\r\nOpciones de Skinning automático.\r\n- 49 -\r\n•\r\nUsaremos la opción de skinning automático. Vaya y seleccione Create From Closest\r\nBones (Crear a partir de los huesos más cercanos).\r\nAhora seleccione únicamente el cuerpo de Gus y entre en modo Edición (TAB). Notará la\r\npresencia en la ventana de botones de edición (Edit buttons) (F9) y en el panel Herramientas\r\nde malla 1 (Mesh Tools 1), de un menú y botones para grupos de vértices (Vertex Group)\r\n(Los botones del grupo de vértices en la ventana de botones de edición de una malla.).\r\nLos botones del grupo de vértices en la ventana de botones de edición de una malla.\r\nPresionando en el menú de botones un menú con todos los grupos de vértices disponibles\r\nemergerá (seis en nuestro caso, pero con un verdadero personaje, con manos y pies\r\ncompletamente equipados de huesos, ¡puedes tener docenas de ellos!) El menú con los grupos\r\nde vértices automáticamente creados en el proceso de skinning.). Los botones Select\r\n(Seleccionar) y Deselect (Deseleccionar) le mostrarán que vértices pertenecen a cada grupo.\r\nEl menú con los grupos de vértices automáticamente creados en el proceso de skinning.\r\nSeleccione el grupo del brazo derecho (Arm.R) y, con todos los vértices deseleccionados\r\n(Tecla A, si es necesario) presione Select. Debería ver algo como Gus en Modo Edición con\r\ntodos los vértices del grupo Arm.R seleccionados..\r\n- 50 -\r\nGus en Modo Edición con todos los vértices del grupo Arm.R seleccionados.\r\nLos vértices marcados con círculos amarillos en Gus en Modo Edición con todos los vértices\r\ndel grupo Arm.R seleccionados. pertenecen al grupo de deformación, pero no deberían\r\npertenecer. El proceso de autoskinning encontró que estaban muy cerca del hueso y los añadió\r\nal grupo de deformación. No les queremos en este grupo porque, dado que algunos son de la\r\ncabeza y otros son del pecho, añadirlos al grupo de deformación, deformaría esas partes del\r\ncuerpo. Para eliminarlos del grupo, deselecciona todos los otros vértices, aquellos que\r\ndeberían permanecer en el grupo usando la caja de selección (Tecla B), pero usa MMB, no\r\nLMB, para definir la caja, así todos los vértices que estén en la caja se deseleccionarán. Una\r\nvez que solo los vértices 'indeseables' estén seleccionados, presione el botón Remove (Los\r\nbotones del grupo de vértices en la ventana de botones de edición de una malla.) para\r\neliminarlos del grupo Arm.R. Deseleccione todos (Tecla A) entonces compruebe otro grupo.\r\nCompruébelos todos y asegúrese de que se parecen a estos Los seis grupos de vértices..\r\nLos seis grupos de vértices.\r\n- 51 -\r\nGrupos de vértices: Sea cuidadoso cuando asigne o elimine vértices de los grupos de\r\nvértices. Si observa deformaciones inesperadas, puede haber olvidado algunos vértices, o\r\npuede haber situado demasiados vértices en el grupo. Puede modificar sus grupos de\r\nvértices en cualquier momento.\r\nOtros detalles: Nuestras deformaciones solo afectaran al cuerpo de Gus, no a sus ojos,\r\nboca o botones, los cuales son objetos independientes. Mientras que esto no es un problema\r\na considerar en esta simple animación, debe ser tenido en cuenta en proyectos más\r\ncomplejos, por ejemplo emparentando o uniendo las distintas partes del cuerpo para crear\r\nuna malla única (describiremos en detalle esas opciones en los próximos capítulos).\r\nPosando\r\nUna vez que haya dado creado el esqueleto y se lo haya asignado a Gus puede comenzar a\r\njugar con él como si fuera un muñeco, moviendo sus huesos y viendo los resultados.\r\n•\r\nSelecciona únicamente la armadura, entonces selecciona Modo Posado (Pose Mode)\r\nen el menú de los modos ("Mode" Menu) (El botón para cambiar al modo posado en\r\nla barra de herramientas de la ventana 3D.). Esta opción solo aparecerá si una\r\narmadura está seleccionada.\r\nEl botón para cambiar al modo posado en la barra de herramientas de la ventana 3D.\r\n•\r\nLa armadura se volverá azul. Está ahora en Modo Posado. Si selecciona un hueso se\r\nvolverá azul claro, no rosa, y si lo mueve(TECLA G), o lo rota (TECLA R), ¡el cuerpo\r\nse deformará!\r\n¡Ahora está en modo posado!\r\n- 52 -\r\nPosición inicial: Blender recuerda la posición original de los huesos. Puede volver a poner el\r\nesqueleto (armature) en dicha posición simplemente presionando el botón RestPos en el\r\npanel de botones de edición de esqueletos (Armature Edit Buttons) (La ventana Editar\r\nBotones para una armadura.).\r\nCinemática directa (FK) e inversa (IK):\r\nMientras manejamos los huesos en modo posado notarás que se comportan como cuerpos\r\nrígidos, cuerpos inextensibles con juntas esféricas al final. Solo puedes mover el primer\r\nhueso de la cadena y todos los otros le seguirán. Todos los huesos subsecuentes en la cadena\r\nno podrán moverse, solo pueden ser rotados , así que si es rotado respecto al hueso anterior\r\nde la cadena todos los hueso subsecuentes de la cadena seguirán su rotación. Este\r\nprocedimiento, llamado Cinemática directa (Forward Kinematics) es fácil de seguir, pero\r\nprecisar la localización hasta del último hueso de la cadena es difícil. Podemos utilizar otro\r\nmétodo, Cinemática Inversa (Inverse Kinematics) donde solo tenemos que definir la posición\r\ndel último hueso de la cadena, y el resto asume una posición, automáticamente calculada por\r\nBlender, para mantener la cadena sin huecos. De este modo posicionar las manos y los pies\r\nes mucho más sencillo.\r\nHaremos que Gus ande definiendo cuatro poses diferentes relativas a cuatro diferentes estados\r\nde una zancada. Blender hará el trabajo de crear una animación fluida.\r\n•\r\nPrimero, verifique que está en el frame (imagen) 1 de la linea temporal. El número de\r\nframes aparece en un botón a la derecha de la barra de herramientas de la ventana de\r\nbotones (El frame actual en la barra de herramientas de la ventana de botones.). Si\r\nno está puesto a 1, póngalo ahora.\r\nEl frame actual en la barra de herramientas de la ventana de botones.\r\n•\r\nAhora, rotando solo un hueso al mismo tiempo (Tecla R), levantaremos UpLeg.L y\r\ndoblaremos LoLeg.L hacia atrás mientras levantamos un poco Arm.R y bajamos otro\r\npoco Arm.L, tal como se muestra en Nuestra primera pose..\r\n- 53 -\r\nNuestra primera pose.\r\n•\r\nSeleccione todos los huesos con la Tecla A. Con el puntero del ratón en la ventana 3D,\r\npresione la Tecla I. Un menú emergerá Asignando la pose al frame.. Seleccione\r\nLocRot en este menú. Esto obtendrá la posición y la orientación de todos los huesos y\r\nlos guardará en una pose en el frame 1. Esta pose representa a Gus en la mitad de la\r\nzancada, mientras esta moviendo su pierna izquierda hacia delante y sobre el suelo.\r\nAsignando la pose al frame.\r\n•\r\nAhora muévase al frame 11 introduciéndolo numéricamente o presionando la Tecla\r\nArriba. Entonces mueva a Gus a una posición diferente , como Nuestra segunda pose.,\r\ncon su pierna izquierda adelantada y la derecha retrasada, ambas ligeramente\r\ndobladas. ¡Gus está caminando en el sitio!\r\n- 54 -\r\nNuestra segunda pose.\r\n• Seleccione todos los huesos de nuevo y presione la Tecla I para guardar la pose en el\r\n   frame 11.\r\n• Ahora necesitamos una tercera pose en el frame 21, con la pierna derecha levantada,\r\n   porque estamos en el medio de la otra mitad de la zancada. Esta pose es el reflejo de la\r\n  pose que hemos definido en el frame 1. Otra forma sería, volver al frame 1 y en el\r\n  menú Armature en la cabecera de la ventana 3D seleccione la entrada Copy Pose\r\n  (Copiar Pose) (Copiando la pose al buffer.). Ha copiado la pose actual al buffer.\r\nCopiando la pose al buffer.\r\n- 55 -\r\n•\r\nVaya al frame 21 y pegue la pose con la opción Paste Flipped Pose (Pegar pose\r\nvolteada) en el menú Armature (Pegar la copia como una nueva, y volteada, pose.).\r\nEste botón pegará la pose seleccionada, intercambiando las posiciones de los huesos\r\ncon el sufijo .L con aquellos huesos que tienen el sufijo .R, efectivamente ¡dándolos la\r\nvuelta!\r\nPegar la copia como una nueva, y volteada, pose.\r\nLa pose está ahí pero ¡aún no ha sido guardada!. Debe presionar la Tecla I con todos los\r\nhuesos seleccionados.\r\n• Ahora aplique el mismo procedimiento para copiar la pose del frame 11 al frame 31,\r\n   también volteándola.\r\n• Para completar el ciclo, necesitamos copiar la pose del frame 1 sin voltear al frame 41.\r\n   Cópielo de la manera usual, y péguelo utilizando la entrada Paste Pose (Pegar pose).\r\n    Finalice la secuencia guardando la pose con la Tecla I.\r\n¡Gus anda!\r\nEl primer paso es el núcleo del proceso de caminar, y una vez que lo tenga definido hay\r\ntécnicas para hacer que un personaje ande a través de un camino complejo. Pero, para el\r\npropósito de este capitulo de iniciación, este primer paso es suficiente.\r\n•\r\nCambie a la ventana de Renderizado con (F10) y configure el comienzo (start) y el\r\nfinal (end) de la animación a 1 y a 40 respectivamente (Configurando los botones de\r\nrenderizado para una animación.). Debido a que la imagen (frame) 41 es idéntica a la\r\nimagen 1, solo necesitamos renderizar las imágenes que van de la 1 a la 40 para\r\nproducir el ciclo completo.\r\nConfigurando los botones de renderizado para una animación.\r\n- 56 -\r\n• Seleccione AVI Raw como el tipo de fichero que vamos a utilizar en el panel Formato\r\n   (Format) (Configurando los botones de renderizado para una animación.). Mientras\r\n   que esto no es una buena elección generalmente, principalmente por problemas de\r\n   tamaño de archivo (como se explicará más tarde), tiene la ventaja de ser rápido y\r\n      funcionar en cualquier computadora, así que cumple nuestras necesidades. (Puede\r\n      también seleccionar el formato AVI Jpeg para obtener un fichero de un tamaño más\r\n        reducido, pero utilizando la compresión por pérdidas Jpeg y obteniendo una película\r\n          que algún reproductor externo puede no ser capaz de reproducir).\r\n• Finalmente, presione el botón Animar (ANIM) en el panel Animación (Anim).\r\n     Recuerde que todas las capas que quiera usar en la animación ¡deben ser\r\n      seleccionadas!. En nuestro caso, las capas seleccionadas serán la 1 y la 10.\r\nNuestra escena es muy simple, y Blender probablemente renderizará las 40 imágenes en unos\r\npocos segundos. Mire como van apareciendo en pantalla.\r\nUna vez que el renderizado se haya completado debería obtener un fichero llamado\r\n0001_0040.avi en un subdirectorio render de su actual directorio - el mismo que contiene el\r\nfichero .blend. Puede reproducir este fichero directamente en Blender presionando el botón\r\nReproducir (Play) que está debajo del botón Animar (ANIM) (Configurando los botones de\r\nrenderizado para una animación.). La animación se reproducirá una y otra vez. Para detenerla\r\npresione ESC. Solo hemos producido un ciclo muy básico para poder andar . Hay muchas\r\nmás cosas en Blender, ¡pronto las descubrirá!.\r\n- 57 -\r\nPARTE II - MODELADO\r\nComo has podido ver en el capítulo Introducción Rápida, la creación de una escena en 3D\r\nnecesita al menos tres cosas: Modelos, Materiales e Iluminación. En este capítulo\r\nanalizaremos en profundidad cada una de ellas. La Parte III tratará sobre Materiales, la Parte\r\nIV sobre Texturas y la Parte V sobre Iluminación.\r\nUna vez que hayas terminado con esta Parte puedes elegir Renderizado si quieres sacar\r\npartido de los motores de renderizado de imágenes que tiene Blender, o también puedes optar\r\npor leer la Parte VII para aprender todo sobre la animación en Blender.\r\nCapítulos\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\n•\r\nModo Objeto\r\nBooleanos\r\nObjetos Básicos\r\nModo Edición\r\nModelado Básico de Malla\r\nSubdivisión de Superficies\r\nHerramientas Arista y Cara\r\nModelado Avanzado de Malla\r\nCurvas\r\nSuperficies\r\nTexto\r\nMeta Objetos\r\n- 58 -\r\nModo Objeto\r\nLa geometría de una escena de Blender se construye a partir de uno o más objetos: luces,\r\ncurvas, superficies, cámaras, mallas y los objetos básicos descritos en Objetos Básicos. Cada\r\nobjeto puede ser movido, rotado y cambiado de tamaño en ObjectMode. Para cambios más\r\ndetallados en la geometría, se puede trabajar sobre la malla de un Objeto en EditMode (véase\r\nModo Edición). Una vez se ha añadido un objeto básico mediante el menú SPACE>>Add,\r\nBlender cambia a modo EditMode por defecto si el objeto es una Malla (Mesh), una Curva\r\n(Curve) o una Superficie (Surface). Se puede cambiar a ObjectMode presionando TAB. La\r\nestructura de alambre del objeto, si la hay, debería aparecer en rosa, lo que significa que el\r\nobjeto está ahora seleccionado y activo.\r\nSelección de objetos\r\nPara seleccionar un objeto, pulse sobre él en RMB. Para seleccionar múltiples objetos,\r\nmantenga pulsado SHIFT y pulse en RMB. Generalmente, el último objeto para seleccionar es\r\nel que está activo: Aparece en rosa pálido, mientras que los objetos seleccionados no activos\r\naparecen en color morado. La definición de objeto activo es importante por varias razones,\r\nincluyendo la "paternidad" de los mismos. Para deseleccionar el objeto activo, haga click\r\nsobre él de nuevo con RMB, si hay varios objetos seleccionados pulse la tecla SHIFT para\r\nmantener los otros como están. Pulse AKEY para seleccionar todos los objetos de la escena\r\n(si no hay ninguno seleccionado en ese momento) o para deseleccionarlos todos (si uno o más\r\nestán seleccionados). BKEY activa Border select. Use la opción Border select para\r\nseleccionar un grupo de objetos dibujando un rectángulo mientras mantiene pulsada LMB. Se\r\nseleccionarán todos los objetos dentro del rectángulo o que estén en contacto con él.\r\nMovimiento (traslación) de objetos\r\nPara mover grupos de objetos, pulse GKEY para activar el modo Grab (modo Agarrar) para\r\ntodos los objetos seleccionados. Dichos objetos se verán como estructuras de malla de\r\nalambre que pueden moverse con el ratón (sin pulsar ningún botón del mismo). Para\r\nconfirmar la posición nueva, pulse LMB o ENTER; para salir del modo Grab pulse RMB o\r\nESC. La cabecera de la ventana 3D muestra la distancia que se está moviendo el objeto. Para\r\nrestringir el movimiento a un solo eje del sistema global de coordenadas, entre en el modo\r\nGrab, mueva el objeto en el eje deseado, y pulse MMB. Para desactivar esta restricción pulse\r\nde nuevo MMB. Como nueva característica en la versión 2.3 se puede restringir el\r\nmovimiento a un eje dado pulsando XKEY, YKEY o ZKEY. Cada tecla restringe el\r\nmovimiento al eje correspondiente global00, tal como hace MMB. Una segunda pulsación de\r\nla misma tecla restringe el movimiento al eje correspondiente local del objeto. Una tercera\r\npulsación de la misma tecla quita las restricciones. Se dibujan unas líneas para que se pueda\r\nvisualizar mejor la restricción. Una vez que el modo Grab está activado se puede introducir\r\nla translación del objeto numéricamente simplemente tecleando el número. Esto permitirá\r\nintroducir la primera coordenada mostrada en la cabecera de la ventana 3D. Se puede\r\ncambiar la coordenada con TAB, usando NKEY para salir/volver a entrar al modo de\r\nintroducción numérica, ENTER para finalizar y ESC para salir. BACKSPACE dejará los\r\nvalores originales. Nótese que debe usarse la tecla .KEY y no la NUM. para los decimales. Si\r\nmantiene pulsada la tecla CTRL mientras mueve el objeto activará el modo snap (movimiento\r\npor bloque), y el objeto se moverá en un número completo de unidades de Blender (cuadros\r\n- 59 -\r\nde la rejilla). El modo Snap termina cuando se suelta la tecla CTRL, por lo que debe\r\nasegurarse de confirmar la posición antes de hacerlo. La ubicación de objetos seleccionados\r\npuede dejarse al valor por defecto pulsando ALT-G.\r\nRotación de objetos\r\nPara rotar objetos, active el modo Rotación (Rotate) pulsando RKEY. Al igual que en el\r\nmodo Grab, puede cambiarse la rotación moviendo el ratón, confirmar con LMB o ENTER,\r\ncancelar con RMB o ESC. La rotación en el espacio 3D se produce alrededor de un eje, y hay\r\nvarias formas de definir dicho eje. Blender define un eje mediante una dirección y un punto\r\npor el que pasa. Por ejemplo, por defecto la dirección de un eje es ortogonal a su pantalla. Si\r\nestá viendo la escena desde delante desde un lado o desde arriba el eje de rotación será\r\nparalelo a una de las coordenadas globales del sistema de ejes. Si está viendo la escena desde\r\nun ángulo el eje de rotación estará en ángulo también, lo que puede originar una rotación muy\r\nextraña de su objeto. En ese caso necesitará mantener el eje de rotación paralelo a los ejes del\r\nsistema de coordenadas. Active y desactive este modo pulsando MMB durante el modo\r\nRotación y vea el indicador de ángulo en la cabecera de la ventana. De igual modo, una vez\r\nestá en modo Rotación, puede pulsar XKEY, YKEY o ZKEY para restringir la rotación a uno\r\nde los ejes de referencia globales. Pulsando XKEY-XKEY (dos veces XKEY) se restringe la\r\nrotación alrededor del eje x de la referencia local del objeto. Esto mismo es válido para la\r\ndoble pulsación de YKEY y ZKEY. Como en el modo Grab, una tercera pulsación elimina las\r\nrestricciones. Es posible introducir números para una rotación exacta, al igual que con las\r\ntranslaciones. Seleccione el punto por el que pasa el eje de rotación con el menú pertinente en\r\nla cabecera de la ventana 3D, como se describe más abajo. (Los botones de selección de punto\r\nde rotación.).\r\nLos botones de selección de punto de rotación.\r\n•\r\nCentro del cuadro limitador (Bounding Box) - el eje pasa por el centro del cuadro\r\nlimitador de la selección. (Si sólo hay un objeto seleccionado, el punto usado es el\r\npunto central del objeto, que puede no ser necesariamente el centro geométrico. En\r\nLos botones de selección de punto de rotación. está en el medio del borde de la\r\nderecha, marcado por un punto granate. Para más información sobre este punto véase\r\nmesh_modelling_editmode.)\r\n- 60 -\r\n• Punto de la Mediana - el eje pasa por el punto de la mediana de la selección. Esta\r\n    diferencia sólo es importante en el modo Edición, y el punto 'Mediana' es el baricentro\r\n     de todos los vértices.\r\n• Cursor 3D - el eje pasa por el cursor 3D. El cursor puede colocarse en cualquier sitio\r\n   que se desee antes de rotar. Puede usarse esta opción para realizar fácilmente ciertas\r\n    translaciones al mismo tiempo que se rota el objeto.\r\n• Centros de objetos individuales - cada objeto seleccionado recibe su propio eje de\r\n   rotación, todos paralelos entre sí y que pasan por el punto central de cada objeto,\r\n    respectivamente. Si selecciona sólo un objeto, conseguirá el mismo efecto que con el\r\n     primer botón.\r\nSi acaba de empezar a usar la rotación, no se preocupe demasiado por los detalles\r\nprecedentes. Practique con las herramientas de Blender y se irá haciendo una idea de cómo\r\ntrabajar con ellas. Manteniendo pulsada CTRL se pasa al modo Snap. En el modo Snap las\r\nrotaciones están restringidas a 5 pasos. Manteniendo pulsada SHIFT se puede hacer un ajuste\r\nfino. La rotación de los objetos seleccionados puede dejarse al valor por defecto pulsando\r\nALT-R.\r\nCambio de tamaño/imagen especular de objetos\r\nPara cambiar el tamaño de los objetos pulse SKEY. Al igual que en el modo Agarrar y\r\nRotación cambie el tamaño moviendo el ratón, confirme con LMB o ENTER, y cancele con\r\nRMB o ESC. El cambio de tamaño en 3D requiere un punto central. Este punto se define con\r\nlos mismos botones que para el punto de soporte del eje en la rotación (Los botones de\r\nselección de punto de rotación.). Si aumenta el tamaño del objeto, todos los puntos del mismo\r\nse alejarán del punto central seleccionado; si lo disminuye, los puntos se moverán hacia él.\r\nPor defecto, los objetos seleccionados cambian de tamaño uniformemente en todas\r\ndirecciones. Para cambiar las proporciones (hacer el objeto más largo, ancho, etc.) puede\r\nbloquear el proceso de escalado a uno de los ejes globales de coordenadas al igual que haría\r\npara mover objetos. Para hacer esto entre el modo de cambio de tamaño, mueva el ratón un\r\npoco en la dirección del eje sobre el que quiere ejercer la acción y pulse MMB. Para volver al\r\ncambio de tamaño uniforme pulse MMB de nuevo. Podrá ver los factores de escala en la\r\ncabecera de la ventana 3D. De nuevo todas las consideraciones referentes a restricciones con\r\nrespecto a un eje dado hechas en el modo Agarrar se mantienen, así como las de entrada\r\nnumérica de datos. De nuevo CTRL activa el modo "Por Bloque" o Snap, con un escalado\r\ndiscreto a 0,1 pasos. Pulse SHIFT para un ajuste fino. El escalado de objetos seleccionados\r\npuede ponerse al valor por defecto pulsando ALT-S. La imagen especular se hace con una\r\naplicación diferente de la herramienta de escalado. Dicha imagen no es más que escalar con\r\nun factor negativo en una dirección. Para hacer una imagen especular en los ejes X o Y pulse\r\nSKEY para ir al modo escalado, y luego NKEY para pasar a introducción numérica de datos.\r\nSeleccione las coordenadas deseadas e indique '-1' como factor de escala.\r\n- 61 -\r\nPanel de propiedades de transformación\r\nSupongamos que quisiera que se mostrasen la posición/rotación/escalado de su objeto en\r\nnúmeros. O que quisiera introducir los valores de dichos parámetros de su objeto\r\ndirectamente. Para hacerlo, seleccione el objeto que quiere editar y pulse NKEY. El panel\r\nTransform Properties (Propiedades de transformación) (El cuadro de diálogo numérico) se\r\nmuestra en pantalla. Pulse SHIFT-LMB y un número para introducir un valor, luego pulse OK\r\npara confirmar los cambios o mueva el ratón fuera de la ventana para cancelar.\r\nEl cuadro de diálogo numérico\r\nEl panel también muestra el nombre del objeto en el botón OB:. Puede editarlo desde este\r\nlugar.\r\nDuplicación\r\nPara duplicar un objeto pulse SHIFT-D y se creará una copia idéntica de los objetos\r\nseleccionados. La copia se crea en la misma posición, en modo Agarrar. Será un objeto nuevo\r\na excepción de que comparte Material, Textura e IPO con el original. Estos atributos se\r\nasocian a las dos copias, y el cambio de un material de uno de los objetos también afecta al\r\notro. (Puede hacer materiales distintos para cada uno, como se describe en el capítulo de\r\nMateriales). Puede crear un Duplicado Asociado en vez de un duplicado real pulsando ALT-\r\nD. Esto creará un objeto nuevo con todos sus datos asociados al objeto original. Si se ha\r\nmodificado uno de los objetos asociados en el Modo Edición todas las copias también serán\r\nmodificadas.\r\nEmparentar (Agrupar)\r\nPara crear un grupo de objetos primero debe convertir a uno de ellos en padre de los otros.\r\nPara hacer esto, seleccione al menos dos objetos, pulse CTRL-P, y confirme la pregunta\r\n¿Hacer padre?. El objeto activo se convertirá en padre de todos los demás. El centro de todos\r\nlos hijos estará ahora asociado al centro del padre por una línea de puntos. En este momento,\r\nel arrastre, la rotación y el escalado del padre tendrán el mismo efecto en los hijos. El\r\nEmparentado es una herramienta muy importante con muchas aplicaciones avanzadas, como\r\nse verá en capítulos posteriores. Pulse SHIFT-G con un objeto activo para ver el menú de\r\nSelección de Grupo (Selección de grupo). Este menú contiene:\r\n- 62 -\r\n• Children - Selecciona todos los hijos del objeto activo y los hijos de los hijos hasta la\r\n   última generación.\r\n• Immediate Children - Seleccionar todos los hijos del objeto activo pero no los hijos\r\n   posteriores.\r\n• Parent - Selecciona el padre del objeto activo.\r\n• Objects on shared layers - En realidad esto no tiene nada que ver con padres e hijos.\r\n   Selecciona todos los objetos de la(s) misma(s) capa(s) del objeto activo.\r\nSelección de grupo\r\nMueva el hijo al padre borrando su origen (selecciónelo y pulse ALT-O). Borre una relación\r\nparental con ALT-P. Puede (Liberación de hijos):\r\n• Clear parent - Libera los hijos, que vuelven a su ubicación, rotación y tamaño\r\n      originales.\r\n• Clear parent...and keep transform - Libera los hijos y mantiene la ubicación, rotación\r\n     y tamaño que les dio el padre.\r\n• Clear parent inverse - Coloca a los hijos con respecto al padre como si se hubieran\r\n   colocado en la referencia Global. Esto borra definitivamente la transformación del\r\n   padre sobre los hijos.\r\nFigure 5-4. Liberación de hijos\r\nSeguimiento (Tracking)\r\nPara rotar un objeto de manera que se oriente hacia otro y mantener esta orientación si uno de\r\nlos objetos se mueve seleccione al menos dos objetos y pulse CTRL-T. Aparecerá un cuadro\r\nde diálogo preguntándole si quiere usar una restricción de Seguimiento o el sistema de pista\r\nantiguo (Pre-2.30). La restricción de Pista se analizará en character_constrains y es el método\r\nrecomendable. Se explicará aquí brevemente el sistema antiguo de seguimiento, de manera\r\nque se asume que tiene seleccionado Old Track en el cuadro de diálogo. Por defecto el objeto\r\ninactivo sigue al objeto activo de manera que los puntos de su eje local Y apuntan al objeto al\r\nque se hace el seguimiento. Sin embargo, esto puede no ocurrir si el objeto "seguidor" tiene\r\nya una rotación. Se puede hacer un seguimiento con corrección cancelando la rotación (ALT-\r\nR) de este objeto. La orientación del objeto "seguidor" también se puede fijar con el eje Z\r\n- 63 -\r\nhacia arriba. Para cambiar esto, seleccione dicho objeto, cambie la ventana de Botones a\r\n, o F7) y seleccione el eje de seguimiento en la primera fila de seis\r\nContexto de Objeto (\r\nbotones, así como el eje que mirará hacia arriba en la segunda, que está en el panel Anim\r\nSetting. (Configuración del eje de seguimiento).\r\nConfiguración del eje de seguimiento\r\nPara eliminar una restricción de seguimiento, seleccione el objeto "seguidor" y pulse ALT-T.\r\nAl igual que en la eliminación de las restricciones entre padres e hijos, debe elegir si quiere\r\nconservar o perder la rotación impuesta por el seguimiento.\r\nOtras Acciones\r\nBorrado\r\nPulse XKEY o DEL para borrar los objeetos seleccionados. El uso de XKEY es más práctico\r\npara la mayoría de la gente, porque se puede pulsar fácilmente con la mano izquierda sobre el\r\nteclado.\r\nUnión\r\nPulse CTRL-J para unir todos los objetos seleccionados en un único objeto. (Los objetos debe\r\nser del mismo tipo). El punto central del objeto resultante se obtiene del objeto activo anterior.\r\nSeleccionar enlaces\r\nPulse SHIFT-L para seleccionar todos los objetos que compartan un enlace con el objeto\r\nactivo. Puede seleccionar objetos que compartan enlace IPO, de datos, de material, o de\r\ntextura (Selección de enlaces.).\r\nSelección de enlaces.\r\n- 64 -\r\nBooleanos\r\nLas operaciones booleanas son acciones concretas que pueden usarse únicamente con objetos\r\nde tipo malla. Mientras que funcionan para todos los objetos malla, están especialmente\r\nindicadas para usarse con objetos cerrados sólidos con una región interna y externa bien\r\ndefinidas. Así, es muy importante definir consistentemente las normales en cada objeto, es\r\ndecir, todas las normales de cada objeto deben apuntar hacia afuera. Vea\r\nchapter_mesh_modeling_A para más información sobre normales y sobre por qué pueden\r\nproducirse normales apuntando parcialmente hacia fuera y parcialmente hacia dentro. En el\r\ncaso de objetos abiertos, el interior es definido matemáticamente extendiendo las caras del\r\nborde del objeto hasta el infinito. Como tal, puede encontrar que se produzcan resultados\r\ninesperados en estos objetos. Una operación booleana nunca afecta a los operandos originales;\r\nel resultado es siempre un nuevo objeto de Blender. Las operaciones booleanas se invocan\r\nseleccionando exactamente dos mallas y presionando WKEY. Hay tres tipos de operaciones\r\nbooleanas para escoger en el menú emergente: Intersect (intersección), Union (unión) y\r\nDifference (diferencia). Las operaciones booleanas también toman en consideración\r\nmateriales y texturas UV, produciendo objetos con índices de materiales u objetos\r\nmultimapeados UV.\r\nOpciones para operaciones booleanas.\r\nConsidere el objeto Opciones para operaciones booleanas..\r\n• La operación Intersect crea un nuevo objeto cuya superficie encierra el volumen\r\n    común a ambos objetos originales.\r\n• La operación Union crea un nuevo objeto cuya superficie encierra el volumen de\r\n    ambos objetos originales.\r\n• La operación Difference es la única en la que el orden de selección es importante. El\r\n      objeto activo (púrpura claro en vista de alambre) es restado del objeto seleccionado.\r\n      Es decir, la superficie del objeto resultante encierra un volumen que corresponde al\r\n     volumen del objeto seleccionado e inactivo, pero no al objeto seleccionado y activo.\r\nObjetos resultantes para: intersección, unión, diferencia (de arriba a abajo). muestra el\r\nresultado de las tres operaciones.\r\n- 65 -\r\nObjetos resultantes para: intersección, unión, diferencia (de arriba a abajo).\r\nEl número de polígonos generados puede ser muy grande comparado con las mallas\r\noriginales, especialmente al usar objetos cóncavos complejos. Además, los polígonos\r\ngenerados pueden ser generalmente de calidad pobre: muy largos y delgados y en ocasiones\r\nmuy pequeños. Intente usar el Decimator de mallas (botones EditButtons F9) para reparar este\r\nproblema. Los vértices en la malla resultante que caen en la frontera de los dos objetos\r\noriginales, frecuentemente no encajan, y los vértices del borde son duplicados. Esto es bueno\r\nen algunas circunstancias puesto que significa que puede seleccionar partes de la malla\r\noriginal seleccionando un vértice en el resultado y presionando el botón Select Linked\r\n(Seleccionar vinculados, LKEY). Ello es útil si desea asignar materiales y similares al\r\nresultado.\r\nNota: En ocasiones la operación booleana puede fallar con un mensaje diciendo "An internal\r\nerror occurred -- sorry" ("Ocurrió un problema interno"). Si ello ocurre, intente mover o\r\nrotar los objetos ligeramente.\r\n- 66 -\r\nObjetos Básicos\r\nEl objeto principal de una escena en 3D es normalmente una Malla (Mesh). En este capítulo\r\nprimero vamos a enumerar los objetos básicos de malla, o primitivas, para despues seguir con\r\nuna larga serie de secciones describiendo en detalle las acciones que se pueden realizar sobre\r\nobjetos de malla.\r\nPara crear un Objeto Básico pulse SPACE y seleccione "ADD>>Mesh", o acceda al menú\r\n'add' pulsando SHIFT-A o simplemente mantenga presionado LMB sobre la ventana 3D por\r\nmás de medio segundo. Seleccione del menú el objeto básico que le gustaría crear. En las\r\nlíneas que siguien describiremos cada objeto básico o primitive que se puede crear en Blender.\r\nObjetos Básicos o Primitivas también muestra la variedad de objetos básicos que pueden\r\ncrearse.\r\nObjetos Basicos o Primitivas.\r\nPlano (Plane)\r\nUn plano estándard que contiene cuatro vertices, cuatro aristas y una cara. Es como una hoja\r\nde papel sobre una mesa; no es realmente un objeto tridimensional ya que es totalmente plano\r\ny no tiene espesor. Entre los objetos que pueden crearse a partir de planos se incluyen pisos,\r\nespejos y manteles.\r\nCube (Cubo)\r\nUn cubo estándard que contiene ocho vertices, doce aristas, y seis caras, es un objeto\r\ntridimensional real. Entre los objetos que pueden crearse a partir de cubos podemos citar\r\ndados, cajas y cofres.\r\n- 67 -\r\nCircle (Circunferencia)\r\nUna circunferencia estándard compuesta de n vertices. El número de vertices puede indicarse\r\nen la ventana que aparece cuando se crea la circunferencia. Mientras más vertices posea, más\r\nsuave será el contorno. Ejemplos de objetos creados a partir de circunferencias son discos,\r\nplatos o cualquier tipo objeto plano y redondo.\r\nUVSphere (EsferaUV)\r\nUna esferaUV estándard está hecha de n segmentos y m anillos. El nivel de detalle puede\r\nindicarse en la ventana emergente que aparece cuando se crea la esferaUV. Aumentando el\r\nnumero de segmentos y anillos, la superfície de la esferaUV se suaviza. Los segmentos son\r\ncomo meridianos terrestres, van de un polo al otro, en cambio los anillos son como paralelos\r\nterrestres. Ejemplos de objetos que pueden crearse a partir de esferasUV son pelotas, cabezas\r\no las perlas de un collar.\r\nNota: Si crea una esferaUV de seis segmentos y seis anillos, obtendrá algo que en la\r\nVistaSuperior es un hexágono (seis segmentos), con cinco anillos más dos puntos en los\r\npolos. O sea, un anillo menos que los esperados, o dos más si cuenta los polos como anillos\r\nde radio 0.\r\nIcosphere (Icoesfera)\r\nUna icoesfera está hecha de triangulos. El número de subdivisiones puede especificarse en la\r\nventana que aparece cuando se crea la Icosesfera; aumentando el número de subdivisiones se\r\nhace más pulida la superficie de la icoesfera. Una Icoesfera de nivel 1 es un icosaedro, un\r\nsólido con 20 caras triangulares equiláteras. Cualquier nivel de subdivisión mayor subdividirá\r\ncada cara triangular en cuatro triangulos, resultando en una apariencia más esférica cada vez.\r\nLas icoesferas se utilizan normalmente para obtener una disposición de los vertices más\r\nisotrópica y económica que en una esferaUV.\r\nCylinder (Cilindro)\r\nUn cilindro estándard hecho de a partir de una sección circular de n vertices. El número de\r\nvertices de sección transversal circular puede indicarse en la ventana emergente que aparece\r\ncuando se crea el objeto; mientras mayor sea el número de vertices, más suave será la sección\r\ncircular transversal. Algunos objetos que pueden crearse a partir de cilindros incluyen barras y\r\nmanijas.\r\nTube (Tubo)\r\nUn tubo estándard hecho de n vertices. El número de vertices en la sección transversal\r\ncircular hueca puede especificarse en la ventana emergente que aparece cuando se crea el\r\nobjeto; a mayor número de vertices más suave se vuelve la sección circular hueca. Entre los\r\nobjetos que pueden crearse a partir de tubos, podemos citar caños o vasos. (La diferencia\r\nbásica entre un cilindro y un tubo es que el primero posee sus extremos cerrados.)\r\n- 68 -\r\nCone (Cono)\r\nUn cono estándard hecho de n vertices. El número de vertices en la base circular puede\r\nespecificarse en la ventana emergente que aparece cuando se crea el objeto; a mayor número\r\nde vertices más suave se vuelve la base circular. Entre los objetos que pueden crearse a partir\r\nde conos, podemos citar púas o sombreros de punta.\r\nGrid (Rejilla o cuadrícula)\r\nUna cuadrícula estándard hecha de n por m vertices. La resolución del eje X y el eje Y puede\r\nespecificarse en la ventana emergente que aparece cuando se crea el objeto; cuanto más alta\r\nsea la resolución, mayor será el número de vertices creados. Entre los objetos que pueden\r\ncrearse a partir de cuadrículas se incluyen paisajes (con la herramienta de edición\r\nproporcional o PET) y otras superficies orgánicas.\r\nMonkey (Mono)\r\nEs un regalo de la vieja NaN a la comunidad y es vista como una broma de los programadores\r\no "huevo de Pascuas". Crea una cabeza de mono (de hecho, de "mona") una vez que se pulsa\r\nsobre el botón Oooh Oooh Oooh. El nombre de la mona es Suzanne y es la mascota de\r\nBlender.\r\nModo Edición\r\nCuando se trabaja con objetos geométricos en Blender, se lo puede hacer en dos modos:\r\nModo Objeto y Modo Edición. Básicamente, como se vio en la sección anterior, las\r\noperaciones en Modo Objeto afectan a la los objetos completos, y las operaciones en Modo\r\nEdición solo afectan a su geometría pero no a sus propiedades globales como la Posición o la\r\nRotación. En Blender puedes pasar de un modo al otro mediante TAB.\r\nEl Modo Edición funciona solamente con un objeto a la vez: el objeto activo. Fuera de Modo\r\nEdición los objetos se dibujan en color rosado en la Ventana 3D (en modo alambre) cuando\r\nson seleccionados de lo contrario aparecen en color negro. El objeto Activo en Modo Edición\r\nse dibuja en color negro, pero cada vértice es resaltado en color rosado (Dos piramides, una\r\nen ModoEdición (izquierda) y una en Modo Objeto (derecha).). Los vértices seleccionados\r\nson dibujados en color amarillo (Cubo con los vértices seleccionados en amarillo.) y, si se\r\nencuentran presionados los botones apropiados(Draw Faces y Draw Edges) en el Panel Mesh\r\nTools 1 del Contexto Edición (F9) también se resaltarán las caras y las aristas.\r\n- 69 -\r\nDos piramides, una en ModoEdición (izquierda) y una en Modo Objeto (derecha).\r\nCubo con los vértices seleccionados en amarillo.\r\nEstructuras: Vértices, Aristas y Caras\r\nEn las mallas básicas, todo se construye a partir de tres estructuras: Vértices, Aristas y Caras.\r\n(Aquí no estamos incluyendo a Curvas, NURBS, etc.) Pero no hay razón para desanimarse:\r\nesta simplicidad nos provee un cúmulo de posibilidades que serán la base para todos nuestros\r\nmodelos.\r\nVértices\r\nUn vértice es elementalmente un punto o una posición en el espacio 3D. Normalmente es\r\ninvisible al renderizar y en Modo Objeto. (No confundir el punto central de un objeto con un\r\nvértice, es similar pero es más grande y además no puedes seleccionarlo.) Para crear un nuevo\r\nvértice, cambia a ModoEdición, mantén presionada CTRL, y pulsa con el BIR. Por supuesto,\r\ncomo la pantalla de la computadora es bidimensional, Blender no puede determinar las tres\r\ncoordenadas del vértice a partir de un click de ratón, por lo que el nuevo vértice se ubica sobre\r\nel plano de profundidad del cursor 3D "dentro" de la pantalla. Cualquier vértice seleccionado\r\npreviamente será conectado automáticamente al nuevo por medio de una arista.\r\n- 70 -\r\nAristas\r\nUna arista siempre conecta dos vértices con una linea recta. Las aristas son los "alambres" que\r\nvez cuando un malla se ve en la vista de alambre. Normalmente son invisibles en la imagen\r\nrenderizada. Se usan para construir caras. Crea una arista seleccionando dos vértices y\r\npulsando TECLAF.\r\nCaras\r\nUna Cara es la estructura de más alto nivel en una malla. Las caras se usan para construir la\r\nsuperficie del objeto propiamente dicha. Las caras son lo que ves cuando renderizas una\r\nmalla. Se la define cómo el área entre tres o cuatro vértices, con una arista en cada lado. Los\r\ntriángulos siempre funcionan bien porque siempre son planos y fáciles de calcular. Ten\r\ncuidado al crear caras de cuatro lados, porque internamente son separados en dos triángulos.\r\nLas caras de cuatro lados solo funcionan bien si la cara es practicamente plana (todos sus\r\npuntos descansan en un plano imaginario) y convexa (en ninguna esquina el ángulo es mayor\r\no igual a 180 grados). Este es el caso con las caras de un cubo por ejemplo. (Esta es la razón\r\npor la que no pueden verse ninguna diagonal en modo alambre, porque dividiría cada cara\r\ncuadrada en dos triángulos. Aunque tu puedes crear un cubo con caras triangulares, solo se\r\nvería más confuso en Modo Edición.) Sin embargo, el área entre tres o cuatro vértices,\r\ndelineada por aristas, no tiene que ser una cara necesariamente. Si esta área no tiene una cara,\r\nserá simplemente transparente o inexistente en la imagen renderizada. Para crear una cara,\r\nselecciona tres o cuatro vértices y pulsa TECLAF.\r\nModos Vértice, Arista y Cara\r\nEn Modo Edición hay tres modos diferentes de selección:\r\n• Modo Vértices. Pulse TAB y seleccione Vértices del menú. Los vértices seleccionados\r\n       se dibujan en amarillo y los deseleccionados en color rosa.\r\n• Modo Arista. Pulse CTRL-TAB y seleccione Aristas del menú. En este modo, los\r\n    vértices no son dibujados. En su lugar, las aristas seleccionadas son dibujadas en\r\n    amarillo y las deseleccionadas tienen un color negro.\r\n• Modo Caras. Pulse CTRL-TAB y seleccione Caras del menú. En este modo, las caras\r\n    se dibujan con un punto de selección en medio de la misma. Éste se usa para\r\n     seleccionar la cara. Las caras seleccionadas se dibujan en amarillo con los puntos de\r\n    selección en naranja; y las deseleccionadas se dibujan en negro.\r\nVea Menú de selección de Modo Edición.. Casi todas las herramientas de modificación están\r\ndisponibles en los tres modos. Por lo que pudes Rotar, Escalar y Extrudir etc. en todos los\r\nmodos. Obviamente, rotar y escalar un vértice simple no hará nada útil, por lo que algunas\r\nherramientas son más o menos aplicables en algunos modos.\r\n- 71 -\r\nMenú de selección de Modo Edición.\r\nPuede también acceder a los diferentes modos seleccionando uno de los tres botones en la\r\nbarra de herramientas. Vea Botones de selección de Modo Edición. Modos Vértices, Aristas y\r\nCaras de izquierda a derecha.. Usando los botones, puede también entrar en modos mixtos al\r\nhacer clic SHIFT-BIR en los botones.\r\nCuando se cambia de modo, desde Vértices a Aristas y desde Aristas a Caras, las partes\r\nseleccionadas seguirán estándolo si forman un conjunto completo en el nuevo modo. Por\r\nejemplo, si las cuatro aristas de una cara están seleccionadas, cuando se cambie del modo\r\nAristas al de Caras, éste mantendrá la cara seleccionada. Todas las partes seleccionadas que\r\nno formen un conjunto completo en el nuevo modo, serán deseleccionadas. Vea Ejemplo\r\nModo Vértice, Ejemplo Modo Arista, Ejemplo Modo Cara y Ejemplo Modo Mixto para\r\nejemplos de los diferentes modos.\r\nBotones de selección de Modo Edición. Modos Vértices, Aristas y Caras de izquierda a\r\nderecha.\r\nEjemplo Modo Vértice\r\nEjemplo Modo Arista\r\n- 72 -\r\nEjemplo Modo Cara\r\nEjemplo Modo Mixto\r\nEdición Básica\r\nLa mayoría de las operaciones simples de Modo Objeto (como seleccionar, mover, girar y\r\nescalar) funcionan de manera idéntica sobre vértices a como lo hacen sobre objetos. Por lo\r\ntanto puedes aprender muy rápido cómo utilizar las operaciones básicas de Modo Edición. La\r\núnica diferencia notable es un nueva opción para escalar ALT-S que escala los vértices\r\nseleccionados en la dirección de las normales (achica-engorda). Por ejemplo, la piramide\r\ntruncada en Pirámide truncada, fue creada con los siguientes pasos:\r\n• Agrega un cubo en una escena vacía. Entra en Modo Edición.\r\n• Asegurate que todos los vértices estén deseleccionados (rosa). Usa la selección por\r\n      área (TECLAB) para seleccionar los cuatro vértices de la parte superior.\r\n• Verifica que el centro de escalado esté seteado como cualquier cosa excepto el cursor\r\n    3D (ver BSG.EDT.F.MAK.OB1), luego cambia a Modo Escalar (SKEY), reduce el\r\n   tamaño y confirma con BIR.\r\n• Sal de Modo Edición pulsando TAB.\r\n- 73 \r\n
5	Guía de Urbanterror                                                                                 	Traduccion B3 & Rcon\r\nBuenas de nuevo, en mi lucha por tener todo lo relacionado al Urban Terror traducido a Español, me he currado otra traducción, esta vez con los comandos del famoso bot B3 para servidores del Urban, por si hay alguien que use este bot en sus servidores, o le dan acceso como admin en servidores que lo tengan. Ojo que cada server pueden tener diferentes privilegios en diferente niveles pero los comandos son estos. para los que recién incursionan por el urban antes de cada comando poner \r\nel símbolo de exclamacion Ej: !fa \r\n\r\nComandos para usuarios con un nivel de acceso de 0 a 1\r\nComandos públicos para todo el mundo, registrado o no\r\n\r\nforgive\r\nPerdonar a un jugador de tu equipo que te ha matado.\r\n\r\nforgiveall\r\nPerdonar a todos los jugadores de tu equipo que te han matado\r\n\r\nforgivelist\r\nMuestra una lista de todos los jugadores de tu equipo que te han disparado\r\n\r\nforgiveprev\r\nPerdonar al último jugador de tu equipo que te ha matado\r\n\r\ngrudge [<nick>]\r\nReñir a un jugador de tu equipo por dañarte, este jugador no será autoperdonado\r\n\r\nhelp (h) [<comando|nivel>]\r\nMuestra la ayuda para usar un comando, puedes usar *<comando> para mostrar resultados parciales\r\n\r\nmapstats [<nick>]\r\nMuestra las estadísticas del mapa actual para un jugador\r\n\r\nregister\r\nTe registra a ti mismo como usuario\r\n\r\nregtest\r\nMuestra tu estado de usuario actual\r\n\r\ntestscore <nick>\r\nMuestra cuanto puntos obtendrías si mataras a <nick>\r\n\r\ntime\r\nMuestra la hora actual del servidor\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 2 a 100\r\nUsuarios asiduos\r\n\r\nmaps\r\nMuestra las rotaciones de mapas del servidor\r\n\r\nnextmap\r\nMuestra el siguiente mapa en la rotación\r\n\r\nseen <nick>\r\nMuestra cuándo fué visto el usuario por última vez\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 20 a 100\r\nModeradores\r\n\r\nadmins\r\nMuestra todos los administradores conectados\r\n\r\nb3\r\nMuestra la información de la versión del b3\r\n\r\nforgiveinfo <nick>\r\nMuestra los puntos por matar a compañeros de equipo de un jugador\r\n\r\ngreeting [<greeting>]\r\nConfigura o muestra tus saludos\r\n\r\nlist\r\nMuestra todos los jugadores conectados\r\n\r\nsay\r\nDice un mensaje a todos los jugadores\r\n\r\nspam (s) <nick> <message>\r\nEnvia un mensaje predefinido a todos los jugadores\r\n\r\nspams\r\nMuestra una lista con los mensajes predefinidos\r\n\r\nwarn (w) <nick> [<razón>]\r\nAvisa a un jugador\r\n\r\nwarninfo (wi) <nick>\r\nuestra cuantos puntos de aviso tiene un jugador\r\n\r\nwarnremove (wr) <nick>\r\nBorra el último aviso que ha obtenido un jugador\r\n\r\nwarns\r\nMuestra una lista con los avisos\r\n\r\nwarntest (wt) <razón>\r\nPrueba un aviso\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 40 a 100\r\nAdministradores\r\n\r\nadmintest\r\nMuestra el estado actual de tu usuario\r\n\r\naliases (alias) <nick>\r\nMuestra todos los alias de un jugador\r\n\r\nbaninfo (bi) <nick>\r\nMuestra cuantos baneos tiene un jugador\r\n\r\nfind <nick>\r\nIntenta encontrar a un jugador conectado\r\n\r\nkick (k) <nick> [<razón>]\r\nEchar a un jugador\r\n\r\nleveltest (lt) [<nick>]\r\nMuestra el estado de un usuario\r\n\r\nscream <message>\r\n"Grita" un mensaje a todos los jugadores\r\n\r\ntempban (tb) <nick> <duración> [<razón>]\r\nBanea temporalmente a un jugador\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 60 a 100\r\nAdministradores "Completos"\r\n\r\nban (b) <nick> [<razón>]\r\nBanear a un jugador permanentemente\r\n\r\nforgiveclear <nick>\r\nLimpia los puntos por matar a compañeros de equipo de un jugador\r\n\r\nspank (sp) <nick> [<razón>]\r\nAzota a un jugador, traviesillo!!!\r\n\r\nunban <nick>\r\nDes-banea a un jugador\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 80 a 100\r\nAdministradores Seniors\r\n\r\nclear [<jugador>]\r\nLimpiar todos los puntos por avisos y muertes de compañeros de equipo\r\n\r\nlookup (l) <nick>\r\nBusca a un jugador en la base de datos\r\n\r\nmakereg (mr) <nick> <grupo>\r\nConvierte a un usuario en "usuario asiduo" (nivel 2)\r\n\r\nmap <map>\r\nCambia el mapa actual al mapa seleccionado\r\n\r\nrestart\r\nReinicia el bot b3\r\n\r\nwarnclear (wc) <nick>\r\nLimpia todos los avisos de un jugador\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 90 a 100\r\nSuper Administradores\r\n\r\nclientinfo <nick> <field>\r\nConsigue la información de un cliente\r\n\r\ncmdlevel <comando> <nivel>\r\nConfigura el nivel de un comando\r\n\r\ndelgroup <grupo>\r\nElimina a un grupo y elimina todos los clientes que haya en el grupo\r\n\r\neditgroup <grupo> <-n|-k|-l> <value>\r\nCambiar la configuración de un grupo\r\n\r\ngroups <nick>\r\nMuestra las listas de los grupos de todos los jugadores\r\n\r\nnewgroup <palabra clave> <nivel> <nick>\r\nCrea un nuevo grupo\r\n\r\npause <duración>\r\nPone en pausa el parseo del bot\r\n\r\nputgroup <cliente> <grupo>\r\nAñade a un cliente al grupo seleccionado\r\n\r\nrebuild\r\nSincronizar jugadores conectados\r\n\r\nungroup <cliente> <grupo>\r\nQuitar a un cliente de un grupo\r\n\r\n\r\n\r\n\r\n\r\nComandos para usuarios con un nivel de acceso de 100\r\nSolo para dioses\r\n\r\ndie\r\nApagar el bot b3\r\n\r\ndisable <plugin>\r\nDeshabilita un plugin\r\n\r\nenable <plugin>\r\nHabilita un plugin deshabilitado\r\n\r\nreconfig\r\nRecarga todas las configuraciones\r\n\r\n////****////****////****////****////****////****////****////****////****////****////****////****////****////****////****////\r\n\r\nSiguiendo con el te y para no Olvidar la famosa /Rcon ,para los de la vieja guardia no hace falta hablar mucho de del /Rcon pero a los mas nuevos les comentos que el /Rcon son los comandos que ya bienen en juego y que todabia hay servidores que los usa, personalmente recuerdo averlo usado en mi primer server caserito (e incluso algunos sigo usando) que con ayuda e podido levantar en mi makina para conpartir horas con unos amigos y con gente del clan que en su momento aviamos creado ,volver a leerlos me traen recuerdos jajajaaja  \r\n\r\nCOMANDOS DE ADMINISTRACIÓN\r\n\r\n• /rconpassword ''*****'' // Introducir contraseña para obtener poderes de administrador. Es recomendable hacerlo desde el menú por motivos de seguridad.\r\n• /rcon status // Provee la siguiente información de todos los jugadores del servidor: Espacio que ocupa (“slot”), nombre (“nick”), estado de la conexión (“ping”) e IP\r\n• /rcon dumpuser "número" // Información detallada del jugador seleccionado.\r\n• /rcon kick ''nombre/número'' // Expulsar a un jugador del servidor. Detrás va la razón, opcional.\r\n• /rcon forecteam ''blue/red/spectator/free'' // Obligas a un jugador a pasarse al equipo elegido, al estado de observación o al equipo con menos jugadores (“free”).\r\n• /rcon slap ''nombre/número'' // Dar un golpe a un jugador como advertencia.\r\n• /rcon nuke "nombre/número" // Manda un ataque aéreo a un jugador como advertencia.\r\n• /rcon '' '' // Enviar mensaje en la parte superior izquierda.\r\n• /rcon say '' '' // Eniar mensaje como adminstrador en la parte inferior izquierda.\r\n• /rcon bigtext '' '' // Enviar mensaje en grande en la parte superior.\r\n• /rcon mute ''nombre/número'' // Los mensajes enviados por tal jugador no serán vistos.\r\n• /rcon map '' '' // Carga un mapa a elección.\r\n• /rcon restart // Reinicia la partida.\r\n• /rcon reload // Recarga el "server.cfg".\r\n• /rcon pause // Detiene y reanuda el juego.\r\n• /rcon pause map // Detiene y reanuda el juego al finalizar la ronda.\r\n• /rcon exec ''server.cfg'' // Recarga la configuración del servidor.\r\n• /rcon quit // Reinicia el servidor.\r\n• /rcon ban ''nombre/número/IP'' (''minutos'')// Prohibe la entrada a un jugador en el servidor. Puede ser temporal o permanente.\r\n\r\nPara poder prohibir la entrada a un jugador (“banear”) se debeañadir esto al archivo sercer.cfg: set filterBan1\r\nTodos los jugadores baneados aparecerán en “banlist.txt”\r\n• /rcon addIP ''IP'' para añadir una IP a la lista de jugadores baneados. (Tras concluir el mapa).\r\n• /rcon removeIP ''IP'' para quitar una IP de la lista de jugadores baneados.\r\n\r\nCómo permitir árbitros en el servidor:\r\n• /g_referee "1" // (0 = no permitidos)\r\n• /g_refpass ''*****'' // Configurar la contraseña para los árbitros.\r\nCómo abilitar/desabilitar el poder de “banear” temporalmente de un árbitro\r\n• /g_refNoBan ''0/1'' // (0 = pueden banear, 1 = no pueden banear)\r\n\r\n\r\n\r\nCOMANDOS DE ÁRBITRO\r\n\r\n• /reflogin ''*****'' // Introducir contraseña para obtener poderes de árbitro.\r\n• /ref pause // Pausa una partida (solo con matchmode a 1).\r\n• /ref resume // Reanuda una partida anteriormente pausada.\r\n• /ref restart // Reinicia la partida.\r\n• /ref forecteam ''blue/red/spectator/free'' // Obligas a un jugador a pasarse al equipo elegido.\r\n• /ref mute ''nombre/número'' // Los mensajes enviados por tal jugador no serán vistos.\r\n• /ref kick ''nombre/número'' // Expulsar a un jugador del servidor. Detrás va la razón, opcional.\r\n• /ref ban ''nombre/número'' ''minutos'' // Prohibir la entrada a un jugador en el servidor durante un número determinado de minutos.\r\n• /ref help // Ayuda acerca de la función y comandos de un árbitro.\r\n• /ref resign // Dejar de ser arbitro para volver a ser un jugador normal.\r\n\r\nCONFIGURACIÓN DEL SERVIDOR\r\n\r\n\r\n-:Nombre del servidor & Mensajes de bienvenida:-\r\n\r\n• set sv_hostname "" // Nombre del servidor.\r\n• set g_motd "" // Mensaje del día, mostrado al conectarse al servidor.\r\n• set sv_joinmessage "" // Mensaje de entrada, mostrado al entrar a la partida.\r\n\r\n\r\n-:Configuraciones generales:-\r\n\r\n• set sv_maxclients "12" // Número máximo de huecos disponibles (slots) en el servidor para jugadores. Usar más de 16 no es recomendado ya que podría producir la interrupción de la conexión (lag).\r\n• set g_maxGameClients "0" // Número máximo de jugadores que pueden jugar, el resto serán forzados a ser espectadores. (0 = todos).\r\n• set sv_privateClients "0" // Número de huecos privados reservados para aquel que entre con contraseña.\r\n• set g_gametype "4" // 0=FreeForAll, 3=TeamDeathMatch, 4=Team Survivor, 5=Follow the Leader, 6=Capture and Hold, 7=Capture The Flag, 8=Bombmode. (Define el tipo de juego).\r\n• sets sv_dlURL "urbanterror.net" // Asigna la dirección de la auto-descarga de mapas.\r\n\r\n\r\n-:Contraseñas:-\r\n\r\n• set rconpassword "" // Contraseña para controlar el servidor de forma remota (RCON).\r\n• set sv_privatePassword "" // Contraseña de los huecos privados.\r\n• set g_password "" // Contraseña del servidor. (Ninguna = publico).\r\n\r\n\r\n-:Limites & Tiempos:-\r\n\r\n• set g_warmup "15" // Tiempo en segundos para empezar la partida cuando el mapa es cambiado. Su función es la de dar un tiempo para que los ordenadores más lentos terminen de cargar.\r\n• set timelimit "20" // Tiempo en minutos para que el mapa acabe. (0 = nunca).\r\n• set fraglimit "10" // Cantidad de puntos que han de ser conseguidos para finalizar el mapa. (0=nunca).\r\n• set capturelimit "0" // Cantidad de banderas capturadas para finalizar el mapa. (0 = nunca.)\r\n• set g_maxrounds "0" // Número de rondas para acabar el mapa (0 = nunca).\r\n• set g_RoundTime "3" // Número máximo de minutos por ronda.\r\n• set g_suddendeath "1" // Muerte súbita. Cuando el mapa ha finalizado y los dos equipos han obtenido la misma puntuación se jugara un ronda de desempate. (0 = no, 1 = si).\r\n\r\n/TEAM SURVIVOR/\r\n\r\n• set g_survivorrule "0" // 0 = Ningún equipo se llevará un punto cuando el tiempo de ronda haya finalizado aun quedando jugadores en pie. 1 = El equipo con más jugadores en pie al acabar la ronda se lleva un punto.\r\n\r\n/MODO BOMBA/\r\n\r\n• set g_bombdefusetime "10" // Número de segundos que se tarda en desactivar la bomba.\r\n• set g_bombexplodetime "40" // Número de segundos para que la bomba detone al ser plantada.\r\n\r\n/CAPTURE THE FLAG/\r\n\r\n• set g_hotpotato "2" // Cuando ambas banderas son cogidas explotarán pasados estos minutos.\r\n• set g_flagreturntime "30" // Segundos transcurridos desde que se abandona la bandera hasta que ésta es devuelta automaticamente a su base.\r\n\r\n/CAPTURE AND HOLD/\r\n\r\n• set g_cahtime "60" // Tiempo en segundos por ronda en Capture and Hold.\r\n\r\n\r\n-:Respawn:-\r\n\r\n• set g_respawnDelay "8" // Segundos antes de volver a aparecer (respawn), ignorado cuando g_waverespawns está a 1.\r\n• set g_forcerespawn "20" // Segundos antes de forzar el respawn.\r\n• set g_waverespawns "0" // Activar esto para que todo el equipo “renazca” a la vez. (0 =no, 1=si).\r\n• set g_bluewave "15" // Segundos para cada oleada de respawn en el equipo azul, ignorado si g_waverespawns está a 0.\r\n• set g_redwave "15" // Segundos para cada oleada de respawn en el equipo rojo, ignorado si g_waverespawns está a 0.\r\n• set g_respawnProtection "2" // Segundos que un jugador es protegido nada más nacer.\r\n\r\n\r\n-:Reglas:-\r\n\r\n• set g_deadchat "1" // Determina si los jugadores vivos pueden ver los mensajes de los ya muertos. (0 = no, 1= solo los de su equipo 2= todos los mensajes globales).\r\n• set g_antiwarp "1" // Permite o imposibilita el “antiwarp”. Esta opción suaviza el movimiento de los jugadores warpeados (el “warping” es causado por una conexión lenta o descargar porno durante el juego). Los jugadores con este problema sufrirán tirones si está activado.\r\n• set g_antiwarptol "50" // Tolerancia del “antiwarp”. Cunato mayor sea más tolerancia.\r\n• set g_gear "0" // Configura el tipo de armas permitidas.\r\n• set g_allowvote "536871039" // Configura los votos permitidos.\r\n• set g_failedvotetime "300" // Tiempo en segundos para poder empezar otra votación una vez fallada la anterior.\r\n• set g_followstrict "1" // Posibilidad de seguir a los enemigos al morir (1 = no).\r\n• set sv_floodprotect "1" // Evita en la medida de lo posible el “spam” (1 = activado).\r\n\r\n\r\n-:Modo partido - Match Mode:-\r\n\r\n• set g_matchmode "0" // Modo partido. (0 = desactivado . 1 = activado).\r\n• set g_timeouts "3" // Cantidad de tiempos muertos que puede tener un equipo por mapa.\r\n• set g_timeoutlength "240" // Duración en segundos de los tiempos muertos.\r\n• set g_pauselength "0" // Duración de la pausa llamada mediante RCON. (0 = indefinido).\r\n\r\n\r\n-:Configuracion de equipos:-\r\n\r\n• set g_friendlyFire "1" // Fuego amigo: 0 = desactivado, 1= activado con expulsión tras demasiadas bajas a miembros del mismo equipo (TK), 2= activado sin expulsión.\r\n• set g_maxteamkills "3" // Número máximo de bajas a miembros del mismo equipo por el mismo jugador antes de la expulsión.\r\n• set g_teamkillsforgettime "300" // Cantidad de segundos para perdonar el “TeamKilling”.\r\n• set g_teamautojoin "0" // Fuerza a los jugadores a ser auto seleccionados para un equipo imposibilitando la opción de observar. (0 = no, 1 = si).\r\n• set g_teamForceBalance "1" // Evita el unirse a un equipo con más jugadores que el contrario. (0 = desactivado, 1 = activado.)\r\n• set g_maintainTeam "1" // Al cambiar de mapa los jugadores siguen en el mismo equipo. (0 = no, 1 = si)\r\n• set g_teamnamered "" // Nombre del equipo rojo. Nada = Red Dragons.\r\n• set g_teamnameblue "" // Nombre del equipo azul. Nada = SWAT.\r\n• set g_swaproles "0" // Cambiar los roles de los equipos, manteniendo los jugadores, al finalizar el mapa, volviéndolo a jugar. Altamente recomendado en modo bomba. (0 = no, 1 = si).\r\n\r\n\r\n-:Configuración Avanzada:-\r\n\r\n• set sv_strictauth "0" // 1= Comprueba si la clave del CD es válida, los jugadores que accedan desde ioUrbanTerror no podrán jugar.\r\n• set sv_pure "1" // 1 = Los jugadores no podrán cargar archivos “pk3” modificados.\r\n• set sv_maxRate "0" // Tráfico máximo en segundos que enviará el servidor por cliente.\r\n• set sv_timeout "180" // Tiempo en segundos para que un jugador con conexión interrumpida sea automáticamente expulsado.\r\n• set g_inactivity "0" // Tiempo en segundos para que un jugador inactivo (sin movimiento) sea automáticamente expulsado.\r\n\r\n\r\n-:Servidores Maestros:-\r\n\r\n• set sv_master1 "" // Está es proporcionada automáticamente por el motor del juego, se debe dejar en blanco.\r\n• set sv_master2 "master.urbanterror.net"\r\n• set sv_master3 "master2.urbanterror.net"\r\n• set sv_master4 "master.quake3arena.com"\r\n• set sv_master5 "" // Futuro servidor maestro.\r\n\r\n\r\n-:Configuraciones mixtas:-\r\n\r\n• set g_armbands "1" // Determina el color de la banda del brazo .(0 = elección del jugador, 1 = Basada en el color del equipo (red or blue) 2 = Al azar).\r\n• set g_allowchat "2" // 0 = Conversación no permitido 1 = Solo conversación de equipo 2 = Todos las conversaciones.\r\n• set g_gravity “800” // Cambia la gravedad. (800 = gravedad terrestre 65 = gravedad lunar).\r\n• set sv_maxping "0" // Ping máximo permitido para poder acceder al servidor.\r\n• set sv_minping "0" // Ping mínimo permitido para acceder al servidor.\r\n• set g_log "games.log" // Nombre del historial (“log”). Dejarlo en blanco significa que éste no será escrito. Se encuentra en la carpeta q3ut4 en Windows. Linux usa ~/.q3a/q3ut4.\r\n• set g_logsync "1" // 1 = Permite la escritura directa al historial.\r\n• set g_loghits "0" // 1 = Guarda todos los golpes (“hits”) en el historial.\r\n• set g_logroll "0" // 1 = Crea un nuevo historial en vez de usar siempre el mismo.\r\n• set logfile "0" // Additional logging in separate qconsole.log file. 1=buffered, 2=synced.\r\n\r\n\r\n-:Rotación de mapas:-\r\n\r\n• set g_mapcycle "mapcycle.txt" // Nombre del “mapcycle” que se quiera cargar localizado en el directorio q3ut4.\r\n• map ut4_casa // Mapa por defecto con el que empieza el servidor.\r\n\r\n\r\n-:Calculadora de equipo:-\r\n\r\n0= Todas las armas // 63 = Solo cuchillo\r\nPara quitar un arma se debe sumar su número correspondiente a 0:\r\nGranadas = 1 // Rifles Francotirador = 2 / / Spas = 4 // Pistolas = 8 // Automáticas = 16 // Negev = 32 \r\nEnlace a calculadora de armas.\r\n\r\n\r\n-:Calculadora de votos:-\r\n\r\n1 reload 2 restart 4 map 8 nextmap 16 kick/clientkick 32 swapTeams 64 shuffleTeams 128 g_friendlyFire 256 g_followStrict 512 g_gameType 1024 g_waveRespawns 2048 timelimit 4096 fragLimit 8192 captureLimit 16384 g_respawnDelay 32768 g_redWaveRespawnDelay 65536 g_blueWaveRespawnDelay 131072 g_bombExplodeTime 262144 g_bombExplodeTime 524288 g_survivorRoundTime 1048576 g_caputureScoreTime 2097152 g_warmup 4194304 g_matchMode 8388608 g_timeouts 16777216 g_timeoutLength 33554432 exec 67108864 g_swapRoles 134217728 g_maxRounds 268435456 g_gear 536870912 cyclemap\r\nEnlace a calculadora de votos.\r\n\r\n\r\n*Todos estos comandos pueden ser escritos tanto en el archivo “server.cfg” del directorio q3ut4 como en la consola poniendo delante /rcon (los dos puntos '':'' han de ser borrados).*\r\n\r\n\r\n\r\n\r\nAdministración del servidor\r\nConfiguración por defecto\r\nEsta es la configuración por defecto que viene con el Urban Terror. Recomendamos a los administradores de los servidores que la utilizen como base de sus configuraciones.\r\n// Información del administrador, muestra en algunos juegos de navegador\r\nsets " Admin" "adminname" // Utiliza un espacio delante por lo que aparece en la parte superior de la lista de propiedades.\r\nsets " Email" "xxx@xxx.xxx"\r\n\r\n// Nombre del servidor y Mensajes Diarios\r\nset sv_hostname "New Unnamed Server" // Nombre del Servidor.\r\nset g_motd "Urban Terror, Presented by FrozenSand" // Mensaje del día, se muestra al conectarse\r\nset sv_joinmessage "Welcome to Urban Terror 4.1.1" // Mensaje que se muestra en la pantalla al unirse al juego\r\n\r\n// Opciones Generales del Juego\r\nset sv_maxclients "12" // Máximo de huecos para jugadores en el servidor, utilizar más de 16 huecos no es acosejable. Puede causar retardo y la mayoría de los mapas no están preparados para ello. Más de 24 huecos puede provocar errores.\r\nset g_maxGameClients "0" // Máximo de jugadores que realmente pueden unirse al juego. Los demás están obligados a ver el espectáculo sin jugar. 0 = Todos\r\nset sv_privateClients "0" // Cantidad de huecos privados. La cantidad de huecos privados estarán reservados para jugadores que sepan la contraseña privada".\r\nset g_gametype "4" // 0 = FreeForAll (Todos contra todos), 3 = TeamDeathMatch (Combate a muerte por equipos), 4 = Team Survivor (El equipo superviviente), 5 = Follow the Leader (Seguir al Líder), 6 = Capture and Hold (Capturar y mantener), 7 = Capture The Flag (Capturar la bandera), 8 = Bombmode (Modo Bomba) \r\nsets sv_dlURL "urbanterror.info" // Establece la dirección de Auto-Descarga. La Auto-Descarga sólo funciona con clientes de ioUrbanTerror, no con clientes de quake3. El cliente intentará descargar <sv_dlURL>/q3ut4/mapname.pk3. Por lo tanto, si su servidor está ejecutando ut4_COOLMAP y sv_dlURL se establece en "yoursite.com/maps', asegúrese de que los mapas tiene su sede en http://www.yoursite.com/maps/q3ut4/ut4_coolmap.pk3. Dejando "urbanterror.net" este conjunto hará uso de un espejo del mapa con los mapas más comunes en él. Si tienes tu propio hosting, le rogamos que lo use, para ahorrar ancho de banda.\r\n\r\n// Contraseñas\r\nset rconpassword "" // Contraseña para controlar el servidor remotamente usando rcon.\r\nset sv_privatePassword "" // Contraseña para los huecos privados\r\nset g_password "" // Contraseña del servidor. Ninguna = Servidor público\r\n\r\n// Límites/tiempos\r\nset timelimit "20" // Tiempo en minutos de la duración del mapa, 0 = Ilimitado\r\nset fraglimit "10" // Cantidad de puntos a conseguir para que termine el mapa, 0 = Ilimitado\r\nset capturelimit "0" // Cantidad de banderas capturadas para que termine el mapa, 0 = Ilimitado\r\nset g_warmup "15" // Tiempo en segundos de espera para empezar la partida al cargar un nuevo mapa.\r\n\r\n// Reaparecimientos (FFA, TDM, CAH, CTF)\r\nset g_respawnDelay "8" // Segundos antes de reaparecer, ignorar si g_waverespawns está en 1\r\nset g_forcerespawn "20" // Segundos antes de reaparecer forzado, incluso cuando el jugador a disparado\r\nset g_waverespawns "0" // Usar waverespawns, equivale a que todos los jugadores del servidor reaparacen al mismo tiempo.\r\nset g_bluewave "15" // Segundos de reaparición del equipo Azul, ignorar si g_waverespawns está en 0\r\nset g_redwave "15" // Segundos de reaparición del equipo Rojo, ignorar si g_waverespawns está en 0\r\nset g_respawnProtection "2" // Cantidad de segundos después de haber aparecido, en que los jugadores están protegidos del equipo contrario.\r\n\r\n// Reglas\r\nset g_deadchat "1" // Determina si los "vivos" pueden ver los mensajes de los "muertos". 0 = Los jugadores "vivos" no pueden ver los mensajes de los jugadores "muertos". 1 = Los jugadores "vivos" pueden ver los mensajes de miembros del mismo equipo "muertos" pero sólo por el Chat de Equipo (Teamsay). 2 = Los jugadores "vivos" pueden ver los mensajes de los jugadores muertos\r\nset g_antiwarp "1" // Habilitar o deshabilitar antiwarp. Esta opción suaviza los movimientos de los jugadores colapsados (Una colapsación se puede producir, por ejemplo, cuando descargas mientras juegas). El jugador colapsado experimentará intermitencia en la imagen cuando ésta opción está habilitar.\r\nset g_antiwarptol "50" // La tolerancia del antiwarp. 50 = Por defecto. Superior = muy tolerante. \r\nset g_gear "0" // Máscara de bits que decide cuales votos son permitidos y cuales no. Comprobar http://www.urbanterror.net/gear_calc.html para encontrar el número correcto\r\nset g_allowvote "536871039" // Máscara de bits que decide cuales votos son permitidos y cuales no. Comprueba http://www.urbanterror.net/allowvote_calc.html para encontrar el número correcto\r\nset g_failedvotetime "300" // Tiempo en segundos antes de que alguien pueda crear una votación después de que la última fracasara.\r\nset g_followstrict "1" // 1 = No se puede espectear al equipo contrario una vez "muerto".\r\nset sv_floodprotect "1" // 1 = Interrumpe los mensajes continuos de los jugadores para evitar el spam, dejando un espacio de tiempo entre mensaje y mensaje.\r\n\r\n// Modo Partido\r\nset g_matchmode "0" // El modo partido para jugar una War (Guerra). Las características de los Tiempos de Espera (timeouts) y los comandos listos.\r\nset g_timeouts "3" // Cantidad de Tiempos de Espera (timeouts) que un equipo puede hacer por mapa.\r\nset g_timeoutlength "240" // Duración del Tiempo de Espera (timeout)\r\nset g_pauselength "0" // Duración de la pausa. Esto sólo puede hacerse con la rcon. 0 = indefinido\r\n\r\n// Opciones de juego del equipo\r\nset g_friendlyFire "1" // 0 = fuego amigo deshabilitado 1 = Fuego amigo habilitado, te expulsarán si haces demasiados TK 2 = Fuego amigo habilitado, no te expulsarán.\r\nset g_maxteamkills "3" // Cantidad de TK realizados para la expulsión cuando el Fuego Amigo está en 1.\r\nset g_teamkillsforgettime "300" // Cantidad de segundos para que los TK sean olvidados.\r\nset g_teamautojoin "0" // Fuerza a los jugadores a usar autojoin, en lugar de dejarlos en espectador.\r\nset g_teamForceBalance "1" // Si está habilitado, no puede unirse a un equipo cuando se tiene más jugadores que el otro\r\nset g_maintainTeam "1" // Al cambiar los mapas, los jugadores se quedarán en el equipo en el que estaban\r\nset g_teamnamered "" // Nombre para el equipo rojo, nada = Red Dragons\r\nset g_teamnameblue "" // Nombre para el equipo azul, nada = SWAT\r\nset g_swaproles "0" // Cuando el mapa haya terminado, jugar de nuevo con los equipos mezclados (recomendado para el Modo Bomba). Después de eso, cambiar mapa. 0 = Cambiar de mapa inmediatamente una vez haya terminado el mapa anterior sin mezclar equipos\r\n\r\n// Opciones específicas del Team Survivor/Bombmode/Follow the Leader\r\nset g_maxrounds "0" //Número de rondas antes de que el mapa termine, 0 = nunca\r\nset g_RoundTime "3" // Minutos que como máximo puede durar una ronda\r\nset g_survivorrule "0" // 0 = Los equipos no reciben un punto cuando se acaba el tiempo antes de que todo el mundo esté muerto. 1 = Equipo con más jugadores obtiene punto\r\nset g_suddendeath "1" // Cuando el mapa termina y ambos equipos tienen la misma cantidad de puntos, se añade otra ronda.\r\nset g_bombdefusetime "10" // Segundos que tarda en desactivar la bomba\r\nset g_bombexplodetime "40" // Segundos que tarda la bomba en explotar, después de plantarla.\r\n\r\n// Opciones específicas del Capture the flag\r\nset g_flagreturntime "30" // Si una bandera se deja caer, devolverla a base después de esta cantidad de segundos\r\nset g_hotpotato "2" // Cuando ambas banderas están cojidas, explotarán después de ésta cantidad de minutos\r\n\r\n// Opciones avanzadas - No cambiar, a menos que sepas lo que haces.\r\nset sv_strictauth "0" // 1 = Verificar cdkey válida, esto significa que los jugadores de ioUrbanTerror no serán capazes de unirse.\r\nset sv_pure "1" // No deja que los jugadores carguen archivos .pk3 modificados.\r\nset sv_maxRate "0" // Velocidad máxima que el servidor enviará al cliente. 25000 or 0 = máximo\r\nset sv_timeout "180" // Tiempo que tardará el servidor en expulsar al jugador con CI [Connection Interupted (Conexión interrumpida)]\r\nset g_inactivity "0" // Tiempo que tardará el servidor en expulsarte si estás inactivo (sino te mueves o estás AFK)\r\n\r\n// Servidor Master - Los servidores informarán si "Dedicado" se establece en 2. Si está en 1, no informarán.\r\nset sv_master1 "" // Éste se ajusta de forma automática por el motor del juego, así que basta con dejarlo en blanco\r\nset sv_master2 "master.urbanterror.info"\r\nset sv_master3 "master2.urbanterror.info"\r\nset sv_master4 ""\r\nset sv_master5 ""\r\n\r\n// Otras Opciones\r\nset g_armbands "1" // Determina el color del Brazalete (se muestra en el minimapa y en la lista de jugadores). 0 = a elección del jugador, conjunto con cg_rgb 1 = Sobre la base del color del equipo (rojo o azul) 2 = Asignado por el servidor (al azar)\r\nset sv_maxping "0" // Ping máximo que puede tener un jugador\r\nset sv_minping "0" // Ping mínimo que puede tener un jugador\r\nset g_allowchat "2" // 0 = no hay chat 1 = Sólo hay teamchat (chat en el equipo) 2 = Si hay chats\r\nset g_log "games.log" // Nombre del archivo de registro. Vacío("") significa que no hay registro. En Windows el registro se efectuará en la carpeta q3ut4. Linux usa esto: ~/.q3a/q3ut4\r\nset g_logsync "1" // Habilita/deshabilita la inscripción directa en el archivo de registro en vez de amortiguarse.\r\nset g_loghits "0" // Cada registro único con éxito, crea registros muy grandes.\r\nset g_logroll "0" // Crear nuevo registro de vez en cuando, en vez de utilizar siempre la misma.\r\nset logfile "0" // Registro adicional en el archivo qconsole.log separado. 1 = búffer, 2 = sincronizado\r\nset g_cahtime "60" // Intervalo en segundos de asignación de puntos por banderas en Capture and Hold (Captura y mantiene)\r\n\r\n// Rotación de mapas\r\nset g_mapcycle "mapcycle.txt" // Nombre del archivo mapcycle, ubicado en el directorio q3ut4.\r\nmap ut4_casa // Mapa para empezar la rotación.\r\n\r\n// Anti-Cheto\r\n// pb_sv_enable // Para permitir que PB, elimine el // al principio de esta línea (sólo funciona cuando se utiliza Quake 3 Arena, no ioUrbanTerror)\r\nset sv_battleye "0" // Mantener dehabilitado, BattlEye está muerto.\r\n
\.


--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 176
-- Name: temas_id_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('temas_id_temas_seq', 5, true);


--
-- TOC entry 1973 (class 0 OID 16439)
-- Dependencies: 177 1977
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: condor
--

COPY usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) FROM stdin;
5	Dimas	Martinez	dimasjm_1997@hotmail.com	dimasj	94fd13e285d98ff674f7dc5954bc044d	G	2013-06-07 15:12:43.795257	2013-06-07 19:56:15.029155
4	admin	admin	pcondor@gmail.com	admin	daa02698b71d64bb497a32a0e35e17aa	admin	2013-06-07 15:00:21.044113	2013-06-07 19:59:55.828242
\.


--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 178
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: condor
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 5, true);


--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_lecciones_id_usuarios_lecciones_seq', 1, false);


--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 180
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_temas_id_usuarios_temas_seq', 1, false);


--
-- TOC entry 1918 (class 2606 OID 16459)
-- Dependencies: 161 161 1978
-- Name: contenidos_descrip_contenidos_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_descrip_contenidos_key UNIQUE (descrip_contenidos);


--
-- TOC entry 1920 (class 2606 OID 16461)
-- Dependencies: 161 161 1978
-- Name: contenidos_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_pkey PRIMARY KEY (id_contenidos);


--
-- TOC entry 1922 (class 2606 OID 16463)
-- Dependencies: 164 164 1978
-- Name: ejemplos_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1924 (class 2606 OID 16465)
-- Dependencies: 164 164 1978
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1926 (class 2606 OID 16467)
-- Dependencies: 167 167 1978
-- Name: ejercicios_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1928 (class 2606 OID 16469)
-- Dependencies: 167 167 1978
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicios);


--
-- TOC entry 1930 (class 2606 OID 16471)
-- Dependencies: 169 169 1978
-- Name: fuentes_fuente_referencias_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_fuente_referencias_key UNIQUE (fuente_referencias);


--
-- TOC entry 1932 (class 2606 OID 16473)
-- Dependencies: 169 169 1978
-- Name: fuentes_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_pkey PRIMARY KEY (id_fuente_referencias);


--
-- TOC entry 1934 (class 2606 OID 16475)
-- Dependencies: 171 171 1978
-- Name: lecciones_nb_lecciones_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_nb_lecciones_key UNIQUE (nb_lecciones);


--
-- TOC entry 1936 (class 2606 OID 16477)
-- Dependencies: 171 171 1978
-- Name: lecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_pkey PRIMARY KEY (id_lecciones);


--
-- TOC entry 1938 (class 2606 OID 16479)
-- Dependencies: 173 173 1978
-- Name: multimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_pkey PRIMARY KEY (id_multimedia);


--
-- TOC entry 1940 (class 2606 OID 16481)
-- Dependencies: 173 173 1978
-- Name: multimedia_url_multimedia_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_url_multimedia_key UNIQUE (url_multimedia);


--
-- TOC entry 1942 (class 2606 OID 16483)
-- Dependencies: 175 175 1978
-- Name: temas_nb_temas_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_nb_temas_key UNIQUE (nb_temas);


--
-- TOC entry 1944 (class 2606 OID 16485)
-- Dependencies: 175 175 1978
-- Name: temas_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_temas);


--
-- TOC entry 1946 (class 2606 OID 16487)
-- Dependencies: 177 177 1978
-- Name: usuario_password_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_password_key UNIQUE (password);


--
-- TOC entry 1948 (class 2606 OID 16489)
-- Dependencies: 177 177 1978
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 1950 (class 2606 OID 16491)
-- Dependencies: 177 177 1978
-- Name: usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: condor; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 1951 (class 2606 OID 25402)
-- Dependencies: 171 1935 161 1978
-- Name: contenidos_id_lecciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_lecciones_fkey FOREIGN KEY (id_lecciones) REFERENCES lecciones(id_lecciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1952 (class 2606 OID 25407)
-- Dependencies: 1919 164 161 1978
-- Name: ejemplos_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1953 (class 2606 OID 25412)
-- Dependencies: 161 167 1919 1978
-- Name: ejercicios_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1954 (class 2606 OID 25417)
-- Dependencies: 169 1919 161 1978
-- Name: fuentes_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1955 (class 2606 OID 25422)
-- Dependencies: 175 1943 171 1978
-- Name: lecciones_id_temas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_id_temas_fkey FOREIGN KEY (id_temas) REFERENCES temas(id_temas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1956 (class 2606 OID 25427)
-- Dependencies: 161 1919 173 1978
-- Name: multimedia_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: condor
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1983 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: condor
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM condor;
GRANT ALL ON SCHEMA public TO condor;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-06-10 21:09:49 VET

--
-- PostgreSQL database dump complete
--


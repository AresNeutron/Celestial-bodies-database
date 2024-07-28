--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions numeric(4,2),
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_id integer,
    is_spherical boolean DEFAULT true
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance integer,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(100) NOT NULL,
    age_in_millions numeric(4,2),
    distance integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 20);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 30);
INSERT INTO public.comet VALUES (3, 'Wild 2', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 13.60, false, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.40, false, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxia del Triángulo', 10.20, false, false);
INSERT INTO public.galaxy VALUES (4, 'Centauro A', 13.50, false, false);
INSERT INTO public.galaxy VALUES (5, 'Gran Nube de Magallanes', 3.60, false, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxia del Sombrero', 9.90, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'La Luna es el satélite natural de la Tierra.', 3, true);
INSERT INTO public.moon VALUES (2, 'Europa', 'Europa es una de las lunas galileanas de Júpiter, conocida por su superficie helada.', 5, true);
INSERT INTO public.moon VALUES (3, 'Titán', 'Titán es la luna más grande de Saturno y tiene una atmósfera densa.', 6, true);
INSERT INTO public.moon VALUES (4, 'Titania', 'Titania es una luna de Urano y la segunda luna más grande del planeta.', 7, true);
INSERT INTO public.moon VALUES (5, 'Tritón', 'Tritón es la mayor luna de Neptuno y tiene características geológicas únicas.', 8, true);
INSERT INTO public.moon VALUES (6, 'Caronte', 'Caronte es la luna más grande de Plutón y forma un sistema binario con el planeta enano.', 9, true);
INSERT INTO public.moon VALUES (7, 'Hoapalea', 'Hoapalea es una luna hipotética y ficticia asociada a Kepler-452b.', 10, true);
INSERT INTO public.moon VALUES (8, 'Hades', 'Hades es una luna imaginaria vinculada a HD 209458 b.', 11, true);
INSERT INTO public.moon VALUES (9, 'Trappiko', 'Trappiko es una luna ficticia relacionada con TRAPPIST-1e.', 12, true);
INSERT INTO public.moon VALUES (10, 'Phobos', 'Phobos es una luna de Marte con forma irregular y superficie craterizada.', 4, true);
INSERT INTO public.moon VALUES (11, 'Ganímedes', 'Ganímedes es la luna más grande de Júpiter y del sistema solar.', 5, true);
INSERT INTO public.moon VALUES (12, 'Pan', 'Pan es una pequeña luna pastora de los anillos de Saturno.', 6, true);
INSERT INTO public.moon VALUES (13, 'Oberon', 'Oberon es una de las lunas de Urano y una de las más grandes.', 7, true);
INSERT INTO public.moon VALUES (14, 'Proteo', 'Proteo es una luna de Neptuno con forma irregular y cráteres grandes.', 8, true);
INSERT INTO public.moon VALUES (15, 'Nix', 'Nix es una de las lunas de Plutón y forma parte del sistema binario con Caronte.', 9, true);
INSERT INTO public.moon VALUES (16, 'Blanco', 'Blanco es una luna ficticia relacionada con Kepler-452b.', 10, true);
INSERT INTO public.moon VALUES (17, 'Marion', 'Marion es una luna imaginaria vinculada a HD 209458 b.', 11, true);
INSERT INTO public.moon VALUES (18, 'Talos', 'Talos es una luna ficticia en relación con TRAPPIST-1e.', 12, true);
INSERT INTO public.moon VALUES (19, 'Deimos', 'Deimos es una luna marciana pequeña y tiene una órbita cercana a Marte.', 4, true);
INSERT INTO public.moon VALUES (20, 'Calisto', 'Calisto es una luna de Júpiter con una antigua superficie llena de cráteres.', 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 48, 1, 'El planeta mas cercano al sol');
INSERT INTO public.planet VALUES (2, 'Venus', 261, 1, 'El mas caliente del sistema');
INSERT INTO public.planet VALUES (3, 'Tierra', 0, 2, 'Nuestro planeta');
INSERT INTO public.planet VALUES (4, 'Marte', 140, 2, 'El nombre del Dios de la Guerra');
INSERT INTO public.planet VALUES (5, 'Júpiter', 365, 5, 'Júpiter es el planeta más grande del sistema solar con una gran mancha roja en su atmósfera.');
INSERT INTO public.planet VALUES (6, 'Saturno', 746, 6, 'Saturno es conocido por sus icónicos anillos compuestos por fragmentos de hielo y roca.');
INSERT INTO public.planet VALUES (7, 'Urano', 1635, 1, 'Urano es un planeta inclinado, girando de lado en comparación con otros planetas.');
INSERT INTO public.planet VALUES (8, 'Neptuno', 2756, 3, 'Neptuno es un planeta gaseoso con vientos extremadamente rápidos y una luna llamada Tritón.');
INSERT INTO public.planet VALUES (9, 'Plutón', 4670, 2, 'Plutón es un planeta enano con una superficie helada y un corazón definido en su superficie.');
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 1400, 4, 'Kepler-452b es un exoplaneta descubierto por el telescopio Kepler, considerado un "primo" de la Tierra.');
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 153, 5, 'HD 209458 b, llamado "Osiris", es un exoplaneta conocido por su atmósfera evaporándose debido a la radiación.');
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 39, 6, 'TRAPPIST-1e es uno de los siete planetas que orbitan alrededor de la estrella enana fría TRAPPIST-1.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sol', 4.60, 1);
INSERT INTO public.star VALUES (2, 2, 'Sirio', 20.00, 8);
INSERT INTO public.star VALUES (3, 3, 'Vega', 45.00, 25);
INSERT INTO public.star VALUES (4, 4, 'Arturo', 7.10, 37);
INSERT INTO public.star VALUES (5, 5, 'Rigel', 9.00, 860);
INSERT INTO public.star VALUES (6, 6, 'Antares', 10.00, 550);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_key UNIQUE (distance);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_age_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_key UNIQUE (age_in_millions);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_key UNIQUE (age_in_millions);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


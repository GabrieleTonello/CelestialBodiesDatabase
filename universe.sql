--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    distance_from_earth integer,
    size_in_ly integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer,
    size_in_ly numeric,
    number_planet integer,
    number_solar_systems integer,
    name character varying(30) NOT NULL
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
    age integer,
    is_spherical boolean,
    planet_id integer,
    duration_day integer,
    name character varying(30) NOT NULL
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
    description text,
    age integer,
    has_life boolean,
    star_id integer,
    number_habitants integer,
    avg_temperature integer,
    duration_day integer,
    duration_year integer,
    has_magnetic_field boolean,
    is_habitable_zone boolean,
    name character varying(30) NOT NULL
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
-- Name: solar_systems; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_systems (
    solar_systems_id integer NOT NULL,
    age integer,
    number_of_planets integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.solar_systems OWNER TO freecodecamp;

--
-- Name: solar_systems_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_systems_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_systems_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_systems_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_systems_solar_system_id_seq OWNED BY public.solar_systems.solar_systems_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age integer,
    galaxy_id integer,
    radius_in_km integer,
    name character varying(30) NOT NULL
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


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
-- Name: solar_systems solar_systems_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems ALTER COLUMN solar_systems_id SET DEFAULT nextval('public.solar_systems_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, NULL, 200, 'black_hole1');
INSERT INTO public.black_holes VALUES (2, NULL, 250, 'black_hole2');
INSERT INTO public.black_holes VALUES (3, NULL, 50, 'black_hole3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 250, NULL, 300, NULL, 'Via lactea');
INSERT INTO public.galaxy VALUES (2, 490, NULL, 800, NULL, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 300, NULL, 109, NULL, 'galaxy3');
INSERT INTO public.galaxy VALUES (4, 276, NULL, 90, NULL, 'galaxy4');
INSERT INTO public.galaxy VALUES (5, 11, NULL, 34, NULL, 'galaxy5');
INSERT INTO public.galaxy VALUES (6, 9832, NULL, 43389, NULL, 'galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 20, NULL, NULL, NULL, 'luna');
INSERT INTO public.moon VALUES (2, 43, NULL, NULL, NULL, 'europa');
INSERT INTO public.moon VALUES (3, 23, NULL, NULL, NULL, 'moon3');
INSERT INTO public.moon VALUES (4, 34, NULL, NULL, NULL, 'moon4');
INSERT INTO public.moon VALUES (5, 443, NULL, NULL, NULL, 'moon5');
INSERT INTO public.moon VALUES (6, 433, NULL, NULL, NULL, 'moon6');
INSERT INTO public.moon VALUES (7, 340, NULL, NULL, NULL, 'moon7');
INSERT INTO public.moon VALUES (8, 98, NULL, NULL, NULL, 'moon8');
INSERT INTO public.moon VALUES (9, 77, NULL, NULL, NULL, 'moon9');
INSERT INTO public.moon VALUES (10, 498, NULL, NULL, NULL, 'moon10');
INSERT INTO public.moon VALUES (11, 220, NULL, NULL, NULL, 'moon11');
INSERT INTO public.moon VALUES (12, 343, NULL, NULL, NULL, 'moon12');
INSERT INTO public.moon VALUES (13, 623, NULL, NULL, NULL, 'moon13');
INSERT INTO public.moon VALUES (14, 324, NULL, NULL, NULL, 'moon14');
INSERT INTO public.moon VALUES (15, 4432, NULL, NULL, NULL, 'moon15');
INSERT INTO public.moon VALUES (16, 4343, NULL, NULL, NULL, 'moon16');
INSERT INTO public.moon VALUES (17, 3840, NULL, NULL, NULL, 'moon17');
INSERT INTO public.moon VALUES (18, 298, NULL, NULL, NULL, 'moon18');
INSERT INTO public.moon VALUES (19, 277, NULL, NULL, NULL, 'moon19');
INSERT INTO public.moon VALUES (20, 4958, NULL, NULL, NULL, 'moon20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terra');
INSERT INTO public.planet VALUES (2, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jupiter');
INSERT INTO public.planet VALUES (3, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mars');
INSERT INTO public.planet VALUES (4, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mercury');
INSERT INTO public.planet VALUES (5, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Saturn');
INSERT INTO public.planet VALUES (6, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uranus');
INSERT INTO public.planet VALUES (7, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venus');
INSERT INTO public.planet VALUES (8, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'planet_xxx');
INSERT INTO public.planet VALUES (9, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'planet_234');
INSERT INTO public.planet VALUES (10, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Neputune');
INSERT INTO public.planet VALUES (11, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'planet23');
INSERT INTO public.planet VALUES (12, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepler232b');
INSERT INTO public.planet VALUES (13, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kepler324bb');
INSERT INTO public.planet VALUES (14, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kepler0394jr39');
INSERT INTO public.planet VALUES (15, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kepler03as3l');


--
-- Data for Name: solar_systems; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_systems VALUES (1, 324, NULL, 'solar system');
INSERT INTO public.solar_systems VALUES (2, 344, NULL, 'solar system 2');
INSERT INTO public.solar_systems VALUES (3, 434, NULL, 'solar system 3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 23, NULL, NULL, 'Sun');
INSERT INTO public.star VALUES (2, 34, NULL, NULL, 'star2');
INSERT INTO public.star VALUES (3, 43, NULL, NULL, 'star3');
INSERT INTO public.star VALUES (4, 90, NULL, NULL, 'star4');
INSERT INTO public.star VALUES (5, 323, NULL, NULL, 'star5');
INSERT INTO public.star VALUES (6, 890, NULL, NULL, 'star6');


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: solar_systems_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_systems_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_systems solar_systems_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems
    ADD CONSTRAINT solar_systems_name_key UNIQUE (name);


--
-- Name: solar_systems solar_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_systems
    ADD CONSTRAINT solar_systems_pkey PRIMARY KEY (solar_systems_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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


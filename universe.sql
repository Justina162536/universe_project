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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    size integer,
    distance_from_earth numeric(6,1),
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL
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
-- Name: mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mission (
    mission_id integer NOT NULL,
    name character varying(20),
    target_type text NOT NULL
);


ALTER TABLE public.mission OWNER TO freecodecamp;

--
-- Name: mission_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mission_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mission_mission_id_seq OWNER TO freecodecamp;

--
-- Name: mission_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mission_mission_id_seq OWNED BY public.mission.mission_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    size integer,
    distance_from_earth numeric(6,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL
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
    age integer,
    size integer,
    distance_from_earth numeric(6,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    size integer,
    distance_from_earth numeric(6,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mission mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission ALTER COLUMN mission_id SET DEFAULT nextval('public.mission_mission_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 100000, 0.0, 'Our home galaxy', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 14000, 110000, 2537.0, 'Nearest major galaxy', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 60000, 3000.5, 'Part of the Local Group', false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 10000, 50000, 23000.2, 'Known for spiral shape', false, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 60000, 29000.6, 'Bright nucleus', false, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 7000, 45000, 50000.1, 'Ring-shaped galaxy', false, false);


--
-- Data for Name: mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mission VALUES (1, 'misija1', 'tikslas1');
INSERT INTO public.mission VALUES (2, 'misija2', 'tikslas2');
INSERT INTO public.mission VALUES (3, 'misija3', 'tikslas3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon_1', 1566, 4107, 799.7, 'Description of moon 1', false, false, 7);
INSERT INTO public.moon VALUES (2, 'Moon_2', 2366, 3963, 1209.6, 'Description of moon 2', false, true, 6);
INSERT INTO public.moon VALUES (3, 'Moon_3', 2394, 2822, 3322.2, 'Description of moon 3', true, true, 1);
INSERT INTO public.moon VALUES (4, 'Moon_4', 1571, 1341, 306.3, 'Description of moon 4', false, true, 9);
INSERT INTO public.moon VALUES (5, 'Moon_5', 2733, 3057, 1687.6, 'Description of moon 5', true, true, 4);
INSERT INTO public.moon VALUES (6, 'Moon_6', 3465, 1101, 3733.2, 'Description of moon 6', true, true, 10);
INSERT INTO public.moon VALUES (7, 'Moon_7', 1416, 3492, 1263.4, 'Description of moon 7', true, true, 8);
INSERT INTO public.moon VALUES (8, 'Moon_8', 3236, 2337, 1842.6, 'Description of moon 8', true, true, 5);
INSERT INTO public.moon VALUES (9, 'Moon_9', 2747, 2404, 1992.4, 'Description of moon 9', false, false, 2);
INSERT INTO public.moon VALUES (10, 'Moon_10', 2718, 2793, 146.6, 'Description of moon 10', false, false, 6);
INSERT INTO public.moon VALUES (11, 'Moon_11', 3929, 2548, 2882.5, 'Description of moon 11', false, true, 7);
INSERT INTO public.moon VALUES (12, 'Moon_12', 3449, 1652, 393.3, 'Description of moon 12', true, false, 3);
INSERT INTO public.moon VALUES (13, 'Moon_13', 3895, 3100, 280.4, 'Description of moon 13', true, true, 11);
INSERT INTO public.moon VALUES (14, 'Moon_14', 1812, 3636, 693.5, 'Description of moon 14', false, true, 1);
INSERT INTO public.moon VALUES (15, 'Moon_15', 3529, 1442, 663.3, 'Description of moon 15', false, true, 11);
INSERT INTO public.moon VALUES (16, 'Moon_16', 3672, 2652, 1859.7, 'Description of moon 16', true, false, 9);
INSERT INTO public.moon VALUES (17, 'Moon_17', 3858, 3900, 1372.6, 'Description of moon 17', true, true, 4);
INSERT INTO public.moon VALUES (18, 'Moon_18', 1585, 4222, 114.4, 'Description of moon 18', false, false, 2);
INSERT INTO public.moon VALUES (19, 'Moon_19', 1064, 3803, 2131.7, 'Description of moon 19', false, true, 8);
INSERT INTO public.moon VALUES (20, 'Moon_20', 3742, 4550, 3666.1, 'Description of moon 20', true, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet_1', 3729, 19087, 9235.1, 'Description of planet 1', true, true, 4);
INSERT INTO public.planet VALUES (2, 'Planet_2', 4280, 37537, 5171.7, 'Description of planet 2', false, true, 6);
INSERT INTO public.planet VALUES (3, 'Planet_3', 2368, 52460, 8851.0, 'Description of planet 3', false, false, 2);
INSERT INTO public.planet VALUES (4, 'Planet_4', 2675, 71520, 839.6, 'Description of planet 4', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Planet_5', 3785, 69293, 3700.8, 'Description of planet 5', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Planet_6', 3630, 32613, 7010.0, 'Description of planet 6', false, true, 3);
INSERT INTO public.planet VALUES (7, 'Planet_7', 3603, 73701, 411.8, 'Description of planet 7', false, true, 4);
INSERT INTO public.planet VALUES (8, 'Planet_8', 3132, 50113, 9396.6, 'Description of planet 8', false, false, 5);
INSERT INTO public.planet VALUES (9, 'Planet_9', 2627, 31547, 4287.5, 'Description of planet 9', false, true, 2);
INSERT INTO public.planet VALUES (10, 'Planet_10', 2480, 31434, 1130.2, 'Description of planet 10', true, false, 6);
INSERT INTO public.planet VALUES (11, 'Planet_11', 4843, 68719, 9316.2, 'Description of planet 11', true, false, 6);
INSERT INTO public.planet VALUES (12, 'Planet_12', 1656, 46456, 801.4, 'Description of planet 12', true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1, 0.0, 'The star of our solar system', true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4500, 1, 4.2, 'Closest known star to the Sun', false, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 242, 2, 8.6, 'Brightest star in the night sky', false, true, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10000, 887, 642.5, 'Red supergiant in Orion', false, true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8000, 70, 860.0, 'Blue supergiant in Orion', false, true, 2);
INSERT INTO public.star VALUES (6, 'Vega', 455, 2, 25.0, 'Part of the Lyra constellation', false, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: mission_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mission_mission_id_seq', 1, false);


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
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mission mission_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_name_unique UNIQUE (name);


--
-- Name: mission mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (mission_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


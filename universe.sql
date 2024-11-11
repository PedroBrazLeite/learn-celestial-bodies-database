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
    name character varying(50) NOT NULL,
    years integer,
    size numeric(10,2),
    color character(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_planet numeric(10,2),
    planet_id integer,
    color character(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    have_water boolean,
    habitants integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_description (
    planet_description_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet_description OWNER TO freecodecamp;

--
-- Name: planet_description_planet_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_description_planet_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_description_planet_description_id_seq OWNER TO freecodecamp;

--
-- Name: planet_description_planet_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_description_planet_description_id_seq OWNED BY public.planet_description.planet_description_id;


--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_central boolean,
    galaxy_id integer,
    color character(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: planet_description planet_description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_description ALTER COLUMN planet_description_id SET DEFAULT nextval('public.planet_description_planet_description_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ANDROMEDA', 300000, 220.00, 'black                         ');
INSERT INTO public.galaxy VALUES (2, 'BLACK EYE', 200000, 52.96, 'black                         ');
INSERT INTO public.galaxy VALUES (3, 'CIGAR', 10000, 37.00, 'red                           ');
INSERT INTO public.galaxy VALUES (4, 'HOAG', 400000, 121.00, 'black                         ');
INSERT INTO public.galaxy VALUES (5, 'MILKY WAY', 35000, 105.70, 'purple                        ');
INSERT INTO public.galaxy VALUES (6, 'MAGELLANIC', 10000, 14.00, 'purple                        ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400.00, 3, 'grey                ');
INSERT INTO public.moon VALUES (2, 'Phobos', 9376.00, 4, 'red                 ');
INSERT INTO public.moon VALUES (3, 'Deimos', 23460.00, 4, 'grey                ');
INSERT INTO public.moon VALUES (4, 'Io', 421700.00, 5, 'yellow              ');
INSERT INTO public.moon VALUES (5, 'Europa', 671100.00, 5, 'white               ');
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070400.00, 5, 'grey                ');
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700.00, 5, 'brown               ');
INSERT INTO public.moon VALUES (8, 'Titan', 1222000.00, 6, 'orange              ');
INSERT INTO public.moon VALUES (9, 'Rhea', 527040.00, 6, 'grey                ');
INSERT INTO public.moon VALUES (10, 'Iapetus', 3560820.00, 6, 'black               ');
INSERT INTO public.moon VALUES (11, 'Oberon', 583520.00, 7, 'grey                ');
INSERT INTO public.moon VALUES (12, 'Titania', 436300.00, 7, 'red                 ');
INSERT INTO public.moon VALUES (13, 'Triton', 354759.00, 8, 'grey                ');
INSERT INTO public.moon VALUES (14, 'Nereid', 5513818.00, 8, 'grey                ');
INSERT INTO public.moon VALUES (15, 'Zorun', 500000.00, 9, 'blue                ');
INSERT INTO public.moon VALUES (16, 'Kralex', 750000.00, 10, 'green               ');
INSERT INTO public.moon VALUES (17, 'Threx', 800000.00, 11, 'purple              ');
INSERT INTO public.moon VALUES (18, 'Noxo', 200000.00, 12, 'red                 ');
INSERT INTO public.moon VALUES (19, 'Krelum', 900000.00, 9, 'green               ');
INSERT INTO public.moon VALUES (20, 'Nexa', 700000.00, 11, 'blue                ');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'MERCURY', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'VENUS', false, 0, 1);
INSERT INTO public.planet VALUES (3, 'EARTH', true, 80000000, 1);
INSERT INTO public.planet VALUES (4, 'MARS', false, 0, 1);
INSERT INTO public.planet VALUES (5, 'JUPITER', false, 0, 1);
INSERT INTO public.planet VALUES (6, 'SATURN', false, 0, 1);
INSERT INTO public.planet VALUES (7, 'URANUS', false, 0, 1);
INSERT INTO public.planet VALUES (8, 'NEPTUNE', false, 0, 1);
INSERT INTO public.planet VALUES (9, 'ZELTOR', true, 500000, 2);
INSERT INTO public.planet VALUES (10, 'KRYPTON', false, 0, 3);
INSERT INTO public.planet VALUES (11, 'THRA', true, 12000, 4);
INSERT INTO public.planet VALUES (12, 'NABOO', true, 450000, 5);


--
-- Data for Name: planet_description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_description VALUES (1, 'The fourth planet from the Sun, known for its red color and potential for past life.', 'MARS');
INSERT INTO public.planet_description VALUES (2, 'The largest planet in our solar system, famous for its Great Red Spot and numerous moons.', 'JUPITER');
INSERT INTO public.planet_description VALUES (3, 'The sixth planet from the Sun, distinguished by its stunning ring system.', 'SATURN');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'CASSIA', true, 6, 'pink                ');
INSERT INTO public.star VALUES (2, 'SUN', true, 1, 'yellow              ');
INSERT INTO public.star VALUES (3, 'PET', false, 3, 'gray                ');
INSERT INTO public.star VALUES (4, 'FRED', true, 4, 'green               ');
INSERT INTO public.star VALUES (5, 'DUDU', false, 2, 'black               ');
INSERT INTO public.star VALUES (6, 'PEBO', true, 5, 'blue                ');


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 6, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 20, true);


--
-- Name: planet_description_planet_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_description_planet_description_id_seq', 3, true);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 12, true);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_description planet_description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_description
    ADD CONSTRAINT planet_description_pkey PRIMARY KEY (planet_description_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet_description unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_description
    ADD CONSTRAINT unique_description UNIQUE (description);


--
-- Name: galaxy unique_galaxyname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxyname UNIQUE (name);


--
-- Name: moon unique_moonname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moonname UNIQUE (name);


--
-- Name: planet unique_planetname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planetname UNIQUE (name);


--
-- Name: star unique_starname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_starname UNIQUE (name);


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
-- Name: planet_description fk_planetname; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_description
    ADD CONSTRAINT fk_planetname FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


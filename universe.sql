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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    test1 integer,
    test2 integer,
    name character varying(10),
    test3 character varying(10),
    test4 character varying(10) NOT NULL,
    test5 character varying(10) NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    lovers integer NOT NULL,
    unique_col integer NOT NULL,
    fav_col character varying(10)
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
    name character varying(20),
    color text NOT NULL,
    home_planet character varying(10) NOT NULL,
    temperature integer NOT NULL,
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
    name character varying(20),
    in_solar_system boolean,
    has_life boolean,
    radius_in_mm numeric(1000,5),
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
    name character varying(20),
    age_in_millions numeric(1000,2),
    galaxy_id integer NOT NULL,
    test integer
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, NULL, 1, '1', '1', '1', '1');
INSERT INTO public.extra VALUES (2, NULL, 1, '1', '2', '1', '1');
INSERT INTO public.extra VALUES (3, NULL, 1, '1', '3', '1', '1');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 1, 1, '1');
INSERT INTO public.galaxy VALUES (2, 'ANDRO', 2, 2, '2');
INSERT INTO public.galaxy VALUES (3, 'Third', 3, 3, '3');
INSERT INTO public.galaxy VALUES (4, 'Fourth', 4, 4, '4');
INSERT INTO public.galaxy VALUES (5, 'Fifth', 5, 5, '5');
INSERT INTO public.galaxy VALUES (6, 'Sixth', 6, 6, '6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon', 'grey', 'earth', 0, 1);
INSERT INTO public.moon VALUES (3, '2', 'grey', '2', 0, 2);
INSERT INTO public.moon VALUES (4, '3', 'grey', '3', 0, 2);
INSERT INTO public.moon VALUES (5, '4', 'grey', '3', 0, 2);
INSERT INTO public.moon VALUES (6, '5', 'grey', '3', 0, 2);
INSERT INTO public.moon VALUES (7, '6', 'grey', '3', 0, 2);
INSERT INTO public.moon VALUES (8, '7', 'grey', '3', 0, 2);
INSERT INTO public.moon VALUES (9, '9', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (10, '10', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (11, '11', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (12, '12', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (13, '13', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (14, '14', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (15, '15', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (16, '16', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (17, '17', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (18, '18', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (19, '19', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (20, '20', 'grey', '2', 0, 3);
INSERT INTO public.moon VALUES (21, '21', 'grey', '2', 0, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 0.63000, 1);
INSERT INTO public.planet VALUES (2, '2', false, false, 0.63000, 2);
INSERT INTO public.planet VALUES (3, '3', false, false, 0.63000, 3);
INSERT INTO public.planet VALUES (4, '4', false, false, 0.63000, 4);
INSERT INTO public.planet VALUES (5, '5', false, false, 0.63000, 5);
INSERT INTO public.planet VALUES (6, '6', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (7, '7', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (8, '8', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (9, '9', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (10, '10', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (11, '11', false, false, 0.63000, 6);
INSERT INTO public.planet VALUES (12, '12', false, false, 0.63000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 460.00, 1, 1);
INSERT INTO public.star VALUES (2, 'Second', 2.00, 2, 1);
INSERT INTO public.star VALUES (3, 'Third', 3.00, 3, 1);
INSERT INTO public.star VALUES (4, 'Fourth', 4.00, 4, 1);
INSERT INTO public.star VALUES (5, 'Fifth', 4.00, 5, 1);
INSERT INTO public.star VALUES (6, 'Sixth', 4.00, 6, 1);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: extra extra_test3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_test3_key UNIQUE (test3);


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
-- Name: galaxy galaxy_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_col_key UNIQUE (unique_col);


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


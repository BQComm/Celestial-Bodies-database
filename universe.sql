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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    height_in_km integer,
    width_in_km integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    num_of_planets numeric,
    type_of_star text,
    distance_from_earth integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Argos', 1, 111111, 2222222);
INSERT INTO public.asteroid VALUES (2, 'Kaputt', 2, 11111111, 2222222);
INSERT INTO public.asteroid VALUES (3, 'Makima', 3, 1111111, 2222222);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Prurito', 3, 111111, 123);
INSERT INTO public.galaxy VALUES (2, 'Poopy', 2, 222222, 456);
INSERT INTO public.galaxy VALUES (3, 'Ceres', 4, 333333, 789);
INSERT INTO public.galaxy VALUES (4, 'Silly', 1, 4444444, 123);
INSERT INTO public.galaxy VALUES (5, 'Amongee', 6, 555555, 456);
INSERT INTO public.galaxy VALUES (6, 'Athena', 5, 666666, 789);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Silly_Moon', 1, 2222222, 456, false);
INSERT INTO public.moon VALUES (2, 'Bathroom', 10, 33333333, 789, true);
INSERT INTO public.moon VALUES (3, 'Rocky', 3, 555555, 123, true);
INSERT INTO public.moon VALUES (4, 'Oby', 4, 666666, 456, true);
INSERT INTO public.moon VALUES (5, 'Chanel', 5, 555555, 123, true);
INSERT INTO public.moon VALUES (6, 'Stormy', 3, 6666666, 456, true);
INSERT INTO public.moon VALUES (7, 'Goliat', 4, 7777777, 789, true);
INSERT INTO public.moon VALUES (8, 'Gotita', 5, 888888, 231, true);
INSERT INTO public.moon VALUES (9, 'Kurko', 2, 999999, 456, true);
INSERT INTO public.moon VALUES (10, 'Zeke', 7, 10000000, 789, false);
INSERT INTO public.moon VALUES (11, 'Potato', 12, 2222222, 456, false);
INSERT INTO public.moon VALUES (12, 'Kenny', 9, 33333333, 789, false);
INSERT INTO public.moon VALUES (13, 'Denji', 7, 555555, 123, true);
INSERT INTO public.moon VALUES (14, 'Kohta', 8, 666666, 456, true);
INSERT INTO public.moon VALUES (15, 'Marley', 11, 555555, 123, false);
INSERT INTO public.moon VALUES (16, 'Rose', 6, 6666666, 456, true);
INSERT INTO public.moon VALUES (17, 'Maria', 12, 7777777, 789, true);
INSERT INTO public.moon VALUES (18, 'Sina', 6, 888888, 231, true);
INSERT INTO public.moon VALUES (19, 'Prince', 11, 999999, 456, true);
INSERT INTO public.moon VALUES (20, 'PunPun', 7, 10000000, 789, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet Silly', 1, 1111111, 123, true);
INSERT INTO public.planet VALUES (4, 'Happy', 1, 4444444, 456, true);
INSERT INTO public.planet VALUES (2, 'Angela', 6, 2222222, 456, false);
INSERT INTO public.planet VALUES (3, 'Isabel', 6, 33333333, 789, false);
INSERT INTO public.planet VALUES (5, 'Rox', 5, 555555, 123, false);
INSERT INTO public.planet VALUES (6, 'Trost', 5, 666666, 456, false);
INSERT INTO public.planet VALUES (7, 'Madara', 4, 777777, 789, true);
INSERT INTO public.planet VALUES (8, 'Oney', 2, 2222222, 456, false);
INSERT INTO public.planet VALUES (9, 'August', 3, 33333333, 789, false);
INSERT INTO public.planet VALUES (10, 'Piss', 2, 555555, 123, true);
INSERT INTO public.planet VALUES (11, 'Origami', 4, 666666, 456, false);
INSERT INTO public.planet VALUES (12, 'JohanII', 3, 777777, 789, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Silly star', 4, 2, 'white dwarf', 111111, 123);
INSERT INTO public.star VALUES (2, 'Apple', 2, 2, 'yellow giant', 222222, 456);
INSERT INTO public.star VALUES (3, 'DOA', 1, 2, 'red supergiant', 333333, 789);
INSERT INTO public.star VALUES (4, 'Kepler', 3, 2, 'brown dwarf', 444444, 123);
INSERT INTO public.star VALUES (5, 'Ymir', 6, 2, 'blue giant', 555555, 456);
INSERT INTO public.star VALUES (6, 'Zero', 5, 2, 'sub-dwarf', 666666, 789);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_num_of_stars_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_num_of_stars_key UNIQUE (star_id);


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
-- Name: asteroid name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT name_constraint UNIQUE (name);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


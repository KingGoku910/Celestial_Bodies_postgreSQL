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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id numeric NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    dist_from_sun_light_years numeric NOT NULL,
    num_of_planets character varying(30) NOT NULL,
    age character varying(50) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id numeric NOT NULL,
    dist_from_earth_in_km integer NOT NULL,
    dist_from_sun_km numeric NOT NULL,
    planet_id numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id numeric NOT NULL,
    num_of_moons integer NOT NULL,
    is_a_star boolean NOT NULL,
    dist_from_sun numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    owned_by character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id numeric NOT NULL,
    dist_from_earth_in_km integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_a_planet boolean NOT NULL,
    dist_from_sun numeric NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Spiral', 27000, '10 Trillion', '13600 Million Years');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Spiral', 2900000, '1', '10100 Million Years');
INSERT INTO public.galaxy VALUES ('Black Eye', 3, 'Spiral', 17000000, '0', '13280 Million Years');
INSERT INTO public.galaxy VALUES ('Sombrero', 4, 'Elliptical', 400300000, '9', '13250 Million Years');
INSERT INTO public.galaxy VALUES ('Whirlpool', 5, 'Spiral', 40000000, '4000', '400 million');
INSERT INTO public.galaxy VALUES ('Cigar', 6, 'Starburst', 12000000, '3397', '13300  Million');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 385, 150000, 1);
INSERT INTO public.moon VALUES ('Dactyl', 2, 3900, 150000, 4);
INSERT INTO public.moon VALUES ('Charon', 3, 27000, 150000, 9);
INSERT INTO public.moon VALUES ('Atlas', 4, 403000, 150000, 6);
INSERT INTO public.moon VALUES ('Hyperion', 5, 403000, 150000, 6);
INSERT INTO public.moon VALUES ('Mimas', 6, 403000, 150000, 6);
INSERT INTO public.moon VALUES ('Ipetus', 7, 403000, 150000, 6);
INSERT INTO public.moon VALUES ('Pan', 8, 6, 403000, 150000);
INSERT INTO public.moon VALUES ('Nereid', 9, 8, 63000000, 150000);
INSERT INTO public.moon VALUES ('Callisto', 10, 5, 10000000, 150000);
INSERT INTO public.moon VALUES ('Phobos', 11, 4, 5000000, 150000);
INSERT INTO public.moon VALUES ('Ganymede', 12, 5, 10000000, 150000);
INSERT INTO public.moon VALUES ('Miranda', 13, 7, 12000000, 150000);
INSERT INTO public.moon VALUES ('Epimetheus', 14, 6, 403000, 150000);
INSERT INTO public.moon VALUES ('Janus', 15, 6, 403000, 150000);
INSERT INTO public.moon VALUES ('Triton', 16, 8, 10000000, 150000);
INSERT INTO public.moon VALUES ('Titan', 17, 6, 403000, 150000);
INSERT INTO public.moon VALUES ('IO', 18, 5, 10000000, 150000);
INSERT INTO public.moon VALUES ('Rhea', 19, 6, 403000, 150000);
INSERT INTO public.moon VALUES ('Europa', 20, 5, 10000000, 150000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, false, 1, 4500);
INSERT INTO public.planet VALUES ('Mercury', 2, 0, false, 1, 4500);
INSERT INTO public.planet VALUES ('Venus', 3, 0, false, 1, 4500);
INSERT INTO public.planet VALUES ('Mars', 4, 2, false, 2, 4600);
INSERT INTO public.planet VALUES ('Jupiter', 5, 80, false, 5, 4600);
INSERT INTO public.planet VALUES ('Saturn', 6, 83, false, 10, 4500);
INSERT INTO public.planet VALUES ('Uranus', 7, 27, false, 20, 4500);
INSERT INTO public.planet VALUES ('Neptune', 8, 14, false, 30, 4500);
INSERT INTO public.planet VALUES ('Pluto', 9, 5, false, 40, 4600);
INSERT INTO public.planet VALUES ('Eris', 10, 1, false, 68, 4500);
INSERT INTO public.planet VALUES ('Ceres', 11, 0, false, 2.8, 4600);
INSERT INTO public.planet VALUES ('Haumea', 12, 2, false, 45, 4500);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'Sputnik 1', 'Soviet Union', NULL);
INSERT INTO public.satelite VALUES (2, 'ISS', 'NASA', NULL);
INSERT INTO public.satelite VALUES (3, 'Echo 1', 'NASA', NULL);
INSERT INTO public.satelite VALUES (4, 'Satcom', 'BSS', NULL);
INSERT INTO public.satelite VALUES (5, 'Explorer 1', 'NASA', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('betelgeuse', 1, 643, 10, false, 643, 'I am a star');
INSERT INTO public.star VALUES ('alpheratz', 2, 97, 60, false, 97, 'I am a star');
INSERT INTO public.star VALUES ('vega', 3, 25, 455, false, 25, 'I am a star');
INSERT INTO public.star VALUES ('spica', 4, 261, 455, false, 261, 'I am a star');
INSERT INTO public.star VALUES ('capella', 5, 43, 600, false, 43, 'I am a star');
INSERT INTO public.star VALUES ('sn2014j', 6, 11500000, 20, false, 11500000, 'I am a star');


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
-- Name: galaxy order_galaxies; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT order_galaxies UNIQUE (name);


--
-- Name: moon order_moons; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT order_moons UNIQUE (name);


--
-- Name: planet order_planets; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT order_planets UNIQUE (name);


--
-- Name: star order_stars; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT order_stars UNIQUE (star_id);


--
-- Name: satelite order_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT order_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: satelite order_galaxies_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT order_galaxies_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


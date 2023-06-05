{\rtf1\ansi\ansicpg1252\cocoartf2578
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --\
-- PostgreSQL database dump\
--\
\
-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
DROP DATABASE universe;\
--\
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp\
--\
\
CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';\
\
\
ALTER DATABASE universe OWNER TO freecodecamp;\
\
\\connect universe\
\
SET statement_timeout = 0;\
SET lock_timeout = 0;\
SET idle_in_transaction_session_timeout = 0;\
SET client_encoding = 'UTF8';\
SET standard_conforming_strings = on;\
SELECT pg_catalog.set_config('search_path', '', false);\
SET check_function_bodies = false;\
SET xmloption = content;\
SET client_min_messages = warning;\
SET row_security = off;\
\
SET default_tablespace = '';\
\
SET default_table_access_method = heap;\
\
--\
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.galaxy (\
    galaxy_id integer NOT NULL,\
    name character varying(40) NOT NULL,\
    is_spherical boolean NOT NULL,\
    age_in_millions_of_stars integer,\
    description text,\
    galaxy_types character varying(50),\
    num_black_holes numeric\
);\
\
\
ALTER TABLE public.galaxy OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.galaxy_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;\
\
\
--\
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.moon (\
    moon_id integer NOT NULL,\
    name character varying(40) NOT NULL,\
    distance_from_earth integer,\
    planet_id integer NOT NULL,\
    color character varying(40)\
);\
\
\
ALTER TABLE public.moon OWNER TO freecodecamp;\
\
--\
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.moon_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;\
\
\
--\
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.planet (\
    planet_id integer NOT NULL,\
    name character varying(40) NOT NULL,\
    has_life boolean,\
    planet_types character varying(50) NOT NULL,\
    description text,\
    star_id integer\
);\
\
\
ALTER TABLE public.planet OWNER TO freecodecamp;\
\
--\
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.planet_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;\
\
\
--\
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.star (\
    star_id integer NOT NULL,\
    name character varying(40) NOT NULL,\
    distance_from_earth integer NOT NULL,\
    description text,\
    galaxy_id integer\
);\
\
\
ALTER TABLE public.star OWNER TO freecodecamp;\
\
--\
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.star_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.star_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;\
\
\
--\
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp\
--\
\
CREATE TABLE public.universe (\
    universe_id integer NOT NULL,\
    name character varying(40) NOT NULL,\
    description text\
);\
\
\
ALTER TABLE public.universe OWNER TO freecodecamp;\
\
--\
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\
--\
\
CREATE SEQUENCE public.universe_universe_id_seq\
    AS integer\
    START WITH 1\
    INCREMENT BY 1\
    NO MINVALUE\
    NO MAXVALUE\
    CACHE 1;\
\
\
ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;\
\
--\
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\
--\
\
ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;\
\
\
--\
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);\
\
\
--\
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);\
\
\
--\
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);\
\
\
--\
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);\
\
\
--\
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);\
\
\
--\
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.galaxy VALUES (2, 'Sirup', false, 200, NULL, 'Type2', NULL);\
INSERT INTO public.galaxy VALUES (3, 'Hegel', false, 350, NULL, 'Type5', NULL);\
INSERT INTO public.galaxy VALUES (4, 'Mariot', true, 130, NULL, 'Type2', NULL);\
INSERT INTO public.galaxy VALUES (5, 'Clown', false, 200, NULL, 'Type3', NULL);\
INSERT INTO public.galaxy VALUES (6, 'Bach', false, 350, NULL, 'Type5', NULL);\
INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 1000, 'Galaxy where planet Earth is located', 'Type1', NULL);\
\
\
--\
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.moon VALUES (1, 'Tito', NULL, 1, NULL);\
INSERT INTO public.moon VALUES (2, 'Pepe', NULL, 2, NULL);\
INSERT INTO public.moon VALUES (3, 'Mario', NULL, 4, NULL);\
INSERT INTO public.moon VALUES (4, 'Luigi', NULL, 5, NULL);\
INSERT INTO public.moon VALUES (5, 'Sandy', NULL, 2, NULL);\
INSERT INTO public.moon VALUES (6, 'Muray', NULL, 1, NULL);\
INSERT INTO public.moon VALUES (7, 'Armon', NULL, 2, NULL);\
INSERT INTO public.moon VALUES (8, 'Nicola', NULL, 3, NULL);\
INSERT INTO public.moon VALUES (9, 'Duna', NULL, 1, NULL);\
INSERT INTO public.moon VALUES (10, 'Hone', NULL, 4, NULL);\
INSERT INTO public.moon VALUES (11, 'Bould', NULL, 1, NULL);\
INSERT INTO public.moon VALUES (12, 'Fulty', NULL, 4, NULL);\
INSERT INTO public.moon VALUES (13, 'Guile', NULL, 2, NULL);\
INSERT INTO public.moon VALUES (14, 'Uiri', NULL, 1, NULL);\
INSERT INTO public.moon VALUES (15, 'Doul', NULL, 3, NULL);\
INSERT INTO public.moon VALUES (16, 'Yumi', NULL, 5, NULL);\
INSERT INTO public.moon VALUES (17, 'Nuko', NULL, 5, NULL);\
INSERT INTO public.moon VALUES (18, 'Lois', NULL, 2, NULL);\
INSERT INTO public.moon VALUES (19, 'Soil', NULL, 4, NULL);\
INSERT INTO public.moon VALUES (20, 'Xilu', NULL, 2, NULL);\
\
\
--\
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.planet VALUES (1, 'Mercury', false, 'Small', NULL, 3);\
INSERT INTO public.planet VALUES (2, 'Venus', false, 'Small', NULL, 3);\
INSERT INTO public.planet VALUES (3, 'Earth', true, 'Medium', NULL, 2);\
INSERT INTO public.planet VALUES (4, 'Mars', true, 'Small', NULL, 1);\
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Big', NULL, 5);\
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 'Big', NULL, 2);\
INSERT INTO public.planet VALUES (7, 'Urano', false, 'Medium', NULL, 4);\
INSERT INTO public.planet VALUES (8, 'Neptuno', false, 'Medium', NULL, 6);\
INSERT INTO public.planet VALUES (9, 'Pluton', false, 'Small', NULL, 1);\
INSERT INTO public.planet VALUES (10, 'Micron', true, 'Small', NULL, 4);\
INSERT INTO public.planet VALUES (11, 'Magnet', false, 'Medium', NULL, 6);\
INSERT INTO public.planet VALUES (12, 'Unicorn', false, 'Big', NULL, 2);\
\
\
--\
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.star VALUES (1, 'Alpha', 120434, NULL, 2);\
INSERT INTO public.star VALUES (2, 'Beta', 12341234, NULL, 1);\
INSERT INTO public.star VALUES (3, 'Gamma', 98363, NULL, 3);\
INSERT INTO public.star VALUES (4, 'Delta', 468346, NULL, 2);\
INSERT INTO public.star VALUES (5, 'Epsilon', 76535, NULL, 4);\
INSERT INTO public.star VALUES (6, 'Tetha', 457457, NULL, 5);\
\
\
--\
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp\
--\
\
INSERT INTO public.universe VALUES (1, 'Univ1', NULL);\
INSERT INTO public.universe VALUES (2, 'Univ2', NULL);\
INSERT INTO public.universe VALUES (3, 'Univ3', NULL);\
\
\
--\
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);\
\
\
--\
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.moon_id_seq', 20, true);\
\
\
--\
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.planet_id_seq', 12, true);\
\
\
--\
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.star_id_seq', 6, true);\
\
\
--\
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\
--\
\
SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);\
\
\
--\
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);\
\
\
--\
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.galaxy\
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);\
\
\
--\
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_name_key UNIQUE (name);\
\
\
--\
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);\
\
\
--\
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_name_key UNIQUE (name);\
\
\
--\
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);\
\
\
--\
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_name_key UNIQUE (name);\
\
\
--\
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);\
\
\
--\
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.universe\
    ADD CONSTRAINT universe_name_key UNIQUE (name);\
\
\
--\
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.universe\
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);\
\
\
--\
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.moon\
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);\
\
\
--\
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.planet\
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);\
\
\
--\
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\
--\
\
ALTER TABLE ONLY public.star\
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);\
\
\
--\
-- PostgreSQL database dump complete\
--\
\
(END)}
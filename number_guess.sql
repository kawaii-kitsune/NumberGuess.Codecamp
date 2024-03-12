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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    attempts integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users_games (
    user_id integer,
    game_id integer
);


ALTER TABLE public.users_games OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1443, 7);
INSERT INTO public.games VALUES (1444, 345);
INSERT INTO public.games VALUES (1445, 509);
INSERT INTO public.games VALUES (1446, 136);
INSERT INTO public.games VALUES (1447, 659);
INSERT INTO public.games VALUES (1448, 303);
INSERT INTO public.games VALUES (1449, 562);
INSERT INTO public.games VALUES (1450, 349);
INSERT INTO public.games VALUES (1451, 488);
INSERT INTO public.games VALUES (1452, 411);
INSERT INTO public.games VALUES (1453, 130);
INSERT INTO public.games VALUES (1454, 576);
INSERT INTO public.games VALUES (1455, 140);
INSERT INTO public.games VALUES (1456, 465);
INSERT INTO public.games VALUES (1457, 159);
INSERT INTO public.games VALUES (1458, 462);
INSERT INTO public.games VALUES (1459, 391);
INSERT INTO public.games VALUES (1460, 312);
INSERT INTO public.games VALUES (1461, 756);
INSERT INTO public.games VALUES (1462, 278);
INSERT INTO public.games VALUES (1463, 784);
INSERT INTO public.games VALUES (1464, 963);
INSERT INTO public.games VALUES (1465, 932);
INSERT INTO public.games VALUES (1466, 921);
INSERT INTO public.games VALUES (1467, 244);
INSERT INTO public.games VALUES (1468, 320);
INSERT INTO public.games VALUES (1469, 220);
INSERT INTO public.games VALUES (1470, 853);
INSERT INTO public.games VALUES (1471, 709);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (27, 'John');
INSERT INTO public.users VALUES (28, 'user_1663447908079');
INSERT INTO public.users VALUES (29, 'user_1663447908078');
INSERT INTO public.users VALUES (30, 'user_1663447961947');
INSERT INTO public.users VALUES (31, 'user_1663447961946');
INSERT INTO public.users VALUES (32, 'user_1663448023061');
INSERT INTO public.users VALUES (33, 'user_1663448023060');
INSERT INTO public.users VALUES (34, 'user_1710241871166');
INSERT INTO public.users VALUES (35, 'user_1710241871165');


--
-- Data for Name: users_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users_games VALUES (27, 1443);
INSERT INTO public.users_games VALUES (28, 1444);
INSERT INTO public.users_games VALUES (28, 1445);
INSERT INTO public.users_games VALUES (29, 1446);
INSERT INTO public.users_games VALUES (29, 1447);
INSERT INTO public.users_games VALUES (28, 1448);
INSERT INTO public.users_games VALUES (28, 1449);
INSERT INTO public.users_games VALUES (28, 1450);
INSERT INTO public.users_games VALUES (30, 1451);
INSERT INTO public.users_games VALUES (30, 1452);
INSERT INTO public.users_games VALUES (31, 1453);
INSERT INTO public.users_games VALUES (31, 1454);
INSERT INTO public.users_games VALUES (30, 1455);
INSERT INTO public.users_games VALUES (30, 1456);
INSERT INTO public.users_games VALUES (30, 1457);
INSERT INTO public.users_games VALUES (32, 1458);
INSERT INTO public.users_games VALUES (32, 1459);
INSERT INTO public.users_games VALUES (33, 1460);
INSERT INTO public.users_games VALUES (33, 1461);
INSERT INTO public.users_games VALUES (32, 1462);
INSERT INTO public.users_games VALUES (32, 1463);
INSERT INTO public.users_games VALUES (32, 1464);
INSERT INTO public.users_games VALUES (34, 1465);
INSERT INTO public.users_games VALUES (34, 1466);
INSERT INTO public.users_games VALUES (35, 1467);
INSERT INTO public.users_games VALUES (35, 1468);
INSERT INTO public.users_games VALUES (34, 1469);
INSERT INTO public.users_games VALUES (34, 1470);
INSERT INTO public.users_games VALUES (34, 1471);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1471, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users_games users_games_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_games
    ADD CONSTRAINT users_games_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: users_games users_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_games
    ADD CONSTRAINT users_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


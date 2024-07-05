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

DROP DATABASE numberguessinggames;
--
-- Name: numberguessinggames; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE numberguessinggames WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE numberguessinggames OWNER TO freecodecamp;

\connect numberguessinggames

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
-- Name: gamelogs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gamelogs (
    game_id integer NOT NULL,
    username_id integer,
    total_guesses integer DEFAULT 0
);


ALTER TABLE public.gamelogs OWNER TO freecodecamp;

--
-- Name: gamelogs_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gamelogs_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gamelogs_game_id_seq OWNER TO freecodecamp;

--
-- Name: gamelogs_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gamelogs_game_id_seq OWNED BY public.gamelogs.game_id;


--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    username_id integer NOT NULL,
    username character varying(22) NOT NULL,
    total_game integer DEFAULT 0
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_username_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;


--
-- Name: gamelogs game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gamelogs ALTER COLUMN game_id SET DEFAULT nextval('public.gamelogs_game_id_seq'::regclass);


--
-- Name: usernames username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);


--
-- Data for Name: gamelogs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gamelogs VALUES (1, 33, 5);
INSERT INTO public.gamelogs VALUES (2, 33, 2);
INSERT INTO public.gamelogs VALUES (3, 34, 6);
INSERT INTO public.gamelogs VALUES (4, 34, 2);
INSERT INTO public.gamelogs VALUES (5, 33, 6);
INSERT INTO public.gamelogs VALUES (6, 33, 6);
INSERT INTO public.gamelogs VALUES (7, 33, 3);
INSERT INTO public.gamelogs VALUES (8, 35, 5);
INSERT INTO public.gamelogs VALUES (9, 35, 2);
INSERT INTO public.gamelogs VALUES (10, 36, 5);
INSERT INTO public.gamelogs VALUES (11, 36, 6);
INSERT INTO public.gamelogs VALUES (12, 35, 7);
INSERT INTO public.gamelogs VALUES (13, 35, 3);
INSERT INTO public.gamelogs VALUES (14, 35, 6);
INSERT INTO public.gamelogs VALUES (15, 37, 5);
INSERT INTO public.gamelogs VALUES (16, 37, 2);
INSERT INTO public.gamelogs VALUES (17, 38, 4);
INSERT INTO public.gamelogs VALUES (18, 38, 3);
INSERT INTO public.gamelogs VALUES (19, 37, 5);
INSERT INTO public.gamelogs VALUES (20, 37, 7);
INSERT INTO public.gamelogs VALUES (21, 37, 5);
INSERT INTO public.gamelogs VALUES (22, 28, 4);
INSERT INTO public.gamelogs VALUES (23, 39, 3);
INSERT INTO public.gamelogs VALUES (24, 40, 5);
INSERT INTO public.gamelogs VALUES (25, 41, 4);
INSERT INTO public.gamelogs VALUES (26, 42, 3);
INSERT INTO public.gamelogs VALUES (27, 43, 3);
INSERT INTO public.gamelogs VALUES (28, 44, 5);
INSERT INTO public.gamelogs VALUES (29, 45, 1);
INSERT INTO public.gamelogs VALUES (30, 46, 4);
INSERT INTO public.gamelogs VALUES (31, 46, 6);
INSERT INTO public.gamelogs VALUES (32, 47, 3);
INSERT INTO public.gamelogs VALUES (33, 47, 3);
INSERT INTO public.gamelogs VALUES (34, 46, 6);
INSERT INTO public.gamelogs VALUES (35, 46, 6);
INSERT INTO public.gamelogs VALUES (36, 46, 4);
INSERT INTO public.gamelogs VALUES (37, 48, 5);
INSERT INTO public.gamelogs VALUES (38, 48, 4);
INSERT INTO public.gamelogs VALUES (39, 49, 2);
INSERT INTO public.gamelogs VALUES (40, 49, 3);
INSERT INTO public.gamelogs VALUES (41, 48, 1);
INSERT INTO public.gamelogs VALUES (42, 48, 5);
INSERT INTO public.gamelogs VALUES (43, 48, 3);
INSERT INTO public.gamelogs VALUES (44, 45, 3);
INSERT INTO public.gamelogs VALUES (45, 50, 5);
INSERT INTO public.gamelogs VALUES (46, 51, 2);
INSERT INTO public.gamelogs VALUES (47, 44, 1);
INSERT INTO public.gamelogs VALUES (48, 53, 1);
INSERT INTO public.gamelogs VALUES (49, 54, 3);
INSERT INTO public.gamelogs VALUES (50, 55, 1);
INSERT INTO public.gamelogs VALUES (51, 56, 4);
INSERT INTO public.gamelogs VALUES (52, 56, 5);
INSERT INTO public.gamelogs VALUES (53, 57, 2);
INSERT INTO public.gamelogs VALUES (54, 57, 2);
INSERT INTO public.gamelogs VALUES (55, 56, 1);
INSERT INTO public.gamelogs VALUES (56, 56, 3);
INSERT INTO public.gamelogs VALUES (57, 56, 2);
INSERT INTO public.gamelogs VALUES (58, 58, 971);
INSERT INTO public.gamelogs VALUES (59, 58, 647);
INSERT INTO public.gamelogs VALUES (60, 59, 673);
INSERT INTO public.gamelogs VALUES (61, 59, 804);
INSERT INTO public.gamelogs VALUES (62, 58, 512);
INSERT INTO public.gamelogs VALUES (63, 58, 984);
INSERT INTO public.gamelogs VALUES (64, 58, 661);
INSERT INTO public.gamelogs VALUES (65, 60, 269);
INSERT INTO public.gamelogs VALUES (66, 60, 304);
INSERT INTO public.gamelogs VALUES (67, 61, 179);
INSERT INTO public.gamelogs VALUES (68, 61, 330);
INSERT INTO public.gamelogs VALUES (69, 60, 767);
INSERT INTO public.gamelogs VALUES (70, 60, 507);
INSERT INTO public.gamelogs VALUES (71, 60, 199);
INSERT INTO public.gamelogs VALUES (72, 62, 414);
INSERT INTO public.gamelogs VALUES (73, 62, 247);
INSERT INTO public.gamelogs VALUES (74, 63, 29);
INSERT INTO public.gamelogs VALUES (75, 63, 489);
INSERT INTO public.gamelogs VALUES (76, 62, 231);
INSERT INTO public.gamelogs VALUES (77, 62, 99);
INSERT INTO public.gamelogs VALUES (78, 62, 641);
INSERT INTO public.gamelogs VALUES (79, 64, 770);
INSERT INTO public.gamelogs VALUES (80, 64, 479);
INSERT INTO public.gamelogs VALUES (81, 65, 232);
INSERT INTO public.gamelogs VALUES (82, 65, 949);
INSERT INTO public.gamelogs VALUES (83, 64, 640);
INSERT INTO public.gamelogs VALUES (84, 64, 631);
INSERT INTO public.gamelogs VALUES (85, 64, 511);
INSERT INTO public.gamelogs VALUES (86, 66, 228);
INSERT INTO public.gamelogs VALUES (87, 66, 504);
INSERT INTO public.gamelogs VALUES (88, 67, 205);
INSERT INTO public.gamelogs VALUES (89, 67, 37);
INSERT INTO public.gamelogs VALUES (90, 66, 116);
INSERT INTO public.gamelogs VALUES (91, 66, 577);
INSERT INTO public.gamelogs VALUES (92, 66, 983);
INSERT INTO public.gamelogs VALUES (93, 68, 446);
INSERT INTO public.gamelogs VALUES (94, 68, 944);
INSERT INTO public.gamelogs VALUES (95, 69, 412);
INSERT INTO public.gamelogs VALUES (96, 69, 539);
INSERT INTO public.gamelogs VALUES (97, 68, 595);
INSERT INTO public.gamelogs VALUES (98, 68, 247);
INSERT INTO public.gamelogs VALUES (99, 68, 529);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (1, 'kp', 0);
INSERT INTO public.usernames VALUES (3, 'dd', 0);
INSERT INTO public.usernames VALUES (4, 'ii', 0);
INSERT INTO public.usernames VALUES (5, 'oo', 0);
INSERT INTO public.usernames VALUES (6, 'yy', 0);
INSERT INTO public.usernames VALUES (7, 'tt', 0);
INSERT INTO public.usernames VALUES (8, 'jhg', 0);
INSERT INTO public.usernames VALUES (9, 'ss', 0);
INSERT INTO public.usernames VALUES (10, 'mm', 0);
INSERT INTO public.usernames VALUES (11, 'sdas', 0);
INSERT INTO public.usernames VALUES (12, 'uuu;', 0);
INSERT INTO public.usernames VALUES (13, 'user_1720142692190', 0);
INSERT INTO public.usernames VALUES (14, 'user_1720142692189', 0);
INSERT INTO public.usernames VALUES (15, 'aa', 0);
INSERT INTO public.usernames VALUES (16, 'ytr', 0);
INSERT INTO public.usernames VALUES (17, 'user_1720142935395', 0);
INSERT INTO public.usernames VALUES (18, 'user_1720142935394', 0);
INSERT INTO public.usernames VALUES (19, 'user_1720142945763', 0);
INSERT INTO public.usernames VALUES (20, 'user_1720142945762', 0);
INSERT INTO public.usernames VALUES (21, 'uu', 0);
INSERT INTO public.usernames VALUES (22, 'user_1720143016344', 0);
INSERT INTO public.usernames VALUES (23, 'user_1720143016343', 0);
INSERT INTO public.usernames VALUES (24, 'user_1720145032115', 0);
INSERT INTO public.usernames VALUES (25, 'user_1720145032114', 0);
INSERT INTO public.usernames VALUES (26, 'user_1720145132747', 0);
INSERT INTO public.usernames VALUES (27, 'user_1720145132746', 0);
INSERT INTO public.usernames VALUES (28, 'aadd', 0);
INSERT INTO public.usernames VALUES (29, 'user_1720145170944', 0);
INSERT INTO public.usernames VALUES (30, 'user_1720145170943', 0);
INSERT INTO public.usernames VALUES (31, 'user_1720145572042', 0);
INSERT INTO public.usernames VALUES (32, 'user_1720145572041', 0);
INSERT INTO public.usernames VALUES (33, 'user_1720146250313', 0);
INSERT INTO public.usernames VALUES (34, 'user_1720146250312', 0);
INSERT INTO public.usernames VALUES (35, 'user_1720146260385', 0);
INSERT INTO public.usernames VALUES (36, 'user_1720146260384', 0);
INSERT INTO public.usernames VALUES (37, 'user_1720146280544', 0);
INSERT INTO public.usernames VALUES (38, 'user_1720146280543', 0);
INSERT INTO public.usernames VALUES (39, 'ui', 0);
INSERT INTO public.usernames VALUES (40, 'qqe', 0);
INSERT INTO public.usernames VALUES (41, 'ogfkg', 0);
INSERT INTO public.usernames VALUES (42, 'gflhfg', 0);
INSERT INTO public.usernames VALUES (43, 'ghgfh', 0);
INSERT INTO public.usernames VALUES (44, '1', 0);
INSERT INTO public.usernames VALUES (45, 'dsad', 0);
INSERT INTO public.usernames VALUES (46, 'user_1720147070154', 0);
INSERT INTO public.usernames VALUES (47, 'user_1720147070153', 0);
INSERT INTO public.usernames VALUES (48, 'user_1720147155529', 0);
INSERT INTO public.usernames VALUES (49, 'user_1720147155528', 0);
INSERT INTO public.usernames VALUES (50, 'eee', 0);
INSERT INTO public.usernames VALUES (51, 'ytt', 0);
INSERT INTO public.usernames VALUES (52, 'fsdfsd', 0);
INSERT INTO public.usernames VALUES (53, 'fgdfgfd', 0);
INSERT INTO public.usernames VALUES (54, 'opop', 0);
INSERT INTO public.usernames VALUES (55, 'dasdas', 1);
INSERT INTO public.usernames VALUES (57, 'user_1720148036269', 2);
INSERT INTO public.usernames VALUES (56, 'user_1720148036270', 5);
INSERT INTO public.usernames VALUES (59, 'user_1720148203450', 2);
INSERT INTO public.usernames VALUES (58, 'user_1720148203451', 5);
INSERT INTO public.usernames VALUES (61, 'user_1720148337907', 2);
INSERT INTO public.usernames VALUES (60, 'user_1720148337908', 5);
INSERT INTO public.usernames VALUES (63, 'user_1720148396703', 2);
INSERT INTO public.usernames VALUES (62, 'user_1720148396704', 5);
INSERT INTO public.usernames VALUES (65, 'user_1720148442317', 2);
INSERT INTO public.usernames VALUES (64, 'user_1720148442318', 5);
INSERT INTO public.usernames VALUES (67, 'user_1720148512412', 2);
INSERT INTO public.usernames VALUES (66, 'user_1720148512413', 5);
INSERT INTO public.usernames VALUES (69, 'user_1720148602934', 2);
INSERT INTO public.usernames VALUES (68, 'user_1720148602935', 5);


--
-- Name: gamelogs_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gamelogs_game_id_seq', 99, true);


--
-- Name: usernames_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_username_id_seq', 69, true);


--
-- Name: gamelogs gamelogs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gamelogs
    ADD CONSTRAINT gamelogs_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);


--
-- Name: usernames usernames_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_username_key UNIQUE (username);


--
-- Name: gamelogs fk_username_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gamelogs
    ADD CONSTRAINT fk_username_id FOREIGN KEY (username_id) REFERENCES public.usernames(username_id);


--
-- PostgreSQL database dump complete
--


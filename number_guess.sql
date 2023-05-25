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
    user_id integer NOT NULL,
    num_of_guesses integer DEFAULT 0 NOT NULL
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
    name character(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

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

INSERT INTO public.games VALUES (4, 7, 2);
INSERT INTO public.games VALUES (5, 8, 3);
INSERT INTO public.games VALUES (6, 7, 1);
INSERT INTO public.games VALUES (7, 7, 3);
INSERT INTO public.games VALUES (8, 9, 742);
INSERT INTO public.games VALUES (9, 9, 40);
INSERT INTO public.games VALUES (10, 10, 271);
INSERT INTO public.games VALUES (11, 10, 290);
INSERT INTO public.games VALUES (12, 9, 535);
INSERT INTO public.games VALUES (13, 9, 745);
INSERT INTO public.games VALUES (14, 9, 715);
INSERT INTO public.games VALUES (15, 11, 547);
INSERT INTO public.games VALUES (16, 11, 975);
INSERT INTO public.games VALUES (17, 12, 876);
INSERT INTO public.games VALUES (18, 12, 326);
INSERT INTO public.games VALUES (19, 11, 142);
INSERT INTO public.games VALUES (20, 11, 801);
INSERT INTO public.games VALUES (21, 11, 140);
INSERT INTO public.games VALUES (22, 7, 11);
INSERT INTO public.games VALUES (23, 7, 11);
INSERT INTO public.games VALUES (24, 7, 11);
INSERT INTO public.games VALUES (25, 13, 746);
INSERT INTO public.games VALUES (26, 13, 813);
INSERT INTO public.games VALUES (27, 14, 918);
INSERT INTO public.games VALUES (28, 14, 801);
INSERT INTO public.games VALUES (29, 13, 315);
INSERT INTO public.games VALUES (30, 13, 894);
INSERT INTO public.games VALUES (31, 13, 894);
INSERT INTO public.games VALUES (32, 13, 40);
INSERT INTO public.games VALUES (33, 8, 9);
INSERT INTO public.games VALUES (34, 15, 871);
INSERT INTO public.games VALUES (35, 15, 704);
INSERT INTO public.games VALUES (36, 16, 794);
INSERT INTO public.games VALUES (37, 16, 669);
INSERT INTO public.games VALUES (38, 15, 285);
INSERT INTO public.games VALUES (39, 15, 908);
INSERT INTO public.games VALUES (40, 15, 908);
INSERT INTO public.games VALUES (41, 15, 922);
INSERT INTO public.games VALUES (42, 17, 473);
INSERT INTO public.games VALUES (43, 17, 754);
INSERT INTO public.games VALUES (44, 18, 232);
INSERT INTO public.games VALUES (45, 18, 756);
INSERT INTO public.games VALUES (46, 17, 814);
INSERT INTO public.games VALUES (47, 17, 205);
INSERT INTO public.games VALUES (48, 17, 205);
INSERT INTO public.games VALUES (49, 17, 172);
INSERT INTO public.games VALUES (50, 21, 149);
INSERT INTO public.games VALUES (51, 19, 382);
INSERT INTO public.games VALUES (52, 19, 465);
INSERT INTO public.games VALUES (53, 19, 171);
INSERT INTO public.games VALUES (54, 22, 130);
INSERT INTO public.games VALUES (55, 23, 682);
INSERT INTO public.games VALUES (56, 23, 620);
INSERT INTO public.games VALUES (57, 22, 632);
INSERT INTO public.games VALUES (58, 22, 885);
INSERT INTO public.games VALUES (59, 22, 885);
INSERT INTO public.games VALUES (60, 22, 437);
INSERT INTO public.games VALUES (61, 24, 21);
INSERT INTO public.games VALUES (62, 7, 17);
INSERT INTO public.games VALUES (63, 25, 201);
INSERT INTO public.games VALUES (64, 26, 16);
INSERT INTO public.games VALUES (65, 26, 243);
INSERT INTO public.games VALUES (66, 25, 440);
INSERT INTO public.games VALUES (67, 25, 457);
INSERT INTO public.games VALUES (68, 25, 457);
INSERT INTO public.games VALUES (69, 25, 301);
INSERT INTO public.games VALUES (70, 7, 12);
INSERT INTO public.games VALUES (71, 8, 10);
INSERT INTO public.games VALUES (72, 27, 609);
INSERT INTO public.games VALUES (73, 28, 765);
INSERT INTO public.games VALUES (74, 28, 241);
INSERT INTO public.games VALUES (75, 27, 487);
INSERT INTO public.games VALUES (76, 27, 456);
INSERT INTO public.games VALUES (77, 27, 385);
INSERT INTO public.games VALUES (78, 29, 721);
INSERT INTO public.games VALUES (79, 30, 356);
INSERT INTO public.games VALUES (80, 30, 685);
INSERT INTO public.games VALUES (81, 29, 467);
INSERT INTO public.games VALUES (82, 29, 637);
INSERT INTO public.games VALUES (83, 29, 596);
INSERT INTO public.games VALUES (84, 31, 168);
INSERT INTO public.games VALUES (85, 31, 34);
INSERT INTO public.games VALUES (86, 32, 52);
INSERT INTO public.games VALUES (87, 32, 400);
INSERT INTO public.games VALUES (88, 31, 579);
INSERT INTO public.games VALUES (89, 31, 921);
INSERT INTO public.games VALUES (90, 31, 446);
INSERT INTO public.games VALUES (91, 33, 373);
INSERT INTO public.games VALUES (92, 33, 708);
INSERT INTO public.games VALUES (93, 34, 604);
INSERT INTO public.games VALUES (94, 34, 393);
INSERT INTO public.games VALUES (95, 33, 946);
INSERT INTO public.games VALUES (96, 33, 588);
INSERT INTO public.games VALUES (97, 33, 706);
INSERT INTO public.games VALUES (98, 35, 292);
INSERT INTO public.games VALUES (99, 35, 711);
INSERT INTO public.games VALUES (100, 36, 353);
INSERT INTO public.games VALUES (101, 36, 975);
INSERT INTO public.games VALUES (102, 35, 180);
INSERT INTO public.games VALUES (103, 35, 82);
INSERT INTO public.games VALUES (104, 35, 973);
INSERT INTO public.games VALUES (105, 37, 277);
INSERT INTO public.games VALUES (106, 37, 120);
INSERT INTO public.games VALUES (107, 38, 917);
INSERT INTO public.games VALUES (108, 38, 412);
INSERT INTO public.games VALUES (109, 37, 371);
INSERT INTO public.games VALUES (110, 37, 853);
INSERT INTO public.games VALUES (111, 37, 729);
INSERT INTO public.games VALUES (112, 39, 703);
INSERT INTO public.games VALUES (113, 40, 313);
INSERT INTO public.games VALUES (114, 40, 124);
INSERT INTO public.games VALUES (115, 39, 566);
INSERT INTO public.games VALUES (116, 39, 617);
INSERT INTO public.games VALUES (117, 39, 906);
INSERT INTO public.games VALUES (118, 41, 80);
INSERT INTO public.games VALUES (119, 42, 780);
INSERT INTO public.games VALUES (120, 42, 761);
INSERT INTO public.games VALUES (121, 41, 530);
INSERT INTO public.games VALUES (122, 41, 487);
INSERT INTO public.games VALUES (123, 41, 338);
INSERT INTO public.games VALUES (124, 43, 620);
INSERT INTO public.games VALUES (125, 44, 51);
INSERT INTO public.games VALUES (126, 44, 30);
INSERT INTO public.games VALUES (127, 43, 471);
INSERT INTO public.games VALUES (128, 43, 715);
INSERT INTO public.games VALUES (129, 43, 259);
INSERT INTO public.games VALUES (130, 45, 278);
INSERT INTO public.games VALUES (131, 45, 337);
INSERT INTO public.games VALUES (132, 46, 599);
INSERT INTO public.games VALUES (133, 46, 654);
INSERT INTO public.games VALUES (134, 45, 636);
INSERT INTO public.games VALUES (135, 45, 445);
INSERT INTO public.games VALUES (136, 45, 36);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (7, 'Prince                ');
INSERT INTO public.users VALUES (8, 'Israel                ');
INSERT INTO public.users VALUES (9, 'user_1685023298915    ');
INSERT INTO public.users VALUES (10, 'user_1685023298913    ');
INSERT INTO public.users VALUES (11, 'user_1685024711773    ');
INSERT INTO public.users VALUES (12, 'user_1685024711772    ');
INSERT INTO public.users VALUES (13, 'user_1685025005336    ');
INSERT INTO public.users VALUES (14, 'user_1685025005335    ');
INSERT INTO public.users VALUES (15, 'user_1685025491210    ');
INSERT INTO public.users VALUES (16, 'user_1685025491209    ');
INSERT INTO public.users VALUES (17, 'user_1685025505250    ');
INSERT INTO public.users VALUES (18, 'user_1685025505249    ');
INSERT INTO public.users VALUES (19, 'user_1685026358649    ');
INSERT INTO public.users VALUES (21, 'user_1685026358648    ');
INSERT INTO public.users VALUES (22, 'user_1685030710036    ');
INSERT INTO public.users VALUES (23, 'user_1685030710035    ');
INSERT INTO public.users VALUES (24, 'flsaflsdlf            ');
INSERT INTO public.users VALUES (25, 'user_1685031870252    ');
INSERT INTO public.users VALUES (26, 'user_1685031870251    ');
INSERT INTO public.users VALUES (27, 'user_1685032403066    ');
INSERT INTO public.users VALUES (28, 'user_1685032403065    ');
INSERT INTO public.users VALUES (29, 'user_1685032549229    ');
INSERT INTO public.users VALUES (30, 'user_1685032549228    ');
INSERT INTO public.users VALUES (31, 'user_1685032714647    ');
INSERT INTO public.users VALUES (32, 'user_1685032714646    ');
INSERT INTO public.users VALUES (33, 'user_1685032832593    ');
INSERT INTO public.users VALUES (34, 'user_1685032832592    ');
INSERT INTO public.users VALUES (35, 'user_1685032929557    ');
INSERT INTO public.users VALUES (36, 'user_1685032929556    ');
INSERT INTO public.users VALUES (37, 'user_1685032954176    ');
INSERT INTO public.users VALUES (38, 'user_1685032954175    ');
INSERT INTO public.users VALUES (39, 'user_1685032977696    ');
INSERT INTO public.users VALUES (40, 'user_1685032977695    ');
INSERT INTO public.users VALUES (41, 'user_1685033195954    ');
INSERT INTO public.users VALUES (42, 'user_1685033195953    ');
INSERT INTO public.users VALUES (43, 'user_1685033235043    ');
INSERT INTO public.users VALUES (44, 'user_1685033235042    ');
INSERT INTO public.users VALUES (45, 'user_1685033261467    ');
INSERT INTO public.users VALUES (46, 'user_1685033261466    ');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 136, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--



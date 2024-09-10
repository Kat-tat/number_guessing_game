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
    username character varying(22),
    guesses integer
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (169, 'user_1725982579535', 772);
INSERT INTO public.games VALUES (23, 'user_1725981818428', 597);
INSERT INTO public.games VALUES (170, 'user_1725982579535', 733);
INSERT INTO public.games VALUES (25, 'user_1725981818427', 160);
INSERT INTO public.games VALUES (26, 'user_1725981818428', 6);
INSERT INTO public.games VALUES (27, 'user_1725981818428', 951);
INSERT INTO public.games VALUES (28, 'user_1725981818428', 908);
INSERT INTO public.games VALUES (171, 'user_1725982579534', 122);
INSERT INTO public.games VALUES (30, 'user_1725981846048', 660);
INSERT INTO public.games VALUES (172, 'user_1725982579534', 206);
INSERT INTO public.games VALUES (32, 'user_1725981846047', 380);
INSERT INTO public.games VALUES (33, 'user_1725981846048', 58);
INSERT INTO public.games VALUES (34, 'user_1725981846048', 608);
INSERT INTO public.games VALUES (35, 'user_1725981846048', 873);
INSERT INTO public.games VALUES (173, 'user_1725982579535', 225);
INSERT INTO public.games VALUES (37, 'user_1725981896405', 497);
INSERT INTO public.games VALUES (174, 'user_1725982579535', 234);
INSERT INTO public.games VALUES (39, 'user_1725981896404', 632);
INSERT INTO public.games VALUES (40, 'user_1725981896405', 703);
INSERT INTO public.games VALUES (41, 'user_1725981896405', 902);
INSERT INTO public.games VALUES (42, 'user_1725981896405', 452);
INSERT INTO public.games VALUES (175, 'user_1725982579535', 346);
INSERT INTO public.games VALUES (44, 'user_1725981899210', 452);
INSERT INTO public.games VALUES (176, 'user_1725982600054', 551);
INSERT INTO public.games VALUES (46, 'user_1725981899209', 982);
INSERT INTO public.games VALUES (47, 'user_1725981899210', 369);
INSERT INTO public.games VALUES (48, 'user_1725981899210', 342);
INSERT INTO public.games VALUES (49, 'user_1725981899210', 589);
INSERT INTO public.games VALUES (177, 'user_1725982600054', 450);
INSERT INTO public.games VALUES (51, 'user_1725981907798', 455);
INSERT INTO public.games VALUES (178, 'user_1725982600053', 734);
INSERT INTO public.games VALUES (53, 'user_1725981907797', 98);
INSERT INTO public.games VALUES (54, 'user_1725981907798', 805);
INSERT INTO public.games VALUES (55, 'user_1725981907798', 745);
INSERT INTO public.games VALUES (56, 'user_1725981907798', 227);
INSERT INTO public.games VALUES (179, 'user_1725982600053', 434);
INSERT INTO public.games VALUES (58, 'user_1725981910089', 343);
INSERT INTO public.games VALUES (180, 'user_1725982600054', 133);
INSERT INTO public.games VALUES (60, 'user_1725981910088', 932);
INSERT INTO public.games VALUES (61, 'user_1725981910089', 812);
INSERT INTO public.games VALUES (62, 'user_1725981910089', 798);
INSERT INTO public.games VALUES (63, 'user_1725981910089', 946);
INSERT INTO public.games VALUES (181, 'user_1725982600054', 924);
INSERT INTO public.games VALUES (65, 'user_1725981914369', 405);
INSERT INTO public.games VALUES (182, 'user_1725982600054', 696);
INSERT INTO public.games VALUES (67, 'user_1725981914368', 101);
INSERT INTO public.games VALUES (68, 'user_1725981914369', 294);
INSERT INTO public.games VALUES (69, 'user_1725981914369', 422);
INSERT INTO public.games VALUES (70, 'user_1725981914369', 98);
INSERT INTO public.games VALUES (183, 'user_1725982605792', 900);
INSERT INTO public.games VALUES (72, 'user_1725981964202', 996);
INSERT INTO public.games VALUES (184, 'user_1725982605792', 866);
INSERT INTO public.games VALUES (74, 'user_1725981964201', 943);
INSERT INTO public.games VALUES (75, 'user_1725981964202', 803);
INSERT INTO public.games VALUES (76, 'user_1725981964202', 724);
INSERT INTO public.games VALUES (77, 'user_1725981964202', 200);
INSERT INTO public.games VALUES (185, 'user_1725982605791', 192);
INSERT INTO public.games VALUES (79, 'user_1725981968352', 149);
INSERT INTO public.games VALUES (186, 'user_1725982605791', 745);
INSERT INTO public.games VALUES (81, 'user_1725981968351', 799);
INSERT INTO public.games VALUES (82, 'user_1725981968352', 456);
INSERT INTO public.games VALUES (83, 'user_1725981968352', 564);
INSERT INTO public.games VALUES (84, 'user_1725981968352', 569);
INSERT INTO public.games VALUES (187, 'user_1725982605792', 354);
INSERT INTO public.games VALUES (86, 'user_1725982049296', 229);
INSERT INTO public.games VALUES (188, 'user_1725982605792', 216);
INSERT INTO public.games VALUES (88, 'user_1725982049295', 969);
INSERT INTO public.games VALUES (89, 'user_1725982049296', 677);
INSERT INTO public.games VALUES (90, 'user_1725982049296', 149);
INSERT INTO public.games VALUES (91, 'user_1725982049296', 177);
INSERT INTO public.games VALUES (189, 'user_1725982605792', 722);
INSERT INTO public.games VALUES (93, 'user_1725982060645', 143);
INSERT INTO public.games VALUES (190, 'user_1725982621120', 750);
INSERT INTO public.games VALUES (95, 'user_1725982060644', 767);
INSERT INTO public.games VALUES (96, 'user_1725982060645', 663);
INSERT INTO public.games VALUES (97, 'user_1725982060645', 787);
INSERT INTO public.games VALUES (98, 'user_1725982060645', 787);
INSERT INTO public.games VALUES (191, 'user_1725982621120', 144);
INSERT INTO public.games VALUES (100, 'user_1725982110827', 455);
INSERT INTO public.games VALUES (192, 'user_1725982621118', 759);
INSERT INTO public.games VALUES (102, 'user_1725982110826', 667);
INSERT INTO public.games VALUES (103, 'user_1725982110827', 861);
INSERT INTO public.games VALUES (104, 'user_1725982110827', 268);
INSERT INTO public.games VALUES (105, 'user_1725982110827', 738);
INSERT INTO public.games VALUES (193, 'user_1725982621118', 465);
INSERT INTO public.games VALUES (107, 'user_1725982137101', 91);
INSERT INTO public.games VALUES (194, 'user_1725982621120', 830);
INSERT INTO public.games VALUES (109, 'user_1725982137100', 254);
INSERT INTO public.games VALUES (110, 'user_1725982137101', 515);
INSERT INTO public.games VALUES (111, 'user_1725982137101', 591);
INSERT INTO public.games VALUES (112, 'user_1725982137101', 373);
INSERT INTO public.games VALUES (195, 'user_1725982621120', 536);
INSERT INTO public.games VALUES (114, 'user_1725982140992', 551);
INSERT INTO public.games VALUES (196, 'user_1725982621120', 185);
INSERT INTO public.games VALUES (116, 'user_1725982140991', 906);
INSERT INTO public.games VALUES (117, 'user_1725982140992', 841);
INSERT INTO public.games VALUES (118, 'user_1725982140992', 231);
INSERT INTO public.games VALUES (119, 'user_1725982140992', 567);
INSERT INTO public.games VALUES (197, 'user_1725982633113', 284);
INSERT INTO public.games VALUES (121, 'user_1725982145896', 925);
INSERT INTO public.games VALUES (198, 'user_1725982633113', 367);
INSERT INTO public.games VALUES (123, 'user_1725982145895', 865);
INSERT INTO public.games VALUES (124, 'user_1725982145896', 215);
INSERT INTO public.games VALUES (125, 'user_1725982145896', 945);
INSERT INTO public.games VALUES (126, 'user_1725982145896', 735);
INSERT INTO public.games VALUES (199, 'user_1725982633112', 685);
INSERT INTO public.games VALUES (128, 'user_1725982183683', 379);
INSERT INTO public.games VALUES (200, 'user_1725982633112', 668);
INSERT INTO public.games VALUES (130, 'user_1725982183682', 686);
INSERT INTO public.games VALUES (131, 'user_1725982183683', 205);
INSERT INTO public.games VALUES (132, 'user_1725982183683', 299);
INSERT INTO public.games VALUES (133, 'user_1725982183683', 712);
INSERT INTO public.games VALUES (201, 'user_1725982633113', 647);
INSERT INTO public.games VALUES (202, 'user_1725982633113', 216);
INSERT INTO public.games VALUES (203, 'user_1725982633113', 366);
INSERT INTO public.games VALUES (204, 'user_1725982655099', 164);
INSERT INTO public.games VALUES (205, 'user_1725982655099', 45);
INSERT INTO public.games VALUES (206, 'user_1725982655098', 320);
INSERT INTO public.games VALUES (207, 'user_1725982655098', 134);
INSERT INTO public.games VALUES (208, 'user_1725982655099', 94);
INSERT INTO public.games VALUES (209, 'user_1725982655099', 80);
INSERT INTO public.games VALUES (210, 'user_1725982655099', 76);
INSERT INTO public.games VALUES (211, 'user_1725982661457', 42);
INSERT INTO public.games VALUES (212, 'user_1725982661457', 562);
INSERT INTO public.games VALUES (213, 'user_1725982661456', 677);
INSERT INTO public.games VALUES (214, 'user_1725982661456', 957);
INSERT INTO public.games VALUES (215, 'user_1725982661457', 521);
INSERT INTO public.games VALUES (216, 'user_1725982661457', 334);
INSERT INTO public.games VALUES (217, 'user_1725982661457', 949);
INSERT INTO public.games VALUES (218, 'user_1725982810589', 157);
INSERT INTO public.games VALUES (219, 'user_1725982810589', 225);
INSERT INTO public.games VALUES (220, 'user_1725982810588', 562);
INSERT INTO public.games VALUES (221, 'user_1725982810588', 716);
INSERT INTO public.games VALUES (222, 'user_1725982810589', 344);
INSERT INTO public.games VALUES (223, 'user_1725982810589', 78);
INSERT INTO public.games VALUES (224, 'user_1725982810589', 517);
INSERT INTO public.games VALUES (225, 'user_1725982890682', 810);
INSERT INTO public.games VALUES (226, 'user_1725982890682', 575);
INSERT INTO public.games VALUES (227, 'user_1725982890681', 627);
INSERT INTO public.games VALUES (228, 'user_1725982890681', 137);
INSERT INTO public.games VALUES (229, 'user_1725982890682', 471);
INSERT INTO public.games VALUES (230, 'user_1725982890682', 918);
INSERT INTO public.games VALUES (231, 'user_1725982890682', 630);
INSERT INTO public.games VALUES (232, 'user_1725982920917', 428);
INSERT INTO public.games VALUES (233, 'user_1725982920917', 342);
INSERT INTO public.games VALUES (234, 'user_1725982920916', 658);
INSERT INTO public.games VALUES (235, 'user_1725982920916', 834);
INSERT INTO public.games VALUES (236, 'user_1725982920917', 440);
INSERT INTO public.games VALUES (237, 'user_1725982920917', 15);
INSERT INTO public.games VALUES (238, 'user_1725982920917', 895);
INSERT INTO public.games VALUES (239, 'user_1725982961094', 82);
INSERT INTO public.games VALUES (240, 'user_1725982961094', 171);
INSERT INTO public.games VALUES (241, 'user_1725982961093', 47);
INSERT INTO public.games VALUES (242, 'user_1725982961093', 692);
INSERT INTO public.games VALUES (243, 'user_1725982961094', 806);
INSERT INTO public.games VALUES (244, 'user_1725982961094', 201);
INSERT INTO public.games VALUES (245, 'user_1725982961094', 980);
INSERT INTO public.games VALUES (246, 'user_1725982992947', 312);
INSERT INTO public.games VALUES (247, 'user_1725982992947', 98);
INSERT INTO public.games VALUES (248, 'user_1725982992946', 699);
INSERT INTO public.games VALUES (249, 'user_1725982992946', 48);
INSERT INTO public.games VALUES (250, 'user_1725982992947', 912);
INSERT INTO public.games VALUES (251, 'user_1725982992947', 867);
INSERT INTO public.games VALUES (252, 'user_1725982992947', 622);
INSERT INTO public.games VALUES (253, 'user_1725983030786', 660);
INSERT INTO public.games VALUES (254, 'user_1725983030786', 950);
INSERT INTO public.games VALUES (255, 'user_1725983030785', 70);
INSERT INTO public.games VALUES (256, 'user_1725983030785', 21);
INSERT INTO public.games VALUES (257, 'user_1725983030786', 304);
INSERT INTO public.games VALUES (258, 'user_1725983030786', 337);
INSERT INTO public.games VALUES (259, 'user_1725983030786', 749);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 259, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--


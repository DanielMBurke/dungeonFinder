--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: seq_person_id; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_person_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: person; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.person (
    person_id integer DEFAULT nextval('public.seq_person_id'::regclass) NOT NULL,
    username character varying(25) NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    email character varying(50),
    gender character varying(1) DEFAULT 'M'::character varying NOT NULL,
    alignment character varying(50) NOT NULL,
    join_date date NOT NULL,
    CONSTRAINT ck_gender CHECK (((gender)::text = ANY ((ARRAY['M'::character varying, 'F'::character varying])::text[])))
);


--
-- Name: seq_user_id; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_user_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.person (person_id, username, first_name, last_name, email, gender, alignment, join_date) FROM stdin;
1	RufusMcdoogan	Daniel	Burke	\N	M	Lawful-Good	2018-07-17
2	BrakMcRibber	Brak	Fondue	\N	M	Lawful-Neutral	2018-07-18
3	SrGreaterGood	Lord	Vold	\N	M	Lawful-Evil	2018-07-18
4	SuzyBGoode	Susan	Mebal	\N	F	Neutral-Good	2018-07-19
5	MadameMeh	Gray	Area	\N	F	True-Neutral	2018-07-20
6	MrWhatev	Ted	Bearry	\N	M	Neutral-Evil	2018-07-21
7	Sif	Mary	Sue	\N	F	Chaotic-Good	2018-07-22
8	MrPink	Tony	Farsetter	\N	M	Chaotic-Neutral	2018-07-22
9	PieceOSith	Darth	Plagus	\N	M	Chaotic-Evil	2018-07-23
10	dmedina	Daniel	Medina	\N	M	Lawful-Neutral	2018-08-08
11	Buttercups	Brian	Avsec	\N	M	Lawful-Good	2018-08-08
12	Money14125	Gurpreet	Cheema	\N	F	Lawful-Good	2018-08-08
13	kwittine	Katie	Wittine	\N	F	Lawful-Evil	2018-08-08
14	Ginzo2018	Frank	Fella	\N	M	Neutral-Good	2018-08-08
15	LordOfAvocados	Nathan	Bardwell	\N	M	True-Neutral	2018-08-08
16	Teslaman	James	Tanner	\N	M	Derp	2018-08-08
17	ccastelaz	Craig	Castelaz	\N	M	Lawful-Neutral	2018-08-08
18	Teslaman	James	Tanner	\N	M	Chaotic-Neutral	2018-08-08
19	PathwayZombieKiller	Kelly	B	\N	F	Lawful-Evil	2018-08-08
\.


--
-- Name: seq_person_id; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_person_id', 19, true);


--
-- Name: seq_user_id; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.seq_user_id', 4, true);


--
-- PostgreSQL database dump complete
--


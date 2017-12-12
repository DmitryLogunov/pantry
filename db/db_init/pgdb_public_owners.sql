--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.9
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: owners; Type: TABLE DATA; Schema: public; Owner: pguser
--

INSERT INTO owners (id, name, created_at, updated_at) VALUES (1, 'Василий Иванович', '2017-12-12 17:08:32.8253', '2017-12-12 17:08:32.8253');
INSERT INTO owners (id, name, created_at, updated_at) VALUES (2, 'Надежда Петровна', '2017-12-12 17:08:40.956785', '2017-12-12 17:08:40.956785');
INSERT INTO owners (id, name, created_at, updated_at) VALUES (3, 'Общие вещи', '2017-12-12 17:08:49.969151', '2017-12-12 17:08:49.969151');


--
-- Name: owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('owners_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--


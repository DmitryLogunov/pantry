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
-- Data for Name: storages; Type: TABLE DATA; Schema: public; Owner: pguser
--

INSERT INTO storages (id, title, description, created_at, updated_at) VALUES (1, 'Гараж', 'Гаражный кооператив', '2017-12-12 17:18:35.029172', '2017-12-12 17:18:35.029172');
INSERT INTO storages (id, title, description, created_at, updated_at) VALUES (2, 'Кладовая', 'Кладовая в прихожей', '2017-12-12 17:18:53.85381', '2017-12-12 17:18:53.85381');
INSERT INTO storages (id, title, description, created_at, updated_at) VALUES (3, 'Сарай', 'Сарай на даче', '2017-12-12 17:19:05.647624', '2017-12-12 17:19:05.647624');


--
-- Name: storages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('storages_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--


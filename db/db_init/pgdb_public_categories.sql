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
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

INSERT INTO categories (id, title, description, created_at, updated_at) VALUES (1, 'Одежда', 'Зимняя, летняя, рабочая', '2017-12-12 13:30:24.851477', '2017-12-12 13:30:24.851477');
INSERT INTO categories (id, title, description, created_at, updated_at) VALUES (2, 'Инструменты', 'Для ремонта и строительства', '2017-12-12 13:30:53.758842', '2017-12-12 13:30:53.758842');
INSERT INTO categories (id, title, description, created_at, updated_at) VALUES (3, 'Книги', 'Библиотека', '2017-12-12 13:31:11.443466', '2017-12-12 13:31:11.443466');
INSERT INTO categories (id, title, description, created_at, updated_at) VALUES (4, 'Компьютеры ', 'Компьютеры в сборе и комплектующие', '2017-12-12 13:32:06.907678', '2017-12-12 13:32:06.907678');
INSERT INTO categories (id, title, description, created_at, updated_at) VALUES (5, 'Продукты', 'Продукты длительного хранения', '2017-12-12 17:09:53.373608', '2017-12-12 17:09:53.373608');


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('categories_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--


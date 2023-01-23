--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12
-- Dumped by pg_dump version 12.12

-- Started on 2022-11-07 16:48:36

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 33089)
-- Name: camion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camion (
    numero_immatriculation character(30) NOT NULL,
    nom_proprietaire character varying(255)
);


ALTER TABLE public.camion OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 33105)
-- Name: limitation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.limitation (
    numero_immatriculation character(30) NOT NULL,
    code_type integer NOT NULL,
    capacite_maximale numeric
);


ALTER TABLE public.limitation OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 33113)
-- Name: pesee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesee (
    code_borderaux_pesee integer NOT NULL,
    date_pesee date NOT NULL,
    heure time without time zone NOT NULL,
    poid_arrive numeric NOT NULL,
    poid_depart numeric NOT NULL,
    code_type integer NOT NULL,
    numero_imatriculation character(30) NOT NULL,
    code_syndicat integer
);


ALTER TABLE public.pesee OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 33097)
-- Name: syndicat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syndicat (
    code_syndicat integer NOT NULL,
    nom_syndicat character varying(255) NOT NULL,
    adresse_syndicat character varying(255) NOT NULL,
    telephone_syndicat character varying(20) NOT NULL
);


ALTER TABLE public.syndicat OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 33121)
-- Name: type_dechet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_dechet (
    code_type integer NOT NULL,
    libelle_type character varying(255)
);


ALTER TABLE public.type_dechet OWNER TO postgres;

--
-- TOC entry 2845 (class 0 OID 33089)
-- Dependencies: 202
-- Data for Name: camion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.camion VALUES ('WW-001-WW                     ', 'toto');
INSERT INTO public.camion VALUES ('WW-002-WW                     ', 'alfred');
INSERT INTO public.camion VALUES ('WW-003-WW                     ', 'mike');
INSERT INTO public.camion VALUES ('WW-004-WW                     ', 'victor');
INSERT INTO public.camion VALUES ('WW-005-WW                     ', 'sylvain');
INSERT INTO public.camion VALUES ('WW-006-WW                     ', 'alexis');
INSERT INTO public.camion VALUES ('WW-007-WW                     ', 'tristan');
INSERT INTO public.camion VALUES ('WW-008-WW                     ', 'leo');
INSERT INTO public.camion VALUES ('WW-009-WW                     ', 'hugue');
INSERT INTO public.camion VALUES ('WW-010-WW                     ', 'matthieu');
INSERT INTO public.camion VALUES ('WW-011-WW                     ', 'alexandra');
INSERT INTO public.camion VALUES ('WW-012-WW                     ', 'alexandre');
INSERT INTO public.camion VALUES ('WW-013-WW                     ', 'marc');
INSERT INTO public.camion VALUES ('WW-014-WW                     ', 'julie');
INSERT INTO public.camion VALUES ('WW-015-WW                     ', 'anthony');
INSERT INTO public.camion VALUES ('WW-016-WW                     ', 'claire');
INSERT INTO public.camion VALUES ('WW-017-WW                     ', 'salvatore');
INSERT INTO public.camion VALUES ('WW-018-WW                     ', 'pierre-jean');
INSERT INTO public.camion VALUES ('WW-019-WW                     ', 'perrico');
INSERT INTO public.camion VALUES ('WW-020-WW                     ', 'maxime');


--
-- TOC entry 2847 (class 0 OID 33105)
-- Dependencies: 204
-- Data for Name: limitation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.limitation VALUES ('WW-001-WW                     ', 1, 30);
INSERT INTO public.limitation VALUES ('WW-002-WW                     ', 2, 900);
INSERT INTO public.limitation VALUES ('WW-003-WW                     ', 3, 80);
INSERT INTO public.limitation VALUES ('WW-004-WW                     ', 4, 80);
INSERT INTO public.limitation VALUES ('WW-005-WW                     ', 5, 80);
INSERT INTO public.limitation VALUES ('WW-006-WW                     ', 6, 80);
INSERT INTO public.limitation VALUES ('WW-007-WW                     ', 8, 80);
INSERT INTO public.limitation VALUES ('WW-008-WW                     ', 7, 80);
INSERT INTO public.limitation VALUES ('WW-009-WW                     ', 10, 80);
INSERT INTO public.limitation VALUES ('WW-010-WW                     ', 5, 80);
INSERT INTO public.limitation VALUES ('WW-011-WW                     ', 4, 16);
INSERT INTO public.limitation VALUES ('WW-012-WW                     ', 6, 12);
INSERT INTO public.limitation VALUES ('WW-013-WW                     ', 1, 564);
INSERT INTO public.limitation VALUES ('WW-014-WW                     ', 2, 32);
INSERT INTO public.limitation VALUES ('WW-015-WW                     ', 3, 65);
INSERT INTO public.limitation VALUES ('WW-016-WW                     ', 3, 216);
INSERT INTO public.limitation VALUES ('WW-017-WW                     ', 8, 645);
INSERT INTO public.limitation VALUES ('WW-018-WW                     ', 7, 216);
INSERT INTO public.limitation VALUES ('WW-019-WW                     ', 6, 3216);
INSERT INTO public.limitation VALUES ('WW-020-WW                     ', 2, 1546);
INSERT INTO public.limitation VALUES ('WW-008-WW                     ', 1, 1216);
INSERT INTO public.limitation VALUES ('WW-012-WW                     ', 7, 312);
INSERT INTO public.limitation VALUES ('WW-005-WW                     ', 4, 233);
INSERT INTO public.limitation VALUES ('WW-009-WW                     ', 5, 15);
INSERT INTO public.limitation VALUES ('WW-001-WW                     ', 2, 124);
INSERT INTO public.limitation VALUES ('WW-011-WW                     ', 3, 1256);
INSERT INTO public.limitation VALUES ('WW-014-WW                     ', 4, 216);
INSERT INTO public.limitation VALUES ('WW-003-WW                     ', 7, 213);
INSERT INTO public.limitation VALUES ('WW-009-WW                     ', 8, 215);
INSERT INTO public.limitation VALUES ('WW-019-WW                     ', 2, 15);


--
-- TOC entry 2848 (class 0 OID 33113)
-- Dependencies: 205
-- Data for Name: pesee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pesee VALUES (1, '2022-01-01', '16:30:00', 50, 0, 1, 'WW-003-WW                     ', NULL);
INSERT INTO public.pesee VALUES (2, '2022-01-01', '16:30:00', 3000, 0, 2, 'WW-003-WW                     ', NULL);
INSERT INTO public.pesee VALUES (4, '2022-01-01', '16:30:00', 500, 0, 6, 'WW-004-WW                     ', NULL);
INSERT INTO public.pesee VALUES (5, '2022-01-01', '16:30:00', 12, 0, 1, 'WW-004-WW                     ', NULL);
INSERT INTO public.pesee VALUES (7, '2022-01-01', '16:30:00', 230, 0, 6, 'WW-006-WW                     ', NULL);
INSERT INTO public.pesee VALUES (8, '2022-01-01', '16:30:00', 645, 0, 2, 'WW-007-WW                     ', NULL);
INSERT INTO public.pesee VALUES (9, '2022-01-01', '16:30:00', 213, 0, 9, 'WW-008-WW                     ', NULL);
INSERT INTO public.pesee VALUES (10, '2022-01-01', '18:30:00', 546, 0, 10, 'WW-011-WW                     ', NULL);
INSERT INTO public.pesee VALUES (11, '2022-01-01', '16:30:00', 213, 0, 6, 'WW-011-WW                     ', NULL);
INSERT INTO public.pesee VALUES (12, '2022-01-01', '16:30:00', 564, 0, 4, 'WW-015-WW                     ', NULL);
INSERT INTO public.pesee VALUES (13, '2022-01-01', '16:30:00', 213, 0, 8, 'WW-014-WW                     ', NULL);
INSERT INTO public.pesee VALUES (14, '2022-01-01', '16:30:00', 656, 0, 9, 'WW-020-WW                     ', NULL);
INSERT INTO public.pesee VALUES (15, '2022-01-01', '16:30:00', 2164, 0, 2, 'WW-018-WW                     ', NULL);
INSERT INTO public.pesee VALUES (16, '2022-01-01', '16:30:00', 2164, 0, 3, 'WW-015-WW                     ', NULL);
INSERT INTO public.pesee VALUES (17, '2022-01-01', '16:30:00', 2135, 0, 4, 'WW-018-WW                     ', NULL);
INSERT INTO public.pesee VALUES (18, '2022-01-01', '16:30:00', 2164, 0, 8, 'WW-006-WW                     ', NULL);
INSERT INTO public.pesee VALUES (19, '2022-01-01', '16:30:00', 2164, 0, 10, 'WW-007-WW                     ', NULL);
INSERT INTO public.pesee VALUES (21, '2022-01-01', '16:30:00', 321, 0, 6, 'WW-001-WW                     ', NULL);
INSERT INTO public.pesee VALUES (22, '2022-01-01', '16:30:00', 456, 0, 4, 'WW-002-WW                     ', NULL);
INSERT INTO public.pesee VALUES (23, '2022-01-01', '16:30:00', 2348, 0, 8, 'WW-003-WW                     ', NULL);
INSERT INTO public.pesee VALUES (24, '2022-01-01', '16:30:00', 2165, 0, 9, 'WW-008-WW                     ', NULL);
INSERT INTO public.pesee VALUES (25, '2022-01-01', '16:30:00', 3569, 0, 3, 'WW-014-WW                     ', NULL);
INSERT INTO public.pesee VALUES (27, '2022-01-01', '16:30:00', 2312, 0, 1, 'WW-016-WW                     ', NULL);
INSERT INTO public.pesee VALUES (28, '2022-01-01', '16:30:00', 3265, 0, 4, 'WW-018-WW                     ', NULL);
INSERT INTO public.pesee VALUES (29, '2022-01-01', '16:30:00', 689, 0, 6, 'WW-017-WW                     ', NULL);
INSERT INTO public.pesee VALUES (30, '2022-01-01', '16:30:00', 561, 0, 5, 'WW-006-WW                     ', NULL);
INSERT INTO public.pesee VALUES (31, '2022-01-01', '16:30:00', 326, 0, 8, 'WW-012-WW                     ', NULL);
INSERT INTO public.pesee VALUES (32, '2022-01-01', '16:30:00', 2354, 0, 7, 'WW-008-WW                     ', NULL);
INSERT INTO public.pesee VALUES (33, '2022-01-01', '16:30:00', 654, 0, 10, 'WW-013-WW                     ', NULL);
INSERT INTO public.pesee VALUES (34, '2022-01-01', '16:30:00', 2432, 0, 3, 'WW-014-WW                     ', NULL);
INSERT INTO public.pesee VALUES (35, '2022-01-01', '16:30:00', 1561, 0, 2, 'WW-016-WW                     ', NULL);
INSERT INTO public.pesee VALUES (36, '2022-01-01', '16:30:00', 345, 0, 1, 'WW-008-WW                     ', NULL);
INSERT INTO public.pesee VALUES (37, '2022-01-01', '16:30:00', 564, 0, 9, 'WW-015-WW                     ', NULL);
INSERT INTO public.pesee VALUES (38, '2022-01-01', '16:30:00', 3154, 0, 10, 'WW-017-WW                     ', NULL);
INSERT INTO public.pesee VALUES (39, '2022-01-01', '16:30:00', 1264, 0, 1, 'WW-019-WW                     ', NULL);
INSERT INTO public.pesee VALUES (40, '2022-01-01', '16:30:00', 1234, 0, 2, 'WW-006-WW                     ', NULL);
INSERT INTO public.pesee VALUES (41, '2022-01-01', '16:30:00', 234, 0, 2, 'WW-004-WW                     ', NULL);
INSERT INTO public.pesee VALUES (42, '2022-01-01', '16:30:00', 21341, 0, 4, 'WW-002-WW                     ', NULL);
INSERT INTO public.pesee VALUES (43, '2022-01-01', '16:30:00', 1264, 0, 6, 'WW-005-WW                     ', NULL);
INSERT INTO public.pesee VALUES (44, '2022-01-01', '16:30:00', 214, 0, 8, 'WW-008-WW                     ', NULL);
INSERT INTO public.pesee VALUES (45, '2022-01-01', '16:30:00', 541, 0, 7, 'WW-009-WW                     ', NULL);
INSERT INTO public.pesee VALUES (47, '2022-01-01', '16:30:00', 234, 0, 6, 'WW-007-WW                     ', NULL);
INSERT INTO public.pesee VALUES (48, '2022-01-01', '16:30:00', 1564, 0, 1, 'WW-020-WW                     ', NULL);
INSERT INTO public.pesee VALUES (49, '2022-01-01', '16:30:00', 1264, 0, 3, 'WW-002-WW                     ', NULL);
INSERT INTO public.pesee VALUES (50, '2022-01-01', '16:30:00', 1234, 0, 2, 'WW-004-WW                     ', NULL);
INSERT INTO public.pesee VALUES (26, '2022-01-01', '16:30:00', 6324, 456, 2, 'WW-013-WW                     ', NULL);
INSERT INTO public.pesee VALUES (46, '2022-01-01', '16:30:00', 12654, 456, 5, 'WW-013-WW                     ', NULL);
INSERT INTO public.pesee VALUES (6, '2022-01-01', '16:30:00', 30, 12, 4, 'WW-005-WW                     ', NULL);
INSERT INTO public.pesee VALUES (3, '2022-01-01', '16:30:00', 6000, 2164, 3, 'WW-006-WW                     ', NULL);
INSERT INTO public.pesee VALUES (20, '2022-01-01', '16:30:00', 21364, 6000, 3, 'WW-009-WW                     ', NULL);


--
-- TOC entry 2846 (class 0 OID 33097)
-- Dependencies: 203
-- Data for Name: syndicat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.syndicat VALUES (1, 'toto', '1 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (2, 'alfred', '2 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (3, 'mike', '3 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (4, 'victor', '4 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (5, 'sylvain', '5 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (6, 'alexis', '6 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (7, 'tristan', '7 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (8, 'leo', '8 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (9, 'hugue', '9 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (10, 'matthieu', '10 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (11, 'alexandra', '11 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (12, 'alexandre', '12 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (13, 'marc', '13 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (14, 'julie', '14 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (15, 'anthony', '15 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (16, 'claire', '16 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (17, 'salvatore', '17 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (18, 'pierre-jean', '18 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (19, 'perrico', '19 rue toto', '+33.06.06.06.06.06');
INSERT INTO public.syndicat VALUES (20, 'maxime', '20 rue toto', '+33.06.06.06.06.06');


--
-- TOC entry 2849 (class 0 OID 33121)
-- Dependencies: 206
-- Data for Name: type_dechet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.type_dechet VALUES (1, 'papier');
INSERT INTO public.type_dechet VALUES (2, 'metal');
INSERT INTO public.type_dechet VALUES (3, 'carton');
INSERT INTO public.type_dechet VALUES (4, 'ordure');
INSERT INTO public.type_dechet VALUES (5, 'chimie');
INSERT INTO public.type_dechet VALUES (6, 'huile');
INSERT INTO public.type_dechet VALUES (7, 'construction');
INSERT INTO public.type_dechet VALUES (8, 'plastique');
INSERT INTO public.type_dechet VALUES (9, 'electronique');
INSERT INTO public.type_dechet VALUES (10, 'vetement');


--
-- TOC entry 2709 (class 2606 OID 33153)
-- Name: limitation limitation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT limitation_pk PRIMARY KEY (code_type, numero_immatriculation);


--
-- TOC entry 2705 (class 2606 OID 33135)
-- Name: camion newtable_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camion
    ADD CONSTRAINT newtable_pk PRIMARY KEY (numero_immatriculation);


--
-- TOC entry 2711 (class 2606 OID 33120)
-- Name: pesee pesee_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_pk PRIMARY KEY (code_borderaux_pesee);


--
-- TOC entry 2707 (class 2606 OID 33104)
-- Name: syndicat syndicat_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syndicat
    ADD CONSTRAINT syndicat_pk PRIMARY KEY (code_syndicat);


--
-- TOC entry 2713 (class 2606 OID 33128)
-- Name: type_dechet type_dechet_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_dechet
    ADD CONSTRAINT type_dechet_pk PRIMARY KEY (code_type);


--
-- TOC entry 2718 (class 2606 OID 33191)
-- Name: pesee code_syndicat_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT code_syndicat_fk FOREIGN KEY (code_syndicat) REFERENCES public.syndicat(code_syndicat);


--
-- TOC entry 2715 (class 2606 OID 33161)
-- Name: limitation imat_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT imat_fk FOREIGN KEY (numero_immatriculation) REFERENCES public.camion(numero_immatriculation);


--
-- TOC entry 2717 (class 2606 OID 33186)
-- Name: pesee imat_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT imat_fk FOREIGN KEY (numero_imatriculation) REFERENCES public.camion(numero_immatriculation);


--
-- TOC entry 2714 (class 2606 OID 33129)
-- Name: limitation limitation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT limitation_fk FOREIGN KEY (code_type) REFERENCES public.type_dechet(code_type);


--
-- TOC entry 2716 (class 2606 OID 33166)
-- Name: pesee pesee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_fk FOREIGN KEY (code_type) REFERENCES public.type_dechet(code_type);


-- Completed on 2022-11-07 16:48:37

--
-- PostgreSQL database dump complete
--


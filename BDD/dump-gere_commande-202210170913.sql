--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12
-- Dumped by pg_dump version 12.12

-- Started on 2022-10-17 09:13:38

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
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16663)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    id integer NOT NULL,
    reference character varying NOT NULL,
    date character varying NOT NULL,
    id_fournisseur integer NOT NULL
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16676)
-- Name: commander; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commander (
    id_commande integer NOT NULL,
    id_produit integer NOT NULL,
    quantite numeric NOT NULL
);


ALTER TABLE public.commander OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16655)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fournisseur (
    id integer NOT NULL,
    nom character varying NOT NULL,
    tel character varying,
    mail character varying
);


ALTER TABLE public.fournisseur OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16684)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    numero_produit integer NOT NULL,
    nom character varying NOT NULL,
    prix numeric NOT NULL
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 16663)
-- Dependencies: 203
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande (id, reference, date, id_fournisseur) FROM stdin;
1	26231k2	18/04/2022	1
\.


--
-- TOC entry 2840 (class 0 OID 16676)
-- Dependencies: 204
-- Data for Name: commander; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commander (id_commande, id_produit, quantite) FROM stdin;
1	1	1
\.


--
-- TOC entry 2838 (class 0 OID 16655)
-- Dependencies: 202
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (id, nom, tel, mail) FROM stdin;
4	4	4	4@4.test
1	four1	06060660	1@1.test
2	four2	066060	2@2.test
3	four3	0680801	3@3.test
5	5	5	5@5.test
6	6	6	6@6.test
7	7	7	7@7.test
8	8	8	8@8.test
9	9	9	9@9.test
10	10	10	10@10.test
11	11	11	11@11.test
12	12	12	12@12.test
13	13	13	13@13.test
14	14	14	14@14.test
15	15	15	15@15.test
16	16	16	16@16.test
17	17	17	17@17.test
18	18	18	18@18.test
\.


--
-- TOC entry 2841 (class 0 OID 16684)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit (numero_produit, nom, prix) FROM stdin;
1	papier	2
\.


--
-- TOC entry 2704 (class 2606 OID 16715)
-- Name: commande commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pk PRIMARY KEY (id);


--
-- TOC entry 2706 (class 2606 OID 16703)
-- Name: commander commander_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_pk PRIMARY KEY (id_commande, id_produit);


--
-- TOC entry 2702 (class 2606 OID 16662)
-- Name: fournisseur fournisseur_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pk PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 16701)
-- Name: produit produit_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pk PRIMARY KEY (numero_produit);


--
-- TOC entry 2709 (class 2606 OID 16671)
-- Name: commande commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_fk FOREIGN KEY (id_fournisseur) REFERENCES public.fournisseur(id);


--
-- TOC entry 2710 (class 2606 OID 16709)
-- Name: commander commander_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_fk FOREIGN KEY (id_produit) REFERENCES public.produit(numero_produit);


--
-- TOC entry 2711 (class 2606 OID 16716)
-- Name: commander commander_flk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_flk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


-- Completed on 2022-10-17 09:13:38

--
-- PostgreSQL database dump complete
--


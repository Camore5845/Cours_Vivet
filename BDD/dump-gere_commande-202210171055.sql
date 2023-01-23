--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12
-- Dumped by pg_dump version 12.12

-- Started on 2022-10-17 10:55:42

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
2	2	18/04/2022	1
3	3	18/04/2022	2
4	4	18/04/2022	3
5	5	18/04/2022	4
6	6	18/04/2022	5
7	7	18/04/2022	6
8	8	18/04/2022	7
9	9	18/04/2022	2
10	10	18/04/2022	8
11	11	18/04/2022	9
12	12	18/04/2022	10
13	13	18/04/2022	12
14	14	18/04/2022	11
15	15	18/04/2022	13
16	16	18/04/2022	14
17	17	18/04/2022	16
18	18	18/04/2022	15
19	19	18/04/2022	18
20	20	18/04/2022	17
1	1	18/04/2022	1
\.


--
-- TOC entry 2840 (class 0 OID 16676)
-- Dependencies: 204
-- Data for Name: commander; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commander (id_commande, id_produit, quantite) FROM stdin;
1	1	1
2	14	3
3	4	60
4	8	120
5	5	120
6	6	600
7	7	4
8	21	5
9	6	6
10	25	25
11	18	16
12	17	35
13	30	60
14	1	2
15	1	90
16	1	150
17	2	22
18	3	22
19	1	24
20	13	25
1	2	900
2	4	45
3	3	215
4	4	235
5	9	325
6	8	365
7	24	513
8	24	356
9	26	95
10	28	65
11	27	322
12	30	233
13	14	231
14	4	65
15	5	95
16	6	65
17	3	12
18	2	32
19	29	56
20	24	45
1	28	123
2	15	32
3	12	12
4	11	32
5	10	12
6	10	32
7	30	312
8	8	21
9	7	23
10	9	32
11	6	21
12	3	32
13	1	23
14	3	12
15	9	645
16	2	64
17	6	62
18	5	62
19	3	26
20	20	262
1	21	316
2	23	261
3	16	12
4	19	8
5	17	21
6	12	23
7	12	12
8	13	232
9	15	65
10	16	2
11	15	61
12	12	12154
13	9	160
14	15	31
15	23	22
16	24	21
17	5	213
18	8	698
19	4	36
20	6	21
1	8	3
2	3	124
3	1	26
4	2	26
5	3	5
6	4	1
7	2	6
8	25	7
9	11	8
10	23	9
11	26	264
12	2	231
13	29	13
14	16	32
15	30	12
16	30	23
17	30	31
18	19	64
19	2	26
20	22	900
\.


--
-- TOC entry 2838 (class 0 OID 16655)
-- Dependencies: 202
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fournisseur (id, nom, tel, mail) FROM stdin;
4	4	4	4@4.test
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
1	1	1	1@1.test
2	2	1	2@2.test
3	3	1	3@3.test
\.


--
-- TOC entry 2841 (class 0 OID 16684)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produit (numero_produit, nom, prix) FROM stdin;
1	papier	2
2	eau	1
3	bouteille	1.50
4	crayon bleu	1.80
5	crayon rouge	1.75
6	crayon vert	1.70
7	crayon nor	1.75
8	gomme	1.30
9	trousse	3
10	crayon papier	1.20
11	surligneur	1.2
12	livre	15
13	cahier	3
14	regle	2
15	compas	3
16	equerre	2
17	colle	1.50
18	souris	10
19	ordinateur	900
20	clavier	20
21	ecran	180
22	disquedur	75
23	ssd	120
24	processeur	560
25	cable	20
26	casque	112
27	micro	80
28	bonbon	2
29	sac	60
30	telephone	1200
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


-- Completed on 2022-10-17 10:55:42

--
-- PostgreSQL database dump complete
--


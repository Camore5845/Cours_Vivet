--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12
-- Dumped by pg_dump version 12.12

-- Started on 2022-10-21 15:24:48

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

INSERT INTO public.commande VALUES (2, '2', '18/04/2022', 1);
INSERT INTO public.commande VALUES (3, '3', '18/04/2022', 2);
INSERT INTO public.commande VALUES (4, '4', '18/04/2022', 3);
INSERT INTO public.commande VALUES (5, '5', '18/04/2022', 4);
INSERT INTO public.commande VALUES (6, '6', '18/04/2022', 5);
INSERT INTO public.commande VALUES (7, '7', '18/04/2022', 6);
INSERT INTO public.commande VALUES (8, '8', '18/04/2022', 7);
INSERT INTO public.commande VALUES (9, '9', '18/04/2022', 2);
INSERT INTO public.commande VALUES (10, '10', '18/04/2022', 8);
INSERT INTO public.commande VALUES (11, '11', '18/04/2022', 9);
INSERT INTO public.commande VALUES (12, '12', '18/04/2022', 10);
INSERT INTO public.commande VALUES (13, '13', '18/04/2022', 12);
INSERT INTO public.commande VALUES (14, '14', '18/04/2022', 11);
INSERT INTO public.commande VALUES (15, '15', '18/04/2022', 13);
INSERT INTO public.commande VALUES (16, '16', '18/04/2022', 14);
INSERT INTO public.commande VALUES (17, '17', '18/04/2022', 16);
INSERT INTO public.commande VALUES (18, '18', '18/04/2022', 15);
INSERT INTO public.commande VALUES (19, '19', '18/04/2022', 18);
INSERT INTO public.commande VALUES (20, '20', '18/04/2022', 17);
INSERT INTO public.commande VALUES (1, '1', '18/04/2022', 1);


--
-- TOC entry 2840 (class 0 OID 16676)
-- Dependencies: 204
-- Data for Name: commander; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commander VALUES (1, 1, 1);
INSERT INTO public.commander VALUES (2, 14, 3);
INSERT INTO public.commander VALUES (3, 4, 60);
INSERT INTO public.commander VALUES (4, 8, 120);
INSERT INTO public.commander VALUES (5, 5, 120);
INSERT INTO public.commander VALUES (6, 6, 600);
INSERT INTO public.commander VALUES (7, 7, 4);
INSERT INTO public.commander VALUES (8, 21, 5);
INSERT INTO public.commander VALUES (9, 6, 6);
INSERT INTO public.commander VALUES (10, 25, 25);
INSERT INTO public.commander VALUES (11, 18, 16);
INSERT INTO public.commander VALUES (12, 17, 35);
INSERT INTO public.commander VALUES (13, 30, 60);
INSERT INTO public.commander VALUES (14, 1, 2);
INSERT INTO public.commander VALUES (15, 1, 90);
INSERT INTO public.commander VALUES (16, 1, 150);
INSERT INTO public.commander VALUES (17, 2, 22);
INSERT INTO public.commander VALUES (18, 3, 22);
INSERT INTO public.commander VALUES (19, 1, 24);
INSERT INTO public.commander VALUES (20, 13, 25);
INSERT INTO public.commander VALUES (1, 2, 900);
INSERT INTO public.commander VALUES (2, 4, 45);
INSERT INTO public.commander VALUES (3, 3, 215);
INSERT INTO public.commander VALUES (4, 4, 235);
INSERT INTO public.commander VALUES (5, 9, 325);
INSERT INTO public.commander VALUES (6, 8, 365);
INSERT INTO public.commander VALUES (7, 24, 513);
INSERT INTO public.commander VALUES (8, 24, 356);
INSERT INTO public.commander VALUES (9, 26, 95);
INSERT INTO public.commander VALUES (10, 28, 65);
INSERT INTO public.commander VALUES (11, 27, 322);
INSERT INTO public.commander VALUES (12, 30, 233);
INSERT INTO public.commander VALUES (13, 14, 231);
INSERT INTO public.commander VALUES (14, 4, 65);
INSERT INTO public.commander VALUES (15, 5, 95);
INSERT INTO public.commander VALUES (16, 6, 65);
INSERT INTO public.commander VALUES (17, 3, 12);
INSERT INTO public.commander VALUES (18, 2, 32);
INSERT INTO public.commander VALUES (19, 29, 56);
INSERT INTO public.commander VALUES (20, 24, 45);
INSERT INTO public.commander VALUES (1, 28, 123);
INSERT INTO public.commander VALUES (2, 15, 32);
INSERT INTO public.commander VALUES (3, 12, 12);
INSERT INTO public.commander VALUES (4, 11, 32);
INSERT INTO public.commander VALUES (5, 10, 12);
INSERT INTO public.commander VALUES (6, 10, 32);
INSERT INTO public.commander VALUES (7, 30, 312);
INSERT INTO public.commander VALUES (8, 8, 21);
INSERT INTO public.commander VALUES (9, 7, 23);
INSERT INTO public.commander VALUES (10, 9, 32);
INSERT INTO public.commander VALUES (11, 6, 21);
INSERT INTO public.commander VALUES (12, 3, 32);
INSERT INTO public.commander VALUES (13, 1, 23);
INSERT INTO public.commander VALUES (14, 3, 12);
INSERT INTO public.commander VALUES (15, 9, 645);
INSERT INTO public.commander VALUES (16, 2, 64);
INSERT INTO public.commander VALUES (17, 6, 62);
INSERT INTO public.commander VALUES (18, 5, 62);
INSERT INTO public.commander VALUES (19, 3, 26);
INSERT INTO public.commander VALUES (20, 20, 262);
INSERT INTO public.commander VALUES (1, 21, 316);
INSERT INTO public.commander VALUES (2, 23, 261);
INSERT INTO public.commander VALUES (3, 16, 12);
INSERT INTO public.commander VALUES (4, 19, 8);
INSERT INTO public.commander VALUES (5, 17, 21);
INSERT INTO public.commander VALUES (6, 12, 23);
INSERT INTO public.commander VALUES (7, 12, 12);
INSERT INTO public.commander VALUES (8, 13, 232);
INSERT INTO public.commander VALUES (9, 15, 65);
INSERT INTO public.commander VALUES (10, 16, 2);
INSERT INTO public.commander VALUES (11, 15, 61);
INSERT INTO public.commander VALUES (12, 12, 12154);
INSERT INTO public.commander VALUES (13, 9, 160);
INSERT INTO public.commander VALUES (14, 15, 31);
INSERT INTO public.commander VALUES (15, 23, 22);
INSERT INTO public.commander VALUES (16, 24, 21);
INSERT INTO public.commander VALUES (17, 5, 213);
INSERT INTO public.commander VALUES (18, 8, 698);
INSERT INTO public.commander VALUES (19, 4, 36);
INSERT INTO public.commander VALUES (20, 6, 21);
INSERT INTO public.commander VALUES (1, 8, 3);
INSERT INTO public.commander VALUES (2, 3, 124);
INSERT INTO public.commander VALUES (3, 1, 26);
INSERT INTO public.commander VALUES (4, 2, 26);
INSERT INTO public.commander VALUES (5, 3, 5);
INSERT INTO public.commander VALUES (6, 4, 1);
INSERT INTO public.commander VALUES (7, 2, 6);
INSERT INTO public.commander VALUES (8, 25, 7);
INSERT INTO public.commander VALUES (9, 11, 8);
INSERT INTO public.commander VALUES (10, 23, 9);
INSERT INTO public.commander VALUES (11, 26, 264);
INSERT INTO public.commander VALUES (12, 2, 231);
INSERT INTO public.commander VALUES (13, 29, 13);
INSERT INTO public.commander VALUES (14, 16, 32);
INSERT INTO public.commander VALUES (15, 30, 12);
INSERT INTO public.commander VALUES (16, 30, 23);
INSERT INTO public.commander VALUES (17, 30, 31);
INSERT INTO public.commander VALUES (18, 19, 64);
INSERT INTO public.commander VALUES (19, 2, 26);
INSERT INTO public.commander VALUES (20, 22, 900);


--
-- TOC entry 2838 (class 0 OID 16655)
-- Dependencies: 202
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fournisseur VALUES (4, '4', '4', '4@4.test');
INSERT INTO public.fournisseur VALUES (5, '5', '5', '5@5.test');
INSERT INTO public.fournisseur VALUES (6, '6', '6', '6@6.test');
INSERT INTO public.fournisseur VALUES (7, '7', '7', '7@7.test');
INSERT INTO public.fournisseur VALUES (8, '8', '8', '8@8.test');
INSERT INTO public.fournisseur VALUES (9, '9', '9', '9@9.test');
INSERT INTO public.fournisseur VALUES (10, '10', '10', '10@10.test');
INSERT INTO public.fournisseur VALUES (11, '11', '11', '11@11.test');
INSERT INTO public.fournisseur VALUES (12, '12', '12', '12@12.test');
INSERT INTO public.fournisseur VALUES (13, '13', '13', '13@13.test');
INSERT INTO public.fournisseur VALUES (14, '14', '14', '14@14.test');
INSERT INTO public.fournisseur VALUES (15, '15', '15', '15@15.test');
INSERT INTO public.fournisseur VALUES (16, '16', '16', '16@16.test');
INSERT INTO public.fournisseur VALUES (17, '17', '17', '17@17.test');
INSERT INTO public.fournisseur VALUES (18, '18', '18', '18@18.test');
INSERT INTO public.fournisseur VALUES (1, '1', '1', '1@1.test');
INSERT INTO public.fournisseur VALUES (2, '2', '1', '2@2.test');
INSERT INTO public.fournisseur VALUES (3, '3', '1', '3@3.test');


--
-- TOC entry 2841 (class 0 OID 16684)
-- Dependencies: 205
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produit VALUES (1, 'papier', 2);
INSERT INTO public.produit VALUES (2, 'eau', 1);
INSERT INTO public.produit VALUES (3, 'bouteille', 1.50);
INSERT INTO public.produit VALUES (4, 'crayon bleu', 1.80);
INSERT INTO public.produit VALUES (5, 'crayon rouge', 1.75);
INSERT INTO public.produit VALUES (6, 'crayon vert', 1.70);
INSERT INTO public.produit VALUES (7, 'crayon nor', 1.75);
INSERT INTO public.produit VALUES (8, 'gomme', 1.30);
INSERT INTO public.produit VALUES (9, 'trousse', 3);
INSERT INTO public.produit VALUES (10, 'crayon papier', 1.20);
INSERT INTO public.produit VALUES (11, 'surligneur', 1.2);
INSERT INTO public.produit VALUES (12, 'livre', 15);
INSERT INTO public.produit VALUES (13, 'cahier', 3);
INSERT INTO public.produit VALUES (14, 'regle', 2);
INSERT INTO public.produit VALUES (15, 'compas', 3);
INSERT INTO public.produit VALUES (16, 'equerre', 2);
INSERT INTO public.produit VALUES (17, 'colle', 1.50);
INSERT INTO public.produit VALUES (18, 'souris', 10);
INSERT INTO public.produit VALUES (19, 'ordinateur', 900);
INSERT INTO public.produit VALUES (20, 'clavier', 20);
INSERT INTO public.produit VALUES (21, 'ecran', 180);
INSERT INTO public.produit VALUES (22, 'disquedur', 75);
INSERT INTO public.produit VALUES (23, 'ssd', 120);
INSERT INTO public.produit VALUES (24, 'processeur', 560);
INSERT INTO public.produit VALUES (25, 'cable', 20);
INSERT INTO public.produit VALUES (26, 'casque', 112);
INSERT INTO public.produit VALUES (27, 'micro', 80);
INSERT INTO public.produit VALUES (28, 'bonbon', 2);
INSERT INTO public.produit VALUES (29, 'sac', 60);
INSERT INTO public.produit VALUES (30, 'telephone', 1200);


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


-- Completed on 2022-10-21 15:24:48

--
-- PostgreSQL database dump complete
--


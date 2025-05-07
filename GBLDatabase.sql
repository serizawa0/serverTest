--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-07 09:20:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 225 (class 1259 OID 16474)
-- Name: Facture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Facture" (
    id integer NOT NULL,
    titre text NOT NULL,
    total integer NOT NULL,
    state text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public."Facture" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16465)
-- Name: FactureElement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FactureElement" (
    id integer NOT NULL,
    libelle text NOT NULL,
    nombre integer NOT NULL,
    montant integer NOT NULL,
    "factureId" integer NOT NULL
);


ALTER TABLE public."FactureElement" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16464)
-- Name: FactureElement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FactureElement_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FactureElement_id_seq" OWNER TO postgres;

--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 222
-- Name: FactureElement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FactureElement_id_seq" OWNED BY public."FactureElement".id;


--
-- TOC entry 224 (class 1259 OID 16473)
-- Name: Facture_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Facture_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Facture_id_seq" OWNER TO postgres;

--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 224
-- Name: Facture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Facture_id_seq" OWNED BY public."Facture".id;


--
-- TOC entry 219 (class 1259 OID 16402)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    "idUserCat" integer NOT NULL,
    password text NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16456)
-- Name: UserCategorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserCategorie" (
    "idUserCat" integer NOT NULL,
    "nomCat" text NOT NULL,
    autorisation integer NOT NULL
);


ALTER TABLE public."UserCategorie" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16455)
-- Name: UserCategorie_idUserCat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserCategorie_idUserCat_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserCategorie_idUserCat_seq" OWNER TO postgres;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 220
-- Name: UserCategorie_idUserCat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserCategorie_idUserCat_seq" OWNED BY public."UserCategorie"."idUserCat";


--
-- TOC entry 218 (class 1259 OID 16401)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO postgres;

--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 218
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- TOC entry 217 (class 1259 OID 16390)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- TOC entry 4665 (class 2604 OID 16477)
-- Name: Facture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Facture" ALTER COLUMN id SET DEFAULT nextval('public."Facture_id_seq"'::regclass);


--
-- TOC entry 4664 (class 2604 OID 16468)
-- Name: FactureElement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FactureElement" ALTER COLUMN id SET DEFAULT nextval('public."FactureElement_id_seq"'::regclass);


--
-- TOC entry 4662 (class 2604 OID 16405)
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- TOC entry 4663 (class 2604 OID 16459)
-- Name: UserCategorie idUserCat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategorie" ALTER COLUMN "idUserCat" SET DEFAULT nextval('public."UserCategorie_idUserCat_seq"'::regclass);


--
-- TOC entry 4833 (class 0 OID 16474)
-- Dependencies: 225
-- Data for Name: Facture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Facture" (id, titre, total, state, date, "userId") FROM stdin;
20	Achats 14	30000	validée	2025-05-02 06:51:59.149	12
\.


--
-- TOC entry 4831 (class 0 OID 16465)
-- Dependencies: 223
-- Data for Name: FactureElement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FactureElement" (id, libelle, nombre, montant, "factureId") FROM stdin;
26	Materiel 1	5	20000	20
27	materiel 2	1	10000	20
\.


--
-- TOC entry 4827 (class 0 OID 16402)
-- Dependencies: 219
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, name, email, "idUserCat", password) FROM stdin;
11	Naina	naina@gmail.com	4	naina
12	Serizawa	rakotomangatsilavina@gmail.com	5	serizawa
13	Hasina	hasina@gbline.mg	6	hasina
\.


--
-- TOC entry 4829 (class 0 OID 16456)
-- Dependencies: 221
-- Data for Name: UserCategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserCategorie" ("idUserCat", "nomCat", autorisation) FROM stdin;
4	DG	2
5	IT	0
6	Finance	1
\.


--
-- TOC entry 4825 (class 0 OID 16390)
-- Dependencies: 217
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
f7c83ef1-d2cc-4c29-b09c-3c22a84f3d60	af5bcbb7921880a25f12857577c0646d5be34873dd2d76120cc0ff1f5c75717b	2025-04-16 14:45:35.357429+03	20250416114533_init	\N	\N	2025-04-16 14:45:35.302417+03	1
cfed36cc-fea3-4229-8273-9bf5a6cf7771	e5c7e55061f9707ce1aa18d0e5ffe410300fcb19e86081df44827088881b99b4	2025-04-16 15:06:11.159155+03	20250416120609_init	\N	\N	2025-04-16 15:06:10.442109+03	1
fdb7743c-2112-4f6c-80e6-afcda66eca38	a3d34626ef0b0f38a84b090e47c63deebade8270a848d0d81c4cd8f251fc1525	2025-04-16 16:13:24.388577+03	20250416131322_init	\N	\N	2025-04-16 16:13:24.17791+03	1
59802772-54b9-4e82-ad1e-060886c1d53e	01baa06e3440df93a9fafcb9559b20ccf79ab06e978f2d42995d675d927fd895	2025-04-17 08:34:49.408319+03	20250417053448_init	\N	\N	2025-04-17 08:34:49.262886+03	1
14210ec1-5f2f-48d7-81a5-b917403f4e1f	807b7dae344e2343dbf2698cdd60ba506b898573fd8bd06da5eb6b4e1be89324	2025-04-17 11:17:06.67182+03	20250417081705_init	\N	\N	2025-04-17 11:17:06.520796+03	1
dae95889-4099-4b5f-9418-13cf9b62c8f2	44be1617d64f75fdb584ba4e86aba035c8992c29c32e59a1432aba5be6d2df0c	2025-04-17 11:40:55.226614+03	20250417084053_add_cascade_delete	\N	\N	2025-04-17 11:40:55.045196+03	1
df336c27-96d9-4548-b2c1-036e9ba74052	c6842445108b37fdcdb3d9fe7822c24bf005d1e02fc4c08c91c0ddb96558561d	2025-04-17 11:53:36.803109+03	20250417085335_init	\N	\N	2025-04-17 11:53:36.590563+03	1
33a8508e-8bbf-46b0-99a8-6458573679c1	4da087b12940ad61971f506ea9a237364c7d04d49b52ce31a9ceb5e1d9c432a7	2025-04-17 14:10:27.448548+03	20250417111025_init	\N	\N	2025-04-17 14:10:27.354481+03	1
fb8a8e0b-106f-4703-8bdb-770754e6042f	7340352d10cf8f260506304cb7208ff2e196a3305fbdd45582630164984d7944	2025-04-18 10:58:22.82598+03	20250418075821_init	\N	\N	2025-04-18 10:58:22.740863+03	1
\.


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 222
-- Name: FactureElement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FactureElement_id_seq"', 27, true);


--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 224
-- Name: Facture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Facture_id_seq"', 20, true);


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 220
-- Name: UserCategorie_idUserCat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserCategorie_idUserCat_seq"', 6, true);


--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 218
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 13, true);


--
-- TOC entry 4674 (class 2606 OID 16472)
-- Name: FactureElement FactureElement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FactureElement"
    ADD CONSTRAINT "FactureElement_pkey" PRIMARY KEY (id);


--
-- TOC entry 4676 (class 2606 OID 16481)
-- Name: Facture Facture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Facture"
    ADD CONSTRAINT "Facture_pkey" PRIMARY KEY (id);


--
-- TOC entry 4672 (class 2606 OID 16463)
-- Name: UserCategorie UserCategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserCategorie"
    ADD CONSTRAINT "UserCategorie_pkey" PRIMARY KEY ("idUserCat");


--
-- TOC entry 4670 (class 2606 OID 16409)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 4667 (class 2606 OID 16398)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4668 (class 1259 OID 17212)
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- TOC entry 4678 (class 2606 OID 17846)
-- Name: FactureElement FactureElement_factureId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FactureElement"
    ADD CONSTRAINT "FactureElement_factureId_fkey" FOREIGN KEY ("factureId") REFERENCES public."Facture"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4679 (class 2606 OID 18559)
-- Name: Facture Facture_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Facture"
    ADD CONSTRAINT "Facture_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4677 (class 2606 OID 16482)
-- Name: User User_idUserCat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_idUserCat_fkey" FOREIGN KEY ("idUserCat") REFERENCES public."UserCategorie"("idUserCat") ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2025-05-07 09:20:50

--
-- PostgreSQL database dump complete
--


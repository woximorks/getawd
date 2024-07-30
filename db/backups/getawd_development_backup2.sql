--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO root;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    article_title character varying,
    article_body text,
    article_description character varying,
    article_image_url character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.articles OWNER TO root;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO root;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: portfolio_cards; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.portfolio_cards (
    id bigint NOT NULL,
    portfolio_card_title character varying,
    portfolio_card_description text,
    portfolio_card_image_url character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.portfolio_cards OWNER TO root;

--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.portfolio_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_cards_id_seq OWNER TO root;

--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.portfolio_cards_id_seq OWNED BY public.portfolio_cards.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO root;

--
-- Name: site_vars; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.site_vars (
    id bigint NOT NULL,
    site_var_heading1 character varying,
    site_var_heading2 character varying,
    site_var_heading3 character varying,
    site_var_heading4 character varying,
    site_var_heading5 character varying,
    site_var_disclaimer1 character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.site_vars OWNER TO root;

--
-- Name: site_vars_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.site_vars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_vars_id_seq OWNER TO root;

--
-- Name: site_vars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.site_vars_id_seq OWNED BY public.site_vars.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: portfolio_cards id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.portfolio_cards ALTER COLUMN id SET DEFAULT nextval('public.portfolio_cards_id_seq'::regclass);


--
-- Name: site_vars id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.site_vars ALTER COLUMN id SET DEFAULT nextval('public.site_vars_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-07-29 23:59:49.888265	2024-07-29 23:59:49.888269
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.articles (id, article_title, article_body, article_description, article_image_url, created_at, updated_at) FROM stdin;
1	Rails Site is Live!	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	This site is now hosted on Rails as a Heroku app.	blog1	2024-07-30 03:07:05.766461	2024-07-30 03:07:05.766461
2	PostgreSQL	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	Connecting the Rails app to PostgreSQL, and some basic commands that are useful to me getting started	blog2	2024-07-30 03:11:04.034332	2024-07-30 03:11:04.034332
3	Project Spotlight - Beard Bros Dumpsters	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	One of the latest projects I've been working on! This project really demonstrates how easy it can be to implement Gems like Simple Calendar and Devise.	blog3	2024-07-30 03:19:54.3004	2024-07-30 03:19:54.3004
\.


--
-- Data for Name: portfolio_cards; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.portfolio_cards (id, portfolio_card_title, portfolio_card_description, portfolio_card_image_url, created_at, updated_at) FROM stdin;
1	Close Enough Fabrication	A website created as a way to showcase one of my favorite hobbies outside of web development, showcasing some of my many of my ongoing shop projects!	portfolio1	2024-07-30 02:20:37.739091	2024-07-30 02:20:37.739091
2	Beard Bros Dumpsters	A rails app created to help a company based out of Pennsylvania offering dumpster rental services, including delivery and junk removal assistance in the greater Pennsylvania area.	portfolio2	2024-07-30 02:20:37.758864	2024-07-30 02:20:37.758864
3	Heefusdeluxe	A comedian local to the Tacoma area doing shows here in the Northwest and beyond. Catch him hosting an open mic night at a local Comedy Club, a Super Funny one at that!	portfolio3	2024-07-30 02:46:19.462958	2024-07-30 02:46:19.462958
4	GhuackAMole	This is one of the first JavaScript projects created that I put my own spin on while following a freeCodeCamp tutorial. It's not real food. Do not eat. 1 click = 1 point. Can you get to 69? Click here to play!	portfolio4	2024-07-30 02:46:19.486273	2024-07-30 02:46:19.486273
5	Beard Industries	This website was built while familiarizing myself with the Bootstrap library, and later CSS media queries. It is now updated to a fully responsive design. Check it out!	portfolio5	2024-07-30 02:50:38.262454	2024-07-30 02:50:38.262454
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.schema_migrations (version) FROM stdin;
20240728173710
20240728173718
20240728173727
20240728183842
\.


--
-- Data for Name: site_vars; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.site_vars (id, site_var_heading1, site_var_heading2, site_var_heading3, site_var_heading4, site_var_heading5, site_var_disclaimer1, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.articles_id_seq', 3, true);


--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.portfolio_cards_id_seq', 5, true);


--
-- Name: site_vars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.site_vars_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: portfolio_cards portfolio_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.portfolio_cards
    ADD CONSTRAINT portfolio_cards_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: site_vars site_vars_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.site_vars
    ADD CONSTRAINT site_vars_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7 (Homebrew)
-- Dumped by pg_dump version 15.7 (Homebrew)

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
-- Name: getawd_development; Type: DATABASE; Schema: -; Owner: aaron
--

CREATE DATABASE getawd_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE getawd_development OWNER TO aaron;

\connect getawd_development

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: aaron
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO aaron;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: aaron
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


ALTER TABLE public.articles OWNER TO aaron;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: aaron
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO aaron;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaron
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: portfolio_cards; Type: TABLE; Schema: public; Owner: aaron
--

CREATE TABLE public.portfolio_cards (
    id bigint NOT NULL,
    portfolio_card_title character varying,
    portfolio_card_description text,
    portfolio_card_image_url character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.portfolio_cards OWNER TO aaron;

--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: aaron
--

CREATE SEQUENCE public.portfolio_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolio_cards_id_seq OWNER TO aaron;

--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaron
--

ALTER SEQUENCE public.portfolio_cards_id_seq OWNED BY public.portfolio_cards.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: aaron
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO aaron;

--
-- Name: site_vars; Type: TABLE; Schema: public; Owner: aaron
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


ALTER TABLE public.site_vars OWNER TO aaron;

--
-- Name: site_vars_id_seq; Type: SEQUENCE; Schema: public; Owner: aaron
--

CREATE SEQUENCE public.site_vars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_vars_id_seq OWNER TO aaron;

--
-- Name: site_vars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaron
--

ALTER SEQUENCE public.site_vars_id_seq OWNED BY public.site_vars.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: aaron
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


ALTER TABLE public.users OWNER TO aaron;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: aaron
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO aaron;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aaron
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: portfolio_cards id; Type: DEFAULT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.portfolio_cards ALTER COLUMN id SET DEFAULT nextval('public.portfolio_cards_id_seq'::regclass);


--
-- Name: site_vars id; Type: DEFAULT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.site_vars ALTER COLUMN id SET DEFAULT nextval('public.site_vars_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-07-28 17:35:03.342347	2024-07-28 17:35:03.342349
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.articles (id, article_title, article_body, article_description, article_image_url, created_at, updated_at) FROM stdin;
1	Blog Basics	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative	blog1	2024-07-28 18:21:27.838165	2024-07-28 18:21:27.838165
2	Blog Basics	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative	blog1	2024-07-28 18:21:27.841857	2024-07-28 18:21:27.841857
3	Blog Basics	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative	blog1	2024-07-28 18:21:27.843317	2024-07-28 18:21:27.843317
4	Blog Basics	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative	blog1	2024-07-28 18:21:27.844867	2024-07-28 18:21:27.844867
\.


--
-- Data for Name: portfolio_cards; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.portfolio_cards (id, portfolio_card_title, portfolio_card_description, portfolio_card_image_url, created_at, updated_at) FROM stdin;
1	Title	Description	portfolio1	2024-07-28 18:17:27.998385	2024-07-28 18:18:24.762995
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.schema_migrations (version) FROM stdin;
20240728173710
20240728173718
20240728173727
20240728183842
\.


--
-- Data for Name: site_vars; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.site_vars (id, site_var_heading1, site_var_heading2, site_var_heading3, site_var_heading4, site_var_heading5, site_var_disclaimer1, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: aaron
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaron
--

SELECT pg_catalog.setval('public.articles_id_seq', 4, true);


--
-- Name: portfolio_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaron
--

SELECT pg_catalog.setval('public.portfolio_cards_id_seq', 1, true);


--
-- Name: site_vars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaron
--

SELECT pg_catalog.setval('public.site_vars_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aaron
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: portfolio_cards portfolio_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.portfolio_cards
    ADD CONSTRAINT portfolio_cards_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: site_vars site_vars_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.site_vars
    ADD CONSTRAINT site_vars_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: aaron
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: aaron
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: aaron
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--


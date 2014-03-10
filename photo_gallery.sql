--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: galleries; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE galleries (
    id integer NOT NULL,
    name character(255)
);


--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE galleries_id_seq OWNED BY galleries.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE images (
    id integer NOT NULL,
    gallery_id integer NOT NULL,
    name character(255),
    description text,
    url character(255),
    likes integer DEFAULT 0
);


--
-- Name: images_gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE images_gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: images_gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE images_gallery_id_seq OWNED BY images.gallery_id;


--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE images_id_seq OWNED BY images.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY galleries ALTER COLUMN id SET DEFAULT nextval('galleries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);


--
-- Name: gallery_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY images ALTER COLUMN gallery_id SET DEFAULT nextval('images_gallery_id_seq'::regclass);


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY galleries (id, name) FROM stdin;
1	Cats                                                                                                                                                                                                                                                           
2	Dogs                                                                                                                                                                                                                                                           
3	Food                                                                                                                                                                                                                                                           
\.


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('galleries_id_seq', 3, true);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY images (id, gallery_id, name, description, url, likes) FROM stdin;
3	3	Bento                                                                                                                                                                                                                                                          	Calvin and Hobbes Bento	http://geek-news.mtv.com/wp-content/uploads/2011/11/calvin-and-hobbes-bento-box.jpg                                                                                                                                                                            	0
9	3	Sushi                                                                                                                                                                                                                                                          	Sushi	http://img.ivsky.com/img/tupian/pic/201008/26/yubaofan-006.jpg                                                                                                                                                                                                 	0
7	3	Pescado Taco                                                                                                                                                                                                                                                   	Josh loves this more than anything else in the world	http://newyorkstreetfood.com/wp-content/uploads/2011/03/pescado-taco.JPG                                                                                                                                                                                       	1
2	2	Doge                                                                                                                                                                                                                                                           	So Doge	http://noodlytime.com/postimages/sql-doge.png                                                                                                                                                                                                                  	1
6	2	Science Dog                                                                                                                                                                                                                                                    	More science	http://www.personal.psu.edu/afr3/blogs/siowfa13/Science-dog.jpg                                                                                                                                                                                                	1
13	3	Spaghetti with Meatballs                                                                                                                                                                                                                                       	Ooh its so good!	http://www.simplyrecipes.com/wp-content/uploads/2008/04/spaghetti-meatballs.jpg                                                                                                                                                                                	0
14	3	Guacamole                                                                                                                                                                                                                                                      	Sin tomates	http://www.simplyrecipes.com/wp-content/uploads/2008/04/spaghetti-meatballs.jpg                                                                                                                                                                                	0
16	2	Space                                                                                                                                                                                                                                                          	Not a tribble	http://images2.fanpop.com/images/photos/6300000/-Space-Dog-The-Enemy-Within-star-trek-the-original-series-6352214-694-530.jpg                                                                                                                                  	1
1	1	Grumpy Cat                                                                                                                                                                                                                                                     	He is grumpy	http://www.catster.com/files/original.jpg                                                                                                                                                                                                                      	3
4	1	Colonel Meow                                                                                                                                                                                                                                                   	Not happy	http://www.siliconrepublic.com/fs/img/rip%20colonel%20meow%20oatmeal.png                                                                                                                                                                                       	3
10	3	Radius Burger                                                                                                                                                                                                                                                  	This burger is amaze	http://aht.seriouseats.com/images/20081030-radius-beauty.jpg                                                                                                                                                                                                   	5
11	2	Puppy                                                                                                                                                                                                                                                          	\N	http://media-cache-ec0.pinimg.com/736x/54/09/57/540957445cc801dc8dacea03e67a86f9.jpg                                                                                                                                                                           	1
17	3	Space                                                                                                                                                                                                                                                          	Terrible food	http://www.nasa.gov/centers/johnson/images/content/137193main_Food_Tray_med.jpg                                                                                                                                                                                	0
18	3	Sushiritto                                                                                                                                                                                                                                                     	Not really like sushi at all	http://3.bp.blogspot.com/_qw88zBev50o/TT3zJPaTp9I/AAAAAAAAATI/cC5pI8kMOU8/s1600/IMG_1413.JPG                                                                                                                                                                   	0
8	1	Pirate Cat                                                                                                                                                                                                                                                     	Yarrrrrr	http://www.pleated-jeans.com/wp-content/uploads/2012/12/3scuez.jpeg                                                                                                                                                                                            	3
12	1	Lolcat                                                                                                                                                                                                                                                         	I can has cheesburger?	https://i.chzbgr.com/maxW500/875511040/h8EB4D6E9/                                                                                                                                                                                                              	3
15	1	Space                                                                                                                                                                                                                                                          	The Final Frontier	http://rack.0.mshcdn.com/media/ZgkyMDEyLzEyLzA0LzlkLzE1YmVzdGNhdG1lLmFIOC5qcGcKcAl0aHVtYgk5NTB4NTM0IwplCWpwZw/81fb5716/5f7/15-best-cat-memes-ever-meow--3283dd863e.jpg                                                                                         	2
5	1	Gorbypuff Thunderhorse                                                                                                                                                                                                                                         	Also not happy	https://pbs.twimg.com/media/As-uJgqCMAI0huB.jpg                                                                                                                                                                                                                	6
\.


--
-- Name: images_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('images_gallery_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('images_id_seq', 18, true);


--
-- Name: galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: images_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: images_gallery_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_gallery_id_fkey FOREIGN KEY (gallery_id) REFERENCES galleries(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


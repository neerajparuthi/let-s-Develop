CREATE TABLE public.books
(
  id integer NOT NULL,
  callno character varying(100) NOT NULL,
  name character varying(100) NOT NULL,
  author character varying(100) NOT NULL,
  publisher character varying(100) NOT NULL,
  quantity integer NOT NULL,
  issued integer NOT NULL,
  added_date timestamp(6) with time zone NOT NULL DEFAULT now(),
  CONSTRAINT id PRIMARY KEY (id),
  CONSTRAINT "uniq-1" UNIQUE (callno),
  CONSTRAINT "uniq-2" UNIQUE (callno)
)
WITH (
  OIDS=FALSE
);


INSERT INTO books (`id`, `callno`, `name`, `author`, `publisher`, `quantity`, `issued`, `added_date`) VALUES
(1, 'A@4', 'C In Depth', 'Shrivastav', 'BPB', 2, 2, '2016-07-19 19:37:56'),
(2, 'B@1', 'DBMS', 'Korth', 'Pearson', 3, 0, '2016-07-18 18:39:52'),
(3, 'G@12', 'Let''s see', 'Yashwant Kanetkar', 'BPB', 10, 0, '2016-07-18 23:02:14');
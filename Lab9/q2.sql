CREATE TABLE author
(
    authorid integer NOT NULL,
    authorname varchar(20),
    CONSTRAINT author_pkey PRIMARY KEY (authorid),
    CREATE ASSERTION count CHECK(
        (select count(bookname) FROM book) +
        (select count(authorname) FROM author) =< 10000
    )
)
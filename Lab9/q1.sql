Create TABLE Book
(
    bookid varchar(20) NOT NULL,
    authorid integer,
    amount numeric(7,2),
    rating integer,
    booktype varchar(25),
    CONSTRAINT book_pkey PRIMARY KEY (bookid),
    CONSTRAINT rating CHECK(rating>= 1 AND rating<= 10),
    CONSTRAINT amount CHECK( amount> 0),
    CONSTRAINT booktype_constraint CHECK( booktype IN
    ('Fiction-adulte','Non-fiction-adulte','Fiction-jeunesse','Non-fiction-jeunesse'); )
)
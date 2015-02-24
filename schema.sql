-- If you want to run this schema repeatedly you'll need to drop
-- the table before re-creating it. Note that you'll lose any
-- data if you drop and add a table:

DROP TABLE IF EXISTS news;

-- Define your schema here:

CREATE TABLE news (
  article varchar(255),
  domain varchar(255),
  username varchar(255),
  points integer,
  num_comments integer
);

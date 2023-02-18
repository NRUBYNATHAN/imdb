---question ;

-- IMDB Design a DB for IMDB 
--   1. Movie should have multiple media(Video or Image)
--   2. Movie can belongs to multiple Genre
--   3. Movie can have multiple reviews and Review can belongs to a user 
--   4. Artist can have multiple skills 
--   5. Artist can perform multiple role in a single film

-- answer;

-- movie table creation:

CREATE TABLE movie (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
Img BLOB,
 Genre TEXT,
  skill TEXT,
       Role text

  );

  --insert movie details in table

Insert into movie
VALUES
(1,"varisu","vijay","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","drama,action","singer,director","hero,son"),

(2,"thunivu","ajith","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","thriller,drama,action","singer,dancer","hero,son,friend"),

(3,"kgf","yash","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","drama,comedy,action","choreo,director","hero,son,uncle"),

(4,"thalaiva","vijay","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","drama,action,thriller","choreo,director","hero,friend"),

(5,"maha","rajni","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","drama,action,horrer","singer,director","hero,uncle");

---create user table

CREATE TABLE user (
    user_id INTEGER FOREIGN KEY,
    Review   text
  
  );

--insert user details in tables

Insert into user
VALUES
(1,"good,average,nice"),
(2,"average,nice,poor"),
(3,"good,poor,nice"),
(4,"average,poor"),
(5,"good,poor,nice");


---query

Select * from movie
Inner join user
On id = user_id

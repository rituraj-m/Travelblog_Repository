DROP TABLE IF EXISTS USER;

CREATE TABLE USER(user_id INT,
  password VARCHAR(80),
  email VARCHAR(25),
 username VARCHAR(40),
 name VARCHAR(50),
 last_name VARCHAR(45),
 active BOOLEAN);
 
 SELECT * FROM USER;
 
 DROP TABLE POST;
 CREATE TABLE POST(post_id INT, 
user_id INT, 
title VARCHAR(50),
body VARCHAR(600),
create_date DATE);

DROP TABLE COMMENT;
CREATE TABLE COMMENT(post_id INT,user_id INT, body VARCHAR(600), create_date DATE);
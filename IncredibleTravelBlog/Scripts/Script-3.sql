 DROP TABLE IF EXISTS TRUSER;
CREATE TABLE TRUSER(user_id INT,
  password VARCHAR(80),
  email VARCHAR(25),
 username VARCHAR(40),
 name VARCHAR(50),
 last_name VARCHAR(45),
 active BOOLEAN);
 

 INSERT INTO TRUSER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);
-- password in plaintext: "password"
INSERT INTO TRUSER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'johndoe@gmail.com', 'johndoe', 'John', 'Doe', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'ana@mail.com', 'ana', 'Ana', 'Surname', 1);

SELECT * FROM TRUSER;

----Role
DROP TABLE IF EXISTS TRROLE;
CREATE TABLE TRROLE(role_id INT,
role VARCHAR(30));

INSERT INTO TRROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO TRROLE (role_id, role)
VALUES (2, 'ROLE_USER');

SELECT * FROM TRROLE;

------USER_ROLE
DROP TABLE TRUSER_ROLE;
CREATE TABLE TRUSER_ROLE(user_id INT,role_id INT);

INSERT INTO TRUSER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO TRUSER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO TRUSER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO TRUSER_ROLE (user_id, role_id)
VALUES (3, 2);

SELECT * FROM TRUSER_ROLE;


     
/*
CREATE TABLE USER (
id INT AUTO_INCREMENT,
mame VARCHAR(60),
PASSWORD VARCHAR(12),
email VARCHAR(30),
 PRIMARY KEY (id)
);



INSERT INTO USER (mame, PASSWORD, email) VALUES
('user1', '2345yasin', 'email@gmail.com'),
('user2', '2345yasin', 'email@gmail2.com'),
('user3', '2345yasin', 'email@gmail3.com'),
('user4', '2345yasin', 'email@gmail4.com');
-----------------------------------------------------
*/
/*
CREATE TABLE CATEGORES(
id_cat INT AUTO_INCREMENT,
mame_cat VARCHAR(60),
 PRIMARY KEY (id_cat)
);


INSERT INTO categores(mame_cat)VALUES
('cat1'),
('cat1'),
('cat1'),
('cat1');
-----------------------------------------------------
*/


/*
CREATE TABLE Sub_Categories (
    id_sub_cat INT AUTO_INCREMENT,
    name_sub_cat VARCHAR(60),
    id_cat INT, 
    PRIMARY KEY (id_sub_cat),
    FOREIGN KEY (id_cat) REFERENCES CATEGORES(id_cat)
);
-----------------------------------------------------


INSERT INTO sub_categories(name_sub_cat,id_cat)VALUES
('sub_cat1',1),
('sub_cat2',2),
('sub_cat3',3),('sub_cat4',1);
-----------------------------------------------------
*/


/*
CREATE TABLE project (
    id_project INT AUTO_INCREMENT,
    titre VARCHAR(60),
    id_cat INT, 
    id_sub_cat INT ,
    id INT,
    description VARCHAR(90),
    PRIMARY KEY (id_project),
    FOREIGN KEY (id_cat) REFERENCES CATEGORES(id_cat),
    FOREIGN KEY (id_sub_cat) REFERENCES Sub_Categories (id_sub_cat),
    FOREIGN KEY (id) REFERENCES USER (id)
);

INSERT INTO project (titre, id_cat, id_sub_cat, id, description) VALUES
('Project1', 1, 5, 1, 'Description1'),
('Project2', 2, 6, 2, 'Description2'),
('Project3', 3, 7, 3, 'Description3');
-----------------------------------------------------
*/
/*
CREATE TABLE Freelances(
Id_freelance int AUTO_INCREMENT,
name_freelince VARCHAR(50),
skills VARCHAR(300),
id INT,
PRIMARY KEY (Id_freelance),
FOREIGN KEY (id) REFERENCES USER (id)
);

INSERT INTO freelances(name_freelince,skills,id) VALUES
('freelincer1','skill1',1),
('freelincer2','skill2',1),
('freelincer2','skill2',2);
-----------------------------------------------------
*/

/*
CREATE TABLE Offre(
Id_offer int AUTO_INCREMENT,
Amount INT (50),
Deadline date,
id_project INT,
Id_freelance INT ,
PRIMARY KEY (Id_offer),
FOREIGN KEY (Id_freelance) REFERENCES Freelances (Id_freelance),
FOREIGN KEY (id_project) REFERENCES project (id_project)
);

INSERT INTO Offres (Amount, Deadline, id_project, Id_freelance) VALUES
(133, '2024-04-03', 34, 1),
(33, '2023-04-03', 35, 3),
(46, '2024-04-03', 36, 2);
SELECT * FROM Offres
-----------------------------------------------------
*/

/*
CREATE TABLE Offre(
Id_offer int AUTO_INCREMENT,
Amount INT (50),
Deadline date,
id_project INT,
Id_freelance INT ,
PRIMARY KEY (Id_offer),
FOREIGN KEY (Id_freelance) REFERENCES Freelances (Id_freelance),
FOREIGN KEY (id_project) REFERENCES project (id_project)
);
*/

/*
INSERT INTO testimoniales (commente,id)VALUES
('coment1',1),
('coment2',2),
('coment3',3),
('coment4',3);
*/
-----------------------------------------------------

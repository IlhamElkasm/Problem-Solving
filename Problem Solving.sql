use exampl;


CREATE TABLE Invites (
    id_invite INT PRIMARY KEY,
    nom VARCHAR(50),
    statut VARCHAR(50)
);

INSERT INTO exampl.Invites (id_invite, nom, statut) VALUES (1,'Jean Dupont','Suspect');
INSERT INTO exampl.Invites (id_invite, nom, statut) VALUES (2,'Marie Curie','Innocent');
INSERT INTO exampl.Invites (id_invite, nom, statut) VALUES (3,'Albert Einstein','Suspect');
INSERT INTO exampl.Invites (id_invite, nom, statut) VALUES (4,'Isaac Newton','Innocent');
INSERT INTO exampl.Invites (id_invite, nom, statut) VALUES (5,'Niels Bohr','Suspect');

select * from Invites;
select  nom ,statut from Invites;


 select COUNT(id_invite) AS alias 
 from Invites;
 
 select COUNT(id_invite) AS alias
  from Invites where (statut = 'Suspect');

CREATE TABLE Rooms (
    id_room INT PRIMARY KEY,
    nom VARCHAR(50)
);
INSERT INTO rooms (id_room, nom) VALUES (1,'Salle de Bal');
INSERT INTO rooms (id_room, nom) VALUES (2,'Bibliothèque');
INSERT INTO rooms (id_room, nom) VALUES (3,'Cuisine');
INSERT INTO rooms (id_room, nom) VALUES (4,'Salon');
INSERT INTO rooms (id_room, nom) VALUES (5,'Jardin');


CREATE TABLE Mouvements (
    id INT PRIMARY KEY,
    id_invite INT,
    id_room INT,
    time date,
    FOREIGN KEY (id_invite) REFERENCES Invites(id_invite),
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

INSERT INTO exampl.Mouvements (id,  id_invite, id_room, time) VALUES( 1, 1, '2023-06-01');

CREATE TABLE Objets (
    id_objet INT PRIMARY KEY,
    nom_objet VARCHAR(50),
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

INSERT INTO exampl.Objets (id_objet, nom_objet, id_room) VALUES (1,'Vase Ancien', 1);
INSERT INTO exampl.Objets (id_objet, nom_objet, id_room) VALUES (2,'Tableau de Maître', 2);
INSERT INTO exampl.Objets (id_objet, nom_objet, id_room) VALUES (3,'Statue en Bronze', 3);
INSERT INTO exampl.Objets (id_objet, nom_objet, id_room) VALUES (4,'Coffre à Bijoux', 2);
INSERT INTO exampl.Objets (id_objet, nom_objet, id_room) VALUES (5,'Lampe en Cristal', 4);

CREATE TABLE Indices (
    id_indice INT PRIMARY KEY,
    description TEXT,
    id_room INT,
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);




INSERT INTO Movements (id_mouvement,  id_invite, room_id, time) VALUES
( 1, 1, '2023-06-01'),
(2, 1, '2023-06-01'),
(3, 2, '2023-06-01'),
(4, 3, '2023-06-01'),
(1, 2, '2023-06-02');
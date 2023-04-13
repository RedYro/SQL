/**
* Objectif : Créer une base de données haribo dont la modélisation est ci-dessous, les étapes sont détaillées ensuite.
*/

/**
 -> table stagiaires
+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_stagiaire  | int(11)        | NO   | PRI  |         | auto_increment |
| prenom        | varchar(100)   | NO   |      | NULL    |                |
| yeux          | varchar(30)    | NO   |      | NULL    |                |
| genre         | enum('h','f')  | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+

-> table bonbons
+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_bonbon     | int(11)        | NO   | PRI  |         | auto_increment |
| nom           | varchar(100)   | NO   |      | NULL    |                |
| saveur        | varchar(100)   | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+
 
-> table mange_bonbon
+---------------+----------------+------+------+---------+----------------+
| Field         | Type           | Null | Key  | Default | Extra          |
+---------------+----------------+------+------+---------+----------------+
| id_manger     | int(11)        | NO   | PRI  |         | auto_increment |
| id_bonbon     | int(11)        | YES  |      | NULL    |                |
| id_stagiaire  | int(11)        | YES  |      | NULL    |                |
| date_manger   | date           | NO   |      | NULL    |                |
| quantite      | int(11)        | NO   |      | NULL    |                |
+---------------+----------------+------+------+---------+----------------+

*/

/**
* REQUETES A EFFECTUER dans le SHELL(terminal)
*/

--1-- lister toutes les BDD de PHPMyAdmin
-- MariaDB [(none)]> SHOW DATABASES
--     -> ;
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | boutique           |
-- | entreprise         |
-- | evry               |
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | phpmyadmin         |
-- | test               |
-- | test_terminal      |
-- +--------------------+
-- 9 rows in set (0.001 sec)

--2-- Créer une base de données SQL nommée HARIBO
-- MariaDB [(none)]> CREATE DATABASE HARIBO;
-- Query OK, 1 row affected (0.001 sec)

--3-- Créer les tables stagiaire, bonbon et mange_bonbon
-- MariaDB [HARIBO]> CREATE TABLE stagiaire(id_users int(11) NOt NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), color VARCHAR(20), sexe ENUM('f', 'm')); 

-- MariaDB [HARIBO]> CREATE TABLE bonbons(id_bonbon int(11) NOt NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), goût VARCHAR(20)); 

-- MariaDB [HARIBO]> CREATE TABLE mange_bonbon(id_manger int(11) NOt NULL AUTO_INCREMENT PRIMARY KEY, id_bonbon int(11) NULL, id_stagiaire int(11) NULL, date_manger DATE NULL, quantite INT(11));

--4--Insérer dans ces tables les informations suivantes:

-- INSERT INTO stagiaire (name, color, sexe) VALUES ('Jhordan', 'marron', 'm'),('MohamedA', 'marron', 'm'),('Anas','marron','m'),('MohamedB','marron','m'),('Mehdi','marron','m'),('Mathieu','marron','m'),('Hakim','marron','m'),('Sonia','marron','f'),('Julie','marron','f'),('Assa','marron','f'),('Magalie','marron','f'),('Yvette','marron','f');
-- -> table stagiaire
-- ('jhordan', 'marron','m'),('MohamedA', 'marron','m'),('Anas', 'marron','m'),
-- ('MohamedB', 'marron','m'),('Mehdi', 'marron','m'),('Mathieu', 'marron','m'),
-- ('Hakim', 'marron','m'),('Sonia', 'marron','f'),('Julie', 'marron','f'),
-- ('Assa', 'marron','f'), ('Magalie', 'marron','f'),('Yvette', 'marron','f')

-- INSERT INTO bonbons (name, goût) VALUES ('dragibus', 'cola'),('tagada', 'fraise'),('bams','banane'),('rotella','reglisse'),('floppys','sucre'),('rainbollows','marshmallow'),('Hakim','cerise'),('oursor','fruits'),('croco','fruits'),('oeufoplat','guimauve');
-- -> table bonbon 
-- ('dragibus', 'cola'), ('tagada', 'fraise'), ('bams', 'banane'),('rotella', 'reglisse'),('floppys', 'sucre'),('rainbollows', 'marshmallow'),('bigharri', 'cerise'), ('oursor', 'fruits'),('croco', 'fruits'),('oeufoplat', 'guimauve'),
-- ('flanbotti', 'caramel')

-- INSERT INTO mange_bonbon (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (4, 7, '2018-12-20', 5),(1, 1, '2018-12-05', 5),(2, 2,'2018-12-03', 5),(5, 4, '2018-12-18', 5),(6, 5,'2018-12-18', 5),(7, 6, '2018-12-22', 5),(8, 8, '2018-12-25', 5),(9, 9,'2018-12-24', 5),(10, 10 ,'2018-12-01', 5),(11, 11, '2018-12-06', 5);
-- -> table mange bonbon 
-- (4,7,'2018-12-20', 5),(1,1,'2018-12-05', 5),(2,2,'2018-12-03', 5),(3,3,'2018-12-04', 5),(5,4,'2018-12-15', 5),(6,5,'2018-12-18', 5),(7,6,'2018-12-22', 5),(8,8,'2018-12-25', 5),(9,9,'2018-12-24', 5),(10,10,'2018-12-01', 5),(11,11,'2018-12-06', 5)


--5-- Lister les tables de la BDD *haribo*
-- SHOW TABLES;
-- +------------------+
-- | Tables_in_haribo |
-- +------------------+
-- | bonbons          |
-- | mange_bonbon     |
-- | stagiaire        |
-- +------------------+

--6-- voir les paramètres de la table *bonbon*
-- SELECT * FROM bonbons;
-- +-----------+-------------+-------------+
-- | id_bonbon | name        | goût        |
-- +-----------+-------------+-------------+
-- |         1 | dragibus    | cola        |
-- |         2 | tagada      | fraise      |
-- |         3 | bams        | banane      |
-- |         4 | rotella     | reglisse    |
-- |         5 | floppys     | sucre       |
-- |         6 | rainbollows | marshmallow |
-- |         7 | Hakim       | cerise      |
-- |         8 | oursor      | fruits      |
-- |         9 | croco       | fruits      |
-- |        10 | oeufoplat   | guimauve    |
-- +-----------+-------------+-------------+

--7-- Sélectionner tous les champs de tous les enregistrements de la table *stagiaire*
-- SELECT * FROM stagiaire; 
-- +----------+----------+--------+------+
-- | id_users | name     | color  | sexe |
-- +----------+----------+--------+------+
-- |        1 | Jhordan  | marron | m    |
-- |        2 | MohamedA | marron | m    |
-- |        3 | Anas     | marron | m    |
-- |        4 | MohamedB | marron | m    |
-- |        5 | Mehdi    | marron | m    |
-- |        6 | Mathieu  | marron | m    |
-- |        7 | Hakim    | marron | m    |
-- |        8 | Sonia    | marron | f    |
-- |        9 | Julie    | marron | f    |
-- |       10 | Assa     | marron | f    |
-- |       11 | Magalie  | marron | f    |
-- |       12 | Yvette   | marron | f    |
-- +----------+----------+--------+------+

--8-- Rajouter un nouveau stagiaire *Patriiiick* en forçant la numérotation de l'id
-- INSERT INTO stagiaire (id_users , name, color, sexe) VALUES (100, 'Patriiiick', 'marron', 'm');  

--9-- Rajouter un nouveau stagiaire *Mila* SANS forcer la numérotation de l'id
-- INSERT INTO stagiaire (name, color, sexe) VALUES ('Mila', 'marron', 'f'); 

--10-- Changer le prénom du stagiaire qui a l'id 100 de *Patriiiick* à *Patrick*
-- UPDATE stagiaire SET name = 'Patrick' WHERE name = 'Patriiiick';  

--11-- Rajouter dans la table manger que Patrick a mangé 5 Tagada purple le 15 septembre
-- INSERT INTO mange_bonbon (id_bonbon, id_stagiaire, date_manger, quantite) VALUES (2, 100, '2018-09-15', 5); 

--12-- Sélectionner tous les noms des bonbons
-- SELECT name FROM bonbons;
-- +-------------+
-- | name        |
-- +-------------+
-- | dragibus    |
-- | tagada      |
-- | bams        |
-- | rotella     |
-- | floppys     |
-- | rainbollows |
-- | bigharri    |
-- | oursor      |
-- | croco       |
-- | oeufoplat   |
-- +-------------+

--13-- Sélectionner tous les noms des bonbons en enlevant les doublons

-- SELECT name FROM bonbons GROUP BY name; 
-- +-------------+
-- | name        |
-- +-------------+
-- | bams        |
-- | bigharri    |
-- | croco       |
-- | dragibus    |
-- | floppys     |
-- | oeufoplat   |
-- | oursor      |
-- | rainbollows |
-- | rotella     |
-- | tagada      |
-- +-------------+

--14-- Récupérer les couleurs des yeux des stagiaires (Sélectionner plusieurs champs dans une table)
-- SELECT color , name FROM stagiaire;
-- +--------+----------+
-- | color  | name     |
-- +--------+----------+
-- | marron | Jhordan  |
-- | marron | MohamedA |
-- | marron | Anas     |
-- | marron | MohamedB |
-- | marron | Medhi    |
-- | marron | Mathieu  |
-- | marron | Hakim    |
-- | marron | Sonia    |
-- | marron | Julie    |
-- | marron | Assa     |
-- | marron | Magalie  |
-- | marron | Yvette   |
-- | marron | Patrick  |
-- | marron | Mila     |
-- +--------+----------+

--15-- Dédoublonner un résultat sur plusieurs champs
-- SELECT DISTINCT(color) FROM stagiaire;
-- +--------+
-- | color  |
-- +--------+
-- | marron |
-- +--------+

--16-- Sélectionner le stagiaire qui a l'id 5
-- SELECT name FROM stagiaire WHERE id_users = 5;
-- +-------+
-- | name  |
-- +-------+
-- | Medhi |
-- +-------+

--17-- Sélectionner tous les stagiaires qui ont les yeux marrons
-- SELECT name, color FROM stagiaire WHERE color = 'marron';  
-- +----------+--------+
-- | name     | color  |
-- +----------+--------+
-- | Jhordan  | marron |
-- | MohamedA | marron |
-- | Anas     | marron |
-- | MohamedB | marron |
-- | Medhi    | marron |
-- | Mathieu  | marron |
-- | Hakim    | marron |
-- | Sonia    | marron |
-- | Julie    | marron |
-- | Assa     | marron |
-- | Magalie  | marron |
-- | Yvette   | marron |
-- +----------+--------+

--18-- Sélectionner tous les stagiaires dont l'id est plus grand que 9
-- SELECT name, id_users FROM stagiaire WHERE id_users > 9;
-- +---------+----------+
-- | name    | id_users |
-- +---------+----------+
-- | Assa    |       10 |
-- | Magalie |       11 |
-- | Yvette  |       12 |
-- | Patrick |      100 |
-- | Mila    |      101 |
-- +---------+----------+

--19-- Sélectionner tous les stagiaires SAUF celui dont l'id est 13 (soyons supersticieux !) :!\ il y a 2 façons de faire
-- SELECT name, id_users FROM stagiaire WHERE id_users != 13; 
-- +----------+----------+
-- | name     | id_users |
-- +----------+----------+
-- | Jhordan  |        1 |
-- | MohamedA |        2 |
-- | Anas     |        3 |
-- | MohamedB |        4 |
-- | Medhi    |        5 |
-- | Mathieu  |        6 |
-- | Hakim    |        7 |
-- | Sonia    |        8 |
-- | Julie    |        9 |
-- | Assa     |       10 |
-- | Magalie  |       11 |
-- | Yvette   |       12 |
-- | Patrick  |      100 |
-- | Mila     |      101 |
-- +----------+----------+

--20-- Sélectionner tous les stagiaires qui ont un id inférieur ou égal à 10
-- SELECT name, id_users FROM stagiaire WHERE id_users <= 10; 
-- +----------+----------+
-- | name     | id_users |
-- +----------+----------+
-- | Jhordan  |        1 |
-- | MohamedA |        2 |
-- | Anas     |        3 |
-- | MohamedB |        4 |
-- | Medhi    |        5 |
-- | Mathieu  |        6 |
-- | Hakim    |        7 |
-- | Sonia    |        8 |
-- | Julie    |        9 |
-- | Assa     |       10 |
-- +----------+----------+

--21-- Sélectionner tous les stagiaires dont l'id est compris entre 7 et 11
-- SELECT name, id_users FROM stagiaire WHERE id_users BETWEEN 7 AND 11;
-- +---------+----------+
-- | name    | id_users |
-- +---------+----------+
-- | Hakim   |        7 |
-- | Sonia   |        8 |
-- | Julie   |        9 |
-- | Assa    |       10 |
-- | Magalie |       11 |
-- +---------+----------+

--22-- Sélectionner les stagiaires dont le prénom commence par un *S*
-- SELECT name FROM stagiaire WHERE name LIKE 's%';
-- +-------+
-- | name  |
-- +-------+
-- | Sonia |
-- +-------+

--23-- Trier les stagiaires femmes par id décroissant
-- SELECT name, id_users FROM stagiaire WHERE sexe = 'f' ORDER BY id_users DESC; 
-- +---------+----------+
-- | name    | id_users |
-- +---------+----------+
-- | Mila    |      101 |
-- | Yvette  |       12 |
-- | Magalie |       11 |
-- | Assa    |       10 |
-- | Julie   |        9 |
-- | Sonia   |        8 |
-- +---------+----------+

--24-- Trier les stagiaires hommes par prénom dans l'ordre alphabétique
-- SELECT name FROM stagiaire WHERE sexe = 'm' ORDER BY name ASC;                
-- +----------+
-- | name     |
-- +----------+
-- | Anas     |
-- | Hakim    |
-- | Jhordan  |
-- | Mathieu  |
-- | Medhi    |
-- | MohamedA |
-- | MohamedB |
-- | Patrick  |
-- +----------+

--25-- Trier les stagiaires en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabétique
-- SELECT * FROM stagiaire  ORDER BY sexe ASC, color ASC; 
-- +----------+----------+--------+------+
-- | id_users | name     | color  | sexe |
-- +----------+----------+--------+------+
-- |        8 | Sonia    | marron | f    |
-- |       12 | Yvette   | marron | f    |
-- |       11 | Magalie  | marron | f    |
-- |       10 | Assa     | marron | f    |
-- |        9 | Julie    | marron | f    |
-- |      101 | Mila     | vert   | f    |
-- |      100 | Patrick  | bleu   | m    |
-- |        7 | Hakim    | marron | m    |
-- |        6 | Mathieu  | marron | m    |
-- |        5 | Medhi    | marron | m    |
-- |        4 | MohamedB | marron | m    |
-- |        3 | Anas     | marron | m    |
-- |        2 | MohamedA | marron | m    |
-- |        1 | Jhordan  | marron | m    |
-- +----------+----------+--------+------+

--26-- Limiter l'affichage d'une requête de sélection de tous les stagiaires aux 3 premires résultats
-- SELECT * FROM stagiaire LIMIT 0,3;                     
-- +----------+----------+--------+------+
-- | id_users | name     | color  | sexe |
-- +----------+----------+--------+------+
-- |        1 | Jhordan  | marron | m    |
-- |        2 | MohamedA | marron | m    |
-- |        3 | Anas     | marron | m    |
-- +----------+----------+--------+------+

--27-- Limiter l'affichage d'une requête de sélection de tous les stagiaires à partir du 3ème résultat et des 5 suivants
-- SELECT * FROM stagiaire LIMIT 2,6; 
-- +----------+----------+--------+------+
-- | id_users | name     | color  | sexe |
-- +----------+----------+--------+------+
-- |        3 | Anas     | marron | m    |
-- |        4 | MohamedB | marron | m    |
-- |        5 | Medhi    | marron | m    |
-- |        6 | Mathieu  | marron | m    |
-- |        7 | Hakim    | marron | m    |
-- |        8 | Sonia    | marron | f    |
-- +----------+----------+--------+------+

--28-- Afficher les 4 premiers stagiaires qui ont les yeux marron
-- SELECT name, color, id_users FROM stagiaire WHERE color = 'marron' LIMIT 0,4;  
-- +----------+--------+----------+
-- | name     | color  | id_users |
-- +----------+--------+----------+
-- | Jhordan  | marron |        1 |
-- | MohamedA | marron |        2 |
-- | Anas     | marron |        3 |
-- | MohamedB | marron |        4 |
-- +----------+--------+----------+

--29-- Pareil mais en triant les prénoms dans l'ordre alphabétique
-- SELECT name, color, id_users FROM stagiaire WHERE color = 'marron' AND id_users BETWEEN 0 AND 4  ORDER BY name ASC LIMIT 0,4;  
-- +----------+--------+----------+
-- | name     | color  | id_users |
-- +----------+--------+----------+
-- | Anas     | marron |        3 |
-- | Jhordan  | marron |        1 |
-- | MohamedA | marron |        2 |
-- | MohamedB | marron |        4 |
-- +----------+--------+----------+

--30-- Compter le nombre de stagiaires
-- SELECT COUNT(*) AS nombre_stagiaires FROM stagiaire; 
-- +-------------------+
-- | nombre_stagiaires |
-- +-------------------+
-- |                14 |
-- +-------------------+

--31-- Compter le nombre de stagiaires hommes mais en changeant le nom de la colonne de résultat par *nb_stagiaires_H*
-- SELECT COUNT(*) AS nb_stagiaires_H FROM stagiaire WHERE sexe = 'm';  
-- +-----------------+
-- | nb_stagiaires_H |
-- +-----------------+
-- |               8 |
-- +-----------------+

--32-- Compter le nombre de couleurs d'yeux différentes
-- SELECT COUNT(DISTINCT(color)) AS eyes_different_color FROM stagiaire; 
-- +----------------------+
-- | eyes_different_color |
-- +----------------------+
-- |                    3 |
-- +----------------------+

--33-- Afficher le prénom et les yeux du stagiaire qui a l'id le plus petit
-- SELECT MIN(id_users), name, color FROM stagiaire;
-- +---------------+---------+--------+
-- | MIN(id_users) | name    | color  |
-- +---------------+---------+--------+
-- |             1 | Jhordan | marron |
-- +---------------+---------+--------+

--34-- Afficher le prénom et les yeux du stagiaire qui a l'id le plus grand /!\ c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête)
-- SELECT name, color, id_users FROM stagiaire WHERE id_users = (SELECT MAX(id_users) FROM stagiaire); 
-- +------+-------+----------+
-- | name | color | id_users |
-- +------+-------+----------+
-- | Mila | vert  |      101 |
-- +------+-------+----------+

--35-- Afficher les stagiaires qui ont les yeux bleu et vert
-- SELECT color, name FROM stagiaire WHERE color != 'marron';        
-- +-------+---------+
-- | color | name    |
-- +-------+---------+
-- | bleu  | Patrick |
-- | vert  | Mila    |
-- +-------+---------+

--36-- A l'inverse maintenant, afficher les stagiaires qui n'ont pas les yeux bleu ni vert
-- SELECT color, name FROM stagiaire WHERE color = 'marron';  
-- +--------+----------+
-- | color  | name     |
-- +--------+----------+
-- | marron | Jhordan  |
-- | marron | MohamedA |
-- | marron | Anas     |
-- | marron | MohamedB |
-- | marron | Medhi    |
-- | marron | Mathieu  |
-- | marron | Hakim    |
-- | marron | Sonia    |
-- | marron | Julie    |
-- | marron | Assa     |
-- | marron | Magalie  |
-- | marron | Yvette   |
-- +--------+----------+

--37-- Afficher combien de bonbons ont été consommés au total
-- SELECT SUM(quantite) AS bonbon_manger FROM mange_bonbon; 
-- +---------------+
-- | bonbon_manger |
-- +---------------+
-- |            55 |
-- +---------------+

--38-- Afficher les saveurs des bonbons (sans doublons)
-- SELECT goût FROM bonbons GROUP BY goût;   
-- +-------------+
-- | goût        |
-- +-------------+
-- | banane      |
-- | cerise      |
-- | cola        |
-- | fraise      |
-- | fruits      |
-- | guimauve    |
-- | marshmallow |
-- | reglisse    |
-- | sucre       |
-- +-------------+
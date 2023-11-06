# Tytuł
## Poziom 2
### Poziom 3
#### Poziom 4

Lista zadań do wykonania 
* todo 1
* todo 2
  * todo 2.1

 1. Rozdział 1
 2. Rozdział 2  
    2.1 Rozdzial 2.1

    **Listing 1**  
    _Listing 2_  
    **_Listing 3_**  
    Kod......

    ```sql
    SELECT * FROM osoba;
    ```

    login as: infs_orzolw
infs_orzolw@uwm-a008-36.uwm.edu.pl's password:
Linux bad2 4.10.17-1-pve #1 SMP PVE 4.10.17-16 (Tue, 11 Jul 2017 09:55:44 +0200)                                      x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Mon Oct 30 11:38:51 2023 from 213.184.8.152
infs_orzolw@bad2:~$ mysql -u orzolw -p
Enter password:
ERROR 1045 (28000): Access denied for user 'orzolw'@'localhost' (using password:                                      YES)
infs_orzolw@bad2:~$ mysql -u orzolw -p
Enter password:
ERROR 1045 (28000): Access denied for user 'orzolw'@'localhost' (using password:                                      YES)
infs_orzolw@bad2:~$ mysql -p infs_orzolw -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 1505
Server version: 8.0.22 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use infs_orzolw
Database changed
mysql> create table postac ();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near ')' at                                      line 1
mysql> create table postac (
    -> id_postaci int primary key auto_increment,
    -> nazwa varchar(40),
    -> rodzaj enum("wiking","ptak","kobieta"),
    -> data_ur date,
    -> wiek int unsigned);
Query OK, 0 rows affected (0.04 sec)

mysql> show tables
    -> ;
+-----------------------+
| Tables_in_infs_orzolw |
+-----------------------+
| postac                |
+-----------------------+
1 row in set (0.00 sec)

mysql> show tabel postac
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near 'tabel                                      postac' at line 1
mysql> show create table postac
    -> ;
+--------+----------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     ---------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
+--------+----------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     ---------------+
| postac | CREATE TABLE `postac` (
  `id_postaci` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(40) DEFAULT NULL,
  `rodzaj` enum('wiking','ptak','kobieta') DEFAULT NULL,
  `data_ur` date DEFAULT NULL,
  `wiek` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_postaci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+--------+----------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     ---------------+
1 row in set (0.00 sec)

mysql> insert into postac values (default,"Bjorn","wiking","1700-10-23",323);
Query OK, 1 row affected (0.01 sec)

mysql> insert into postac(nazwa, rodzaj, wiek, data_ur) values ("Dawid","wiking"                                     ,"30","1993-04-13");
Query OK, 1 row affected (0.01 sec)

mysql> show table postac
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near 'posta                                     c' at line 1
mysql> select * from
    -> postac
    -> ;
+------------+-------+--------+------------+------+
| id_postaci | nazwa | rodzaj | data_ur    | wiek |
+------------+-------+--------+------------+------+
|          1 | Bjorn | wiking | 1700-10-23 |  323 |
|          2 | Dawid | wiking | 1993-04-13 |   30 |
+------------+-------+--------+------------+------+
2 rows in set (0.00 sec)

mysql> insert into postac("Drozd","ptak","4","1300-15-12");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near '"Droz                                     d","ptak","4","1300-15-12")' at line 1
mysql> insert into postac(default,"Drozd","ptak","4","1300-15-12");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near 'defau                                     lt,"Drozd","ptak","4","1300-15-12")' at line 1
mysql> insert into postac(default,"Drozd","ptak","1300-11-11","30");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near 'defau                                     lt,"Drozd","ptak","1300-11-11","30")' at line 1
mysql> insert into postac(default,"Drozd","ptak","1300-11-11",30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that                                      corresponds to your MySQL server version for the right syntax to use near 'defau                                     lt,"Drozd","ptak","1300-11-11",30)' at line 1
mysql> insert into postac values (default,"Drozd","ptak","1300-11-11",30);
Query OK, 1 row affected (0.00 sec)

mysql> insert into postac values (default, "Tesciowa","kobieta","1000-01-12",170                                     );
Query OK, 1 row affected (0.00 sec)

mysql> select * from
    -> postac;
+------------+----------+---------+------------+------+
| id_postaci | nazwa    | rodzaj  | data_ur    | wiek |
+------------+----------+---------+------------+------+
|          1 | Bjorn    | wiking  | 1700-10-23 |  323 |
|          2 | Dawid    | wiking  | 1993-04-13 |   30 |
|          3 | Drozd    | ptak    | 1300-11-11 |   30 |
|          4 | Tesciowa | kobieta | 1000-01-12 |  170 |
+------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

mysql> create table walizka;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table walizka
    -> (
    -> id_walizki int primary key auto_increment,
    -> pojemnosc int unsigned,
    -> kolor enum("rozowy","czerwony","teczowy","zolty"),
    -> id_wlasciciela int,
    -> foreign key(id_wlasciciela) references postac(id_postaci) on delete casca                                     de);
Query OK, 0 rows affected (0.10 sec)

mysql> show tables
    -> ;
+-----------------------+
| Tables_in_infs_orzolw |
+-----------------------+
| postac                |
| walizka               |
+-----------------------+
2 rows in set (0.00 sec)

mysql> show create table walizka
    -> ;
+---------+---------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     -+
| Table   | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+---------+---------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     -+
| walizka | CREATE TABLE `walizka` (
  `id_walizki` int NOT NULL AUTO_INCREMENT,
  `pojemnosc` int unsigned DEFAULT NULL,
  `kolor` enum('rozowy','czerwony','teczowy','zolty') DEFAULT NULL,
  `id_wlasciciela` int DEFAULT NULL,
  PRIMARY KEY (`id_walizki`),
  KEY `id_wlasciciela` (`id_wlasciciela`),
  CONSTRAINT `walizka_ibfk_1` FOREIGN KEY (`id_wlasciciela`) REFERENCES `postac`                                      (`id_postaci`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------+---------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     --------------------------------------------------------------------------------                                     -+
1 row in set (0.00 sec)

mysql> desc walizka;
+----------------+---------------------------------------------+------+-----+---                                     ------+----------------+
| Field          | Type                                        | Null | Key | De                                     fault | Extra          |
+----------------+---------------------------------------------+------+-----+---                                     ------+----------------+
| id_walizki     | int                                         | NO   | PRI | NU                                     LL    | auto_increment |
| pojemnosc      | int unsigned                                | YES  |     | NU                                     LL    |                |
| kolor          | enum('rozowy','czerwony','teczowy','zolty') | YES  |     | NU                                     LL    |                |
| id_wlasciciela | int                                         | YES  | MUL | NU                                     LL    |                |
+----------------+---------------------------------------------+------+-----+---                                     ------+----------------+
4 rows in set (0.00 sec)

mysql> desc walizka;
+----------------+---------------------------------------------+------+-----+---------+-------------                 ---+
| Field          | Type                                        | Null | Key | Default | Extra                           |
+----------------+---------------------------------------------+------+-----+---------+-------------                 ---+
| id_walizki     | int                                         | NO   | PRI | NULL    | auto_increme                 nt |
| pojemnosc      | int unsigned                                | YES  |     | NULL    |                                 |
| kolor          | enum('rozowy','czerwony','teczowy','zolty') | YES  |     | NULL    |                                 |
| id_wlasciciela | int                                         | YES  | MUL | NULL    |                                 |
+----------------+---------------------------------------------+------+-----+---------+-------------                 ---+
4 rows in set (0.01 sec)

mysql> mysql> alter table walizka alter kolor set default "rozowy";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'walizka alter kolor set default "rozowy"' at line 1
mysql> alter table walizka alter kolor set default "rozowy";
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show create table walizka
    -> ;
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table   | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| walizka | CREATE TABLE `walizka` (
  `id_walizki` int NOT NULL AUTO_INCREMENT,
  `pojemnosc` int unsigned DEFAULT NULL,
  `kolor` enum('rozowy','czerwony','teczowy','zolty') DEFAULT 'rozowy',
  `id_wlasciciela` int DEFAULT NULL,
  PRIMARY KEY (`id_walizki`),
  KEY `id_wlasciciela` (`id_wlasciciela`),
  CONSTRAINT `walizka_ibfk_1` FOREIGN KEY (`id_wlasciciela`) REFERENCES `postac` (`id_postaci`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> desc walizka
    -> ;
+----------------+---------------------------------------------+------+-----+---------+----------------+
| Field          | Type                                        | Null | Key | Default | Extra          |
+----------------+---------------------------------------------+------+-----+---------+----------------+
| id_walizki     | int                                         | NO   | PRI | NULL    | auto_increment |
| pojemnosc      | int unsigned                                | YES  |     | NULL    |                |
| kolor          | enum('rozowy','czerwony','teczowy','zolty') | YES  |     | rozowy  |                |
| id_wlasciciela | int                                         | YES  | MUL | NULL    |                |
+----------------+---------------------------------------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> insert into walizka values(default,"5kg","rozowy","Bjorn");
ERROR 1265 (01000): Data truncated for column 'pojemnosc' at row 1
mysql> insert into walizka values(default,5,"rozowy","Bjorn");
ERROR 1366 (HY000): Incorrect integer value: 'Bjorn' for column 'id_wlasciciela' at row 1
mysql> insert into walizka values(default,5,"rozowy",3);
Query OK, 1 row affected (0.02 sec)

mysql> desc walizka
    -> ;
+----------------+---------------------------------------------+------+-----+---------+----------------+
| Field          | Type                                        | Null | Key | Default | Extra          |
+----------------+---------------------------------------------+------+-----+---------+----------------+
| id_walizki     | int                                         | NO   | PRI | NULL    | auto_increment |
| pojemnosc      | int unsigned                                | YES  |     | NULL    |                |
| kolor          | enum('rozowy','czerwony','teczowy','zolty') | YES  |     | rozowy  |                |
| id_wlasciciela | int                                         | YES  | MUL | NULL    |                |
+----------------+---------------------------------------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> desc postac
    -> ;
+------------+---------------------------------+------+-----+---------+----------------+
| Field      | Type                            | Null | Key | Default | Extra          |
+------------+---------------------------------+------+-----+---------+----------------+
| id_postaci | int                             | NO   | PRI | NULL    | auto_increment |
| nazwa      | varchar(40)                     | YES  |     | NULL    |                |
| rodzaj     | enum('wiking','ptak','kobieta') | YES  |     | NULL    |                |
| data_ur    | date                            | YES  |     | NULL    |                |
| wiek       | int unsigned                    | YES  |     | NULL    |                |
+------------+---------------------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> show table
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show table postac;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'postac' at line 1
mysql> desc postac
    -> ;
+------------+---------------------------------+------+-----+---------+----------------+
| Field      | Type                            | Null | Key | Default | Extra          |
+------------+---------------------------------+------+-----+---------+----------------+
| id_postaci | int                             | NO   | PRI | NULL    | auto_increment |
| nazwa      | varchar(40)                     | YES  |     | NULL    |                |
| rodzaj     | enum('wiking','ptak','kobieta') | YES  |     | NULL    |                |
| data_ur    | date                            | YES  |     | NULL    |                |
| wiek       | int unsigned                    | YES  |     | NULL    |                |
+------------+---------------------------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> select * from walizka
    -> ;
+------------+-----------+--------+----------------+
| id_walizki | pojemnosc | kolor  | id_wlasciciela |
+------------+-----------+--------+----------------+
|          1 |         5 | rozowy |              3 |
+------------+-----------+--------+----------------+
1 row in set (0.00 sec)

mysql> create table izba(
    -> adres_budynku,
    -> nazwa_izby,
    -> primary key(adres_budynku, nazwa_izby),
    -> metraz int unsigned,
    -> id_wlasciciela int,
    -> foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
nazwa_izby,
primary key(adres_budynku, nazwa_izby),
metraz int unsigned,
id_wl' at line 2
mysql> create table izba( adres_budynku, nazwa_izby, primary key(adres_budynku, nazwa_izby), metraz int unsigned, id_wlasciciela int, foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', nazwa_izby, primary key(adres_budynku, nazwa_izby), metraz int unsigned, id_wl' at line 1
mysql> create table izba( adres_budynku int primary key, nazwa_izby int primary key, metraz int unsigned, id_wlascici
ela int, foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table "izba"( adres_budynku int primary key, nazwa_izby int primary key, metraz int unsigned, id_wlasciciela int, foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"izba"( adres_budynku int primary key, nazwa_izby int primary key, metraz int un' at line 1
mysql> create table 'izba'( adres_budynku int primary key, nazwa_izby int primary key, metraz int unsigned, id_wlasciciela int, foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''izba'( adres_budynku int primary key, nazwa_izby int primary key, metraz int un' at line 1
mysql> create table 'izba'( adres_budynku int not null, nazwa_izby int not null,primary key(adres_budynku, nazwa_izby
 metraz int unsigned, id_wlasciciela int, foreign key(id_wlasciciela) references postac(id_postaci) on delete cascade
;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''izba'( adres_budynku int not null, nazwa_izby int not null,primary key(adres_bu' at line 1
mysql> create table 'izba'( adres_budynku int not null, nazwa_izby int not null,primary key(adres_budynku, nazwa_izby) metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references postac(id_postaci) on delete cascade;  ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''izba'( adres_budynku int not null, nazwa_izby int not null,primary key(adres_bu' at line 1
mysql> create table "izba"( adres_budynku int not null, nazwa_izby int not null,primary key(adres_budynku, nazwa_izby) metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references postac(id_postaci) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"izba"( adres_budynku int not null, nazwa_izby int not null,primary key(adres_bu' at line 1
mysql> create table izba( adres_budynku int not null, nazwa_izby int not null,primary key(adres_budynku, nazwa_izby) metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references postac(id_postaci) on delete cascade);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references post' at line 1
mysql> create table izba( adres_budynku int not null, nazwa_izby varchar(40) not null,primary key(adres_budynku, nazw
a_izby) metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references postac(id_postaci) on delete casc
ade);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references post' at line 1
mysql> create table izba( adres_budynku varchar(40) not null, nazwa_izby varchar(40) not null,primary key(adres_budyn
ku, nazwa_izby), metraz int unsigned,wlasciciel int null, foreign key(wlasciciel) references postac(id_postaci) on de
lete cascade);
Query OK, 0 rows affected (0.05 sec)

mysql> desc izba
    -> ;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| adres_budynku | varchar(40)  | NO   | PRI | NULL    |       |
| nazwa_izby    | varchar(40)  | NO   | PRI | NULL    |       |
| metraz        | int unsigned | YES  |     | NULL    |       |
| wlasciciel    | int          | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table izba alter kolor set default "czarny";
ERROR 1054 (42S22): Unknown column 'kolor' in 'izba'
mysql> ADD [COLUMN] kolor_izby enum("czarny","rozowy","niebieski");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADD [COLUMN] kolor_izby enum("czarny","rozowy","niebieski")' at line 1
mysql> ADD COLUMN kolor_izby enum("czarny","rozowy","niebieski");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ADD COLUMN kolor_izby enum("czarny","rozowy","niebieski")' at line 1
mysql> alter table izba
    -> add kolor_izby enum("czarny","czerwony","niebieski");
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from
    -> izba
    -> ;
Empty set (0.00 sec)

mysql> desc izba
    -> ;
+---------------+---------------------------------------+------+-----+---------+-------+
| Field         | Type                                  | Null | Key | Default | Extra |
+---------------+---------------------------------------+------+-----+---------+-------+
| adres_budynku | varchar(40)                           | NO   | PRI | NULL    |       |
| nazwa_izby    | varchar(40)                           | NO   | PRI | NULL    |       |
| metraz        | int unsigned                          | YES  |     | NULL    |       |
| wlasciciel    | int                                   | YES  | MUL | NULL    |       |
| kolor_izby    | enum('czarny','czerwony','niebieski') | YES  |     | NULL    |       |
+---------------+---------------------------------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table izba alter kolor_izby set default "czarny";
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc izba
    -> ;
+---------------+---------------------------------------+------+-----+---------+-------+
| Field         | Type                                  | Null | Key | Default | Extra |
+---------------+---------------------------------------+------+-----+---------+-------+
| adres_budynku | varchar(40)                           | NO   | PRI | NULL    |       |
| nazwa_izby    | varchar(40)                           | NO   | PRI | NULL    |       |
| metraz        | int unsigned                          | YES  |     | NULL    |       |
| wlasciciel    | int                                   | YES  | MUL | NULL    |       |
| kolor_izby    | enum('czarny','czerwony','niebieski') | YES  |     | czarny  |       |
+---------------+---------------------------------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> drop kolor_izby
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'kolor_izby' at line 1
mysql> alter table izba
    -> drop culumn kolor_izby;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'kolor_izby' at line 2
mysql> alter table izba (culumn kolor_izby);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(culumn kolor_izby)' at line 1
mysql> ALTER TABLE izba DROP COLUMN kolor_izby;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc izba
    -> ;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| adres_budynku | varchar(40)  | NO   | PRI | NULL    |       |
| nazwa_izby    | varchar(40)  | NO   | PRI | NULL    |       |
| metraz        | int unsigned | YES  |     | NULL    |       |
| wlasciciel    | int          | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table izba add kolor_izby enum("czarny","czerwony","niebieski")after metraz;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc izba
    -> ;
+---------------+---------------------------------------+------+-----+---------+-------+
| Field         | Type                                  | Null | Key | Default | Extra |
+---------------+---------------------------------------+------+-----+---------+-------+
| adres_budynku | varchar(40)                           | NO   | PRI | NULL    |       |
| nazwa_izby    | varchar(40)                           | NO   | PRI | NULL    |       |
| metraz        | int unsigned                          | YES  |     | NULL    |       |
| kolor_izby    | enum('czarny','czerwony','niebieski') | YES  |     | NULL    |       |
| wlasciciel    | int                                   | YES  | MUL | NULL    |       |
+---------------+---------------------------------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table izba alter kolor_izby set default "czarny";
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>

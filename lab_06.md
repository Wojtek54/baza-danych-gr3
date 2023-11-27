##1.1
```sql
 use wikingowie;
 use infs_orzolw;
 select * from kreatura;
 #Jeżeli wybrana baza to baza imienna
 create table kreatura select * from wikingowie.kreatura;
 create table zasob select * from wikingowie.zasob;
 create table ekwipunek select * from wikingowie.ekwipunek;
#jeżeli wybrana baza to wikingowie
select * from zasob;
 select * from zasob where rodzaj = 'jedzenie';
 select * from zasob where idZasobu in (1,3,5);
 ```
 ##Zadanie 2
 ```sql
 Select * from kreatura where rodzaj != 'wiedzma' and udzwig >= 50;
 Select * from zasob where waga > 2 and waga < 5;
 Select * from kreatura where nazwa LIKE '%or%' and udzwig > 30 and udzwig < 70;
```
 
 ##Zadanie 3
 ```sql
 Select * from zasob where MONTH(dataPozyskania) in (7, 8);
 Select * from zasob where rodzaj is not null order by waga ASC;
 Select * from kreatura where dataUr is not null order by dataUr limit 5;
 ```
 
 
 ##Zadanie 4
 ```sql
 ###1
 select distinct rodzaj from zasob;
 select distinct(rodzaj) from kreatura;
 ###2
 select concat(idKreatury, nazwa) from kreatura;
 ###3
 Select nazwa, ilosc * waga as calkowita_waga from zasob where year(dataPozyskania) between 2000 and 2007;
 ```
 ##Zadanie 5
```sql
 select * from zasob;
 ###1
 select 'jedzenie', waga * 0.7 as masa_jedzenia, waga * 0.3 as masa_odpadów from zasob;
 ###2
 select * from zasob where rodzaj is null;
 ###3
 select distinct nazwa from zasob where nazwa LIKE 'Ba%' or nazwa LIKE '%os';
```

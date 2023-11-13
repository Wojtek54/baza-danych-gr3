# zadanie 5
# pkt 1
insert into postac values(default,'Asgard','wiking','1700-01-02',323);
insert into postac values(default,'Robert','wiking','1700-01-02',300);
insert into postac values(default,'Jerimo','wiking','1700-01-02',423);
insert into postac values(default,'Helga','wiking','1700-01-02',293);
insert into postac values(default,'Lola','wiking','1700-01-02',320);
# pk2 
create table statek (
nazwa_statku varchar(50) primary key,
 rodzaj_statku enum('karli','sneki','drakary'),
 data_wodowania date,
 max_ladownosc int unsigned);
#pkt 3
insert into statek values('Karlitos','karli','1750-10-10','30');
insert into statek values('Gigantus','drakary','1745-09-08','120')
#pkt 4
ALTER TABLE postac add column funkcja varchar(50)
#pkt5
update postac set funkcja= 'kapitan' where nazwa= 'Bjorn'
#pkt6 
#Dodaj klucz obcy w tabeli postac odwolujacy sie do statku
#krok 1 - dodanie odpowiedniej kolumny dla klucza obcego
alter table postac add column statek varchar(50);
#krok 2 - dodanie klucza obcego
alter table postac add foreign key (statek) references
 statek(nazwa_statku) on delete set null;
 #pkt 7 
 update postac set statek= 'Gigantus'  where nazwa = 'Drozd';
 update postac set statek= 'Gigantus'  where nazwa = 'Jerimo';
 update postac set statek= 'Gigantus'  where nazwa = 'Lola';
 update postac set statek= 'Karlitos'  where nazwa = 'Helga';
 update postac set statek= 'Karlitos'  where nazwa = 'Robert';
 update postac set statek= 'Karlitos'  where nazwa = 'Asgard';
 #pkt 8
 delete from izba where nazwa_izby='spizarnia';
 #pkt 9
 drop table izba;
 select * from izba;
 
 
 
 #lab_05
 #zadanie 1, pkt a
 select * from postac where rodzaj= 'wiking' order by wiek DESC;
 delete from postac where id_postaci in (12, 5);
 
 #pkt b
 # krok 1
 SET foreign_key_checks =0;
 alter table postac drop primary key;
 #problem 1 - atrybut auto_increment
 # kork 2
  alter table postac change id_postaci id_postaci int;
 # alter table .... change nazwa_kolumny nowa_nazwa + definicja
 alter table postac modify id_postaci int;
 # usuniecia kluczy obcych, ktore lacza sie z kolumna id_postaci
 # tabela walizka, przetwory
 alter table walizka drop foreign key walizka_ibfk_1;
 alter table przetwory drop foreign key przetwory_ibfk_2;
 #krok 3
 alter table postac drop primary key;
 
 show create table postac;
 desc postac;
 
 # Zadanie 2/alter
 #dodanie kolumny jako pierwszej w liscie kolumn w tabeli
 # dodanie kolumny  z nowym kluczem głównym na tabeli z danymi
 # prawdopodobnie sie nie powiedzie - wartosci null dla całej
 # kolumny nie sa przeciez unikalne, a to warunek klucza głównego
 alter table postac add pesel char(11) first;
 #aktualizacja danych w tabeli postaci
 update postac set pesel= '12345678910' + id_postaci;
 
 #dodanie primary key do tabeli postac
 alter table postac add primary key(pesel);
 
 #pkt c
 #krok 1 - dodanine nowego rodzaju postaci
 alter table postac modify rodzaj enum('wiking','ptak','kobieta','syrena');
 #krok 2 - dodanie Gertrudy
 insert into pos
 
 
 
 
 
 
 
 
 
 
 
 
 
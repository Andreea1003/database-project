drop table student;
create table student(
NR_LEGITIMATIE integer not null,
NUME varchar(20),
PRENUME varchar(20),
SECTIE varchar(20),
AN integer,
SEX varchar(20),
primary key (NR_LEGITIMATIE)
);

drop table disciplina;
create table disciplina(
COD_DISC integer not null,
ORE_CURS integer not null,
ORE_SEMINAR integer,
ORE_LABORATOR integer,
NR_CREDITE integer not null,
primary key (COD_DISC)
);

drop table catalog;
create table catalog(
NR_LEGITIMATIE integer not null,
COD_DISC integer not null,
DATA date,
NOTA real,
foreign key (COD_DISC) references disciplina(COD_DISC),
foreign key (NR_LEGITIMATIE) references student(NR_LEGITIMATIE)
);

drop table profesor;
create table profesor(
CNP integer not null,
NUME_PROFESOR varchar(20) not null,
PRENUME_PROFESOR varchar(20) not null,
TITLU varchar(20),
ADRESA varchar(100),
TELEFON integer,
primary key(CNP)
);

drop table predare;
create table predare(
CNP integer not null,
COD_DISC integer not null,
CURS integer not null,
SEMINAR integer,
LABORATOR integer,
foreign key (CNP) references profesor(CNP),
foreign key (COD_DISC) references disciplina(COD_DISC)
);

-- Adauga date in tabelul student
insert into student values(1, 'Ion', 'Matei', 'A1', 1, 'm');
insert into student values(2, 'Covei', 'Ioana', 'A1', 1, 'f');
insert into student values(3, 'Ion', 'Maia', 'B1', 1, 'f');
insert into student values(4, 'Irimia', 'Sandu', 'A2', 2, 'm');
insert into student values(5, 'Saman', 'Alina', 'B2', 2, 'f');
insert into student values(6, 'Ion', 'Manea', 'B2', 2, 'm');
insert into student values(7, 'Popescu', 'Damian', 'A3', 3, 'm');
insert into student values(8, 'Chiriac', 'Irina', 'A3', 3, 'f');
insert into student values(9, 'Bellu', 'Monica', 'B3', 3, 'm');

-- Adauga date in tabelul disciplina
insert into disciplina values (1, 2, 2, 2, 5);
insert into disciplina values (2, 3, 4, 5, 5);
insert into disciplina values (3, 1, 1, 1, 3);
insert into disciplina values (4, 4, 4, 4, 4);
insert into disciplina values (5, 1, 2, 1, 1);
insert into disciplina values (6, 3, 5, 2, 3);
insert into disciplina values (7, 2, 2, 2, 5);
insert into disciplina values (8, 2, 2, 2, 5);
insert into disciplina values (9, 2, 2, 2, 5);
insert into disciplina values (10, 2, 2, 2, 5);

-- Adauga date in tabelul catalog

insert into catalog values(1, 1, '2008-7-04', 10);
insert into catalog values(2, 1, '2008-7-04', 4);
insert into catalog values(3, 2, '2008-6-04', 3);
insert into catalog values(1, 3, '2008-7-04', 10);
insert into catalog values(2, 3, '2008-7-04', 5);
insert into catalog values(3, 1, '2008-7-04', 4);


insert into catalog values(2, 4, '2008-7-04', 4);
insert into catalog values(3, 5, '2008-6-04', 3);
insert into catalog values(1, 5, '2008-7-04', 10);
insert into catalog values(2, 6, '2008-7-04', 5);
insert into catalog values(3, 7, '2008-7-04', 4);


insert into catalog values(4, 2, '2009-7-04', 10);
insert into catalog values(5, 3, '2009-7-04', 8);
insert into catalog values(6, 1, '2009-7-04', 9);

insert into catalog values(4, 5, '2009-7-04', 10);
insert into catalog values(5, 4, '2009-7-04', 9);
insert into catalog values(6, 8, '2009-7-04', 6);

insert into catalog values(7, 3, '2010-7-04', 10);
insert into catalog values(8, 4, '2010-7-04', 10);
insert into catalog values(9, 1, '2010-7-04', 10);
insert into catalog values(7, 2, '2010-7-04', 10);
insert into catalog values(8, 1, '2010-7-04', 10);
insert into catalog values(9, 6, '2010-7-04', 10);


insert into catalog values(1, 2, '2008-7-04', 10);
insert into catalog values(2, 2, '2008-7-04', 4);
insert into catalog values(3, 2, '2008-6-04', 3);
insert into catalog values(1, 3, '2008-7-04', 10);
insert into catalog values(2, 3, '2008-7-04', 5);
insert into catalog values(3, 4, '2008-7-04', 4);


insert into catalog values(2, 9, '2008-7-04', 4);
insert into catalog values(3, 2, '2008-6-04', 3);
insert into catalog values(1, 5, '2008-7-04', 10);
insert into catalog values(2, 3, '2008-7-04', 5);
insert into catalog values(3, 8, '2008-7-04', 4);


insert into catalog values(4, 5, '2009-7-04', 10);
insert into catalog values(5, 2, '2009-7-04', 8);
insert into catalog values(6, 4, '2009-7-04', 9);

insert into catalog values(4, 7, '2009-7-04', 10);
insert into catalog values(5, 6, '2009-7-04', 9);
insert into catalog values(6, 2, '2009-7-04', 6);

insert into catalog values(7, 8, '2010-7-04', 5);
insert into catalog values(8, 3, '2010-7-04', 6);
insert into catalog values(9, 7, '2010-7-04', 10);
insert into catalog values(7, 9, '2010-7-04', 4);
insert into catalog values(8, 9, '2010-7-04', 9);
insert into catalog values(9, 9, '2010-7-04', 2);

-- Adauga date in tabelul profesor
insert into profesor values(1111111111, 'Balea', 'Moise', 'Dr', 'Str Florilor', 555234);
insert into profesor values(2111111111, 'Ionescu', 'Adriana', 'Dr', 'Str Cobuz', 555235);
insert into profesor values(1111411511, 'Popescu', 'Claudiu', 'Assist', 'Str Traian', 555232);
insert into profesor values(2111411513, 'Florea', 'Mariana', 'Assist', 'Str Stanceni', 550232);

-- Adauga date in tabelul predare
insert into predare values(1111111111, 1, 2, 2, 2);
insert into predare values(1111111111, 2, 3, 4, 5);
insert into predare values(1111111111, 3, 1, 1, 1);
insert into predare values(1111111111, 4, 4, 4, 4);
insert into predare values(1111411511, 5, 1, 2, 1);
insert into predare values(1111411511, 6, 3, 5, 2);
insert into predare values(2111111111, 7, 2, 2, 2);
insert into predare values(2111111111, 8, 2, 2, 2);
insert into predare values(2111411513, 9, 2, 2, 2);
insert into predare values(2111411513, 10, 2, 2, 2);

-- 2.Selectati studentii care s-au prezentat la o disciplina de mai mult de 2 ori
select NR_LEGITIMATIE, NUME, PRENUME from student
where NR_LEGITIMATIE in (select NR_LEGITIMATIE from catalog
group by NR_LEGITIMATIE, COD_DISC
having count(NR_LEGITIMATIE) > 2);

-- 3.Determinati studentii care au media > 8 in fiecare an
select NR_LEGITIMATIE, NUME, PRENUME from student
where NR_LEGITIMATIE in (select NR_LEGITIMATIE from catalog
group by NR_LEGITIMATIE, year(DATA)
having avg(NOTA) > 8);

--4.Crearea procedurii de calcul a sumei creditelor
CREATE PROCEDURE Procedura
    @Credite int  
AS   

    select s.NR_LEGITIMATIE, sum(case when c.NOTA >= 5 then d.NR_CREDITE else 0 end) as Credits from student s
	left join catalog c on s.NR_LEGITIMATIE=c.NR_LEGITIMATIE
	left join disciplina d on d.COD_DISC=c.COD_DISC
	group by s.NR_LEGITIMATIE
	having sum(case when c.NOTA >= 5 then d.NR_CREDITE else 0 end) >= @Credite
GO  


EXEC Procedura @Credite=10;



--5.Disciplinele cu cei mai multi restantieri
select distinct top 2 d.COD_DISC, count(*) from disciplina d
join catalog c on d.COD_DISC=c.COD_DISC
group by c.NR_LEGITIMATIE, d.COD_DISC, c.NOTA
having avg(c.NOTA) < 5
order by 2 desc;

--6.Crearea vederii
create view viewnote as
select s.NUME, s.PRENUME, s.AN, s.SECTIE, c.NOTA from catalog c
left join student s on c.NR_LEGITIMATIE=s.NR_LEGITIMATIE
group by s.AN, s.SECTIE,  c.NOTA, s.NUME, s.PRENUME;

--7.Profesorii cu cei mai multi restantieri
select top 2 p.CNP, p.NUME_PROFESOR, p.PRENUME_PROFESOR, count(distinct c.NR_LEGITIMATIE) from disciplina d
join catalog c on d.COD_DISC=c.COD_DISC
join predare pr on pr.COD_DISC=c.COD_DISC
join profesor p on p.CNP=pr.CNP
group by p.CNP, p.NUME_PROFESOR, p.PRENUME_PROFESOR
having avg(c.NOTA) < 5
order by 4 desc;

--8.Studentii cu mai mult de 4 examene nepromovate
select distinct s.NUME, s.PRENUME, s.AN, s.SECTIE, count(*) as Failed from catalog c
left join student s on c.NR_LEGITIMATIE=s.NR_LEGITIMATIE
group by s.AN, s.SECTIE, c.NOTA, s.NUME, s.PRENUME
having c.NOTA < 5 and count(*) >=4;
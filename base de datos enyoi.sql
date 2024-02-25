create database universityenjoi;
use universityenjoi;
create  table carrera(
id int auto_increment,
nombre varchar(30),
primary key(id)
);

create table alumno(
matricula char(7) primary key,
nombre varchar(30),
promedio decimal(5.2),
idcarrera int references carrera(id)
);
alter table alumno add foreign key(idcarrera) references carrera(id);

insert into carrera(nombre) values('iti');
insert into alumno(matricula,nombre,promedio, idcarrera) values ('1500001','oscar ortega',4.2,1);
select * from carrera;
select * from alumno;

create table materia(
cve int auto_increment,
nombre varchar(30),
primary key (cve)
);

create table alumno_cursa_materia(
matricula char(7),
cve_materia int,
foreign key(matricula) references alumno(matricula),
foreign key(cve_materia) references materia(cve),
primary key (matricula,cve_materia)
);

insert into materia(nombre) values('matematicas'),('geografia');
select * from materia;
insert into alumno_cursa_materia(matricula,cve_materia) values('1200001',1),('1200001',2);
select * from alumno_cursa_materia;

drop table domicilio;
create table domicilio(
id int auto_increment,
calle varchar(20),
numero int,
barrio varchar(30),
ciudad varchar(30),
matricula char(7) unique,
primary key(id),
foreign key(matricula) references alumno(matricula)
);
describe domicilio;
create table domicilio(
id int auto_increment,
calle varchar(20),
numero int,
barrio varchar(30),
ciudad varchar(30),
matricula char(7) unique,
primary key(id),
foreign key(matricula) references alumno(matricula)
);

insert into domicilio(calle,numero,barrio,ciudad,matricula) values('calle',50,'suba','cali','1500001');
select * from domicilio;

describe domicilio;



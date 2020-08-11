create database COMPAGNIE_AERIENNE;
use compagnie_aerienne;
create table if not exists avion
(
    numAvion int (100) auto_increment ,
    typeAvion varchar(5)  ,
    baseAreoport char(3)  ,

    constraint pk_nomAvion primary key (numAvion)
);




create table if not exists type
(
    typeAvion varchar(30) ,
    Capacité int ,
    IdConstructeur int,
    constraint pk_typeAvion primary key (typeAvion)

);


create table if not exists constructeur
(
    IdConstructeur int,
    NomConstructeur varchar(30),
    constraint pk_Constructeur primary key (IdConstructeur)
);

create table if not exists Aéroport
(
    IdAeroport char(3),
    NomAeroport varchar(30),
    NomVilleDesservie varchar(30),
    constraint pk_Aeroport primary key (IdAeroport)
);
create table if not exists  Vol
(

    NumVol char(3)  ,
    AeroportDept char(3),
    Hdepart time,
    AeroportArr char(3),
    Harrivee time,
    constraint pk_NumVol primary key (NumVol)
);



create table if not exists Affectation
(
    NumVol INT(100)  AUTO_INCREMENT NOT NULL ,
    DateVol date,
    NumAvion varchar(5),
    IdPilote INT NULL

);


create table if not exists Pilote
(
    IdPilote int,
    NompPilote  varchar(20) not null,
    PrenomPilote VARCHAR(20) NOT NULL ,
    constraint pk_Pilote primary key(IdPilote),
    constraint pk_Pilote unique (NompPilote,PrenomPilote)

);
-- ******apres table
alter table avion
    add constraint fk_baseAreport foreign key (baseAreoport) references Aéroport(IdAeroport);
alter table avion
    add constraint fk_typeAvion foreign key (typeAvion) references type(typeAvion);

-- *******table type
ALTER TABLE type
    modify typeAvion varchar(30) NOT NULL DEFAULT '100';

ALTER TABLE type
    modify Capacité int(40) auto_increment;


alter table type
    add constraint fk_constructeur foreign key (IdConstructeur) references constructeur(IdConstructeur) ;

-- table vol
alter table vol
    add constraint fk_Areportdept foreign key (AeroportDept) references Aéroport(IdAeroport);
alter table vol
    add constraint fk_Areportarr foreign key (AeroportArr) references Aéroport(IdAeroport);

--  table afectation
alter table affectation
    add constraint fk_numvol foreign key (NumVol) references Vol(NumVol);

alter table affectation
    add constraint fk_numAvion foreign key (NumAvion) references avion(numAvion);

alter table affectation
    add constraint fk_idpilote foreign key (IdPilote) references pilote(IdPilote);











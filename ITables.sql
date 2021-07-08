/*Table creation of independent values*/
create database PlatziBlog default character set utf8 ;

use PlatziBlog;

create table categorias
(
id int not null auto_increment,
nom_categoria varchar(30) not null,
constraint primary key (id)
);

create table etiquetas
(
id int not null auto_increment,
nom_etiquetas varchar(30) not null,
constraint primary key (id)
);

create table usuarios 
(
id int not null auto_increment,
login varchar(30) not null,
pasword varchar(32) not null,
nickname varchar(40) not null,
email varchar(40) not null,
primary key (id),
unique key email_unique (email)
)
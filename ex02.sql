drop database if exists netflix;
create database netflix;
use netflix;

create table categoria(
	id int primary key auto_increment,
	nome varchar(50) not null,
    publico_alvo varchar(50) not null
    )engine = InnoDB;

create table filme(
	id int primary key auto_increment,
	titulo varchar(50) not null,
    sinopse varchar(150) not null,
    estudio varchar(50) not null,
    id_categoria int,
    foreign key(id_categoria) references categoria(id) 
    )engine = InnoDB;
    
    insert into categoria (nome,publico_alvo)
    values ("Animação","Infanto-Juvenil"), ("Suspense","Adultos"), ("Séries", "Jovens-Adultos");
    
    insert into filme (titulo,sinopse,estudio,id_categoria)
    values ("Toy Story","Brinquedos que gostam de se aventurar","Pixar",1), 
    ("Carros","Carros que falam e correm","Pixar",1), ("Trolls","Trolls que gostam de dançar e cantar","DreamWorks",1),
    ("Um lugar silencioso","Uma família se vê obrigada a manter silêncio absoluto para não ser capturada por criaturas alienígenas",
    "Paramount Pictures",2), ("Moana","Uma jovem parte em uma missão para salvar seu povo","Walt Disney Pictures",1),
    ("Ta dando onda", "Surfar é a atividade do pinguim adolescente Cody Maverick","Sony Pictures Animation",1),
    ("Friends","Seis amigos, três homens e três mulheres, enfrentam a vida e os amores em Nova York","Warner Brothers",3),
    ("Supernatural", "Os irmãos Sam e Dean Winchester encaram cenários sinistros caçando monstros", "Warner Brothers",3);
    
    select * from categoria;
    select * from filme;
drop database if exists vendas;
create database vendas;
use vendas;

create table marcas(
	id int primary key auto_increment,
	nome varchar(30) not null,
    site varchar(50) not null,
    telefone varchar(20) not null
    )engine = InnoDB;

create table produto(
	id int primary key auto_increment,
	nome varchar(30) not null,
    preco_custo float(11,2) not null,
    preco_venda float(11,2) not null,
    data_validade date not null,
    id_marca int,
    foreign key(id_marca) references marcas(id) 
    )engine = InnoDB;
    
    insert into marcas (nome,site,telefone)
    values ("Nestle","nestle.com",15309812345), ("Cacau Show","cacaushow.com",987654321),
    ("Milka","milka.com",1532123456);
    
    insert into produto (nome,preco_custo,preco_venda,data_validade,id_marca)
    values ("Alpino",5.90,12.99,"2021-10-30",1), ("Cookie",1.90,3.99,"2021-12-20",1),
    ("LaNut",3.90,12.99,"2021-10-20",2), ("LaCreme",3.90,12.99,"2021-10-20",2),
    ("Trufas",0.90,3.90,"2021-10-20",2), ("Chokito",0.90,2.99,"2022-05-10",1),
    ("Milka Oreo",5.90,12.99,"2022-03-30",3), ("Milkinis",4.90,9.00,"2021-10-30",3);
    
    select * from marcas;
    select * from produto;

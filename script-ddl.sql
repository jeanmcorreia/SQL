-- this is sql

drop table cliente cascade 
create table cliente 
( 
idCliente serial primary key, 
nomeCliente text not null, 
cpfCliente varchar, 
enderecoCliente text, 
celularCliente varchar, 
dataCadastro date 
);
alter table cliente alter COLUMN cpfCliente char;

drop table funcionario cascade 
create table funcionario 
( 
idFuncionario serial primary key, 
nomeFuncionario text not null, 
cpfFuncionario varchar, 
enderecoFuncionario text, 
celularFuncionario varchar, 
admissao date 
);
alter table funcionario alter COLUMN cpfFuncionario char;

drop table produtos cascade 
create table produtos 
( 
idProduto serial primary key, 
nomeProduto text not null, 
preco float not null, 
tarja text not null, 
quantidade int not null, 
validade date 
);
alter table produtos alter COLUMN tarja varchar(60);

drop table pedidos cascade 
create table pedidos 
( 
idPedido serial primary key, 
idCliente int not null references cliente(idcliente), 
idProduto int not null references produtos(idProduto), 
idFuncionario int not null references funcionario(idfuncionario), 
quantidade int not null, 
formaPagamento text not null, 
valorTotal float not null, 
dataPedido date
);

alter table pedidos alter COLUMN formaPagamento varchar(60);
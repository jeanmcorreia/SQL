/*criando tabela cliente*/

create table cliente
(
idCliente serial primary key,
nomeCliente text not null,
cpfCliente int,
enderecoCliente text,
celularCliente int,
dataCadastro date
);

/*criando tabela funcionario*/

create table funcionario
(
idFuncionario serial primary key,
nomeFuncionario text not null,
cpfFuncionario int,
enderecoFuncionario text,
celularFuncionario int,
admissao date
);

/*criando tabela produtos*/

create table produtos
(
idProduto serial primary key,
nomeProduto text not null,
preco float not null,
tarja text not null,
quantidade int not null,
validade date
);

/*criando tabela pedidos*/

create table pedidos
(
idPedido serial primary key,
idCliente int not null references cliente(idCliente),
idProduto int not null references produtos(idProduto),
idFuncionario int not null references funcionario(idFuncionario),
quantidade int not null,
formaPagamento text not null,
valorTotal float not null,
dataPedido date
);
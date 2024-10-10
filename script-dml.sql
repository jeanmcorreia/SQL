
insert into cliente(nomecliente, cpfcliente, enderecocliente, 
celularcliente, datacadastro) 
values ('Kaua', '123456789', 'ali', '123456789', '20200404'), 
('KauaH', '987654321', 'Aki', '987654321', '20210203'), 
('Lucas', '102030405', 'Talcanto', '102303405', '20220305'), 
('Pedro', '152635268', 'talugar', '186495763', '20240503')

delete from cliente
update cliente set nomecliente = 'Tacy' where idcliente = 4;

insert into funcionario(nomefuncionario, cpffuncionario, 
enderecofuncionario, celularfuncionario, admissao) 
values ('Lira', '123456789', 'ali', '123456789', '20200404'), 
('Pugliese', '987654321', 'Aki', '987654321', '20210203'), 
('Gabriel', '102030405', 'Talcanto', '102303405', '20220305'), 
('Bispo', '152635268', 'talugar', '186495763', '20240503')

delete from funcionario
update funcionario set nomefuncionario = 'Barbara' where idfuncionario = 3;

insert into produtos(nomeproduto, preco, tarja, quantidade, validade) 
values ('Analgesico XYZ', 15.99, 'Sem Tarja', 50, '2025-12-31'), 
('Antibiótico ABC', 49.90, 'Tarja Vermelha', 30, '2024-06-15'),  
('Xarope para Tosse', 25.50, 'Sem Tarja', 40, '2025-0320'),
('Antialérgico DEF', 22.75, 'Tarja Amarela', 60, '2026-01-10'),  
('Pomada Cicatrizante', 18.00, 'Sem Tarja', 20, '2025-08-05') 

delete from produtos

update produtos set nomeproduto = 'Fralda' where idProduto = 1;

insert into pedidos(idcliente, idproduto, idfuncionario, quantidade, 
formapagamento, valortotal, datapedido) 
values (1, 1, 1, 2, 'Cartão de Crédito', 31.98, '2024-09-01'), 
(2, 2, 2, 1, 'Dinheiro', 49.90, '2024-09-02'), 
(3, 3, 3, 3, 'Cartão de Débito', 76.50, '2024-09-03'), 
(4, 4, 4, 5, 'Transferência', 113.75, '2024-09-04'), 
(1, 5, 1, 1, 'Cartão de Crédito', 18.00, '2024-09-05'),
(2, 1, 2, 4, 'Dinheiro', 63.96, '2024-09-06'), 
(3, 2, 3, 2, 'Cartão de Débito', 99.80, '2024-09-07'),
(4, 3, 4, 1, 'Transferência', 25.50, '2024-09-08'), 
(1, 4, 1, 3, 'Cartão de Crédito', 68.25, '2024-09-09'),
(2, 5, 2, 2, 'Dinheiro', 36.00, '2024-09-10')

delete from cliente
update pedidos set formapagamento = 'Pix' where idpedidos = 4;
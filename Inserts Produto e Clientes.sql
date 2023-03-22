/*
  Produtos
*/

USE bd_vendas;

insert into tbl_produto (nome_produto, desc_produto, unid_medida, 
estoque_atual,estoque_min, estoque_max,valor) values
('Arroz', 'Arroz agulhinha tipo 1','SC', 10,2,20, 12.50),
('Feijão', 'Feijão carioquinha com casca','SC', 25,5,60, 7.50),
('Macarrão', 'Macarrão Adria espaguete','PC', 50,10,80, 5.50),
('Óleo', 'Óleo Lisa','LT', 15,10,45, 6.50),
('Vinagre', 'Vinagre Castelo','GR', 30,10,50, 7.89),
('Batata', 'Batata lavada','KG', 100,50,200, 4.50),
('Tomate', 'Tomate vermelho','KG', 80,8,160, 6.90),
('Cebola', 'Cebola com casca','KG', 50,5,100, 6.99),
('Leite', 'Leite Leco','CX', 25,10,90, 2.50),
('Café', 'Café do Ponto','SC', 500,100,200, 11.50);

/*
  Clientes
*/
insert into tbl_cliente(nome_cliente,cpf,data_nasc,cep,numero,complemento) values
('Marcos Costa de Sousa','12345678901','1981-02-06',6768100,'1525','apto 166C'),
('Zoroastro Zoando','01987654321','1989-06-15',6757190,'250',''),
('Idelbrandolâncio Silva','54698721364','1974-09-27',6753001,'120',''),
('Cosmólio Ferreira','41368529687','1966-12-01',6753020,'25','apto 255 F'),
('Conegunda Prado','54781269501','1950-10-06',6753020,'50','apto 166C'),
('Brogundes Asmônio','41256398745','1940-05-10',6753400,'100',''),
('Iscruência da Silva','12457965823','1974-11-25',6803040,'5',''),
('Zizafânio Zizundo','54123698562','1964-08-14',6803140,'25',''),
('Ricuerda Zunda','21698534589','1934-10-14',6803045,'123',''),
('Aninoado Zinzão','25639856971','1976-12-25',6803070,'50','');
CREATE DATABASE bd_vendas;

USE bd_vendas;

CREATE TABLE tbl_produto(
	cod_produto INT UNSIGNED AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    desc_produto VARCHAR(100) NOT NULL,
    unid_medida VARCHAR(2) NOT NULL,
    estoque_atual INT DEFAULT 0,
	estoque_min INT DEFAULT 0,
    estoque_max INT DEFAULT 0,
    valor DECIMAL (10, 2) NOT NULL,
    
    PRIMARY KEY(cod_produto)
);

CREATE TABLE tbl_endereco(
	id INT(10) NOT NULL,
    cep INT(9) NOT NULL,
    logradouro VARCHAR(90) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,

	CONSTRAINT pk_endereco PRIMARY KEY (cep)
);

CREATE TABLE tbl_cliente (
	cod_cliente INT UNSIGNED AUTO_INCREMENT,
	nome_cliente VARCHAR(45) NOT NULL,
    cpf VARCHAR(11) NOT NULL DEFAULT '', 
    data_nasc DATE,
    cep INT(9) DEFAULT 0,
    numero VARCHAR(10) DEFAULT '',
    complemento VARCHAR(20) DEFAULT '',
    
    PRIMARY KEY (cod_cliente),
    CONSTRAINT FOREIGN KEY fk_cliencep (cep) REFERENCES tbl_endereco(cep)
);

CREATE TABLE tbl_pedido(
	cod_pedido INT UNSIGNED AUTO_INCREMENT,
    data_pedido DATE,
    data_entrega DATE,
    cod_cliente INT UNSIGNED NOT NULL,
    
    PRIMARY KEY(cod_pedido),
    
    CONSTRAINT fk_client FOREIGN KEY (cod_cliente) REFERENCES tbl_cliente(cod_cliente)
);

CREATE TABLE tbl_itempedido (
	qtde INT UNSIGNED NOT NULL,
    i_cod_pedido INT UNSIGNED NOT NULL,
    i_cod_produto INT UNSIGNED NOT NULL,
    i_valor DECIMAL (10, 2) NOT NULL,
    
    CONSTRAINT fk_pedido1 FOREIGN KEY (i_cod_pedido) REFERENCES tbl_pedido (cod_pedido),
    CONSTRAINT fk_tbl_produto1 FOREIGN KEY (i_cod_produto) REFERENCES tbl_produto (cod_produto)    
);
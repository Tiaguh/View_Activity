USE bd_vendas;

# a)

CREATE VIEW vw_dataVendas AS 
SELECT c.cod_cliente, c.nome_cliente, p.cod_pedido, p.data_pedido, p.data_entrega    
FROM tbl_cliente AS c, tbl_pedido AS p
WHERE p.data_pedido > 30/01/2014;

SELECT * FROM vw_dataVendas;

# b)

CREATE VIEW vw_dataQuantidade AS 
SELECT c.cod_cliente, c.nome_cliente, p.cod_pedido, p.data_pedido, p.data_entrega, i.qtde, i.i_cod_produto
FROM tbl_cliente AS c, tbl_pedido AS p, tbl_itempedido as i
WHERE i.qtde > 25;
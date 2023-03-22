USE bd_vendas;

# a)

CREATE VIEW vw_dataVendas AS 
SELECT c.cod_cliente, nome_cliente, cod_pedido, data_pedido, data_entrega   
FROM tbl_pedido p
JOIN tbl_cliente c 
ON c.cod_cliente = p.cod_cliente
WHERE p.data_pedido > 30/01/2014;

SELECT * FROM vw_dataVendas;

# b)

CREATE VIEW vw_dataQuantidade AS 
SELECT c.cod_cliente, nome_cliente, p.cod_pedido, data_pedido, data_entrega, qtde, i_cod_produto
FROM tbl_itempedido ip
JOIN tbl_pedido p ON i_cod_pedido = cod_pedido 
JOIN tbl_cliente c ON c.cod_cliente = p.cod_cliente
WHERE qtde > 25;

# c)

CREATE VIEW vw_descPedido AS
SELECT cod_pedido, cod_cliente, qtde, cod_produto, desc_produto
FROM tbl_itempedido ip
JOIN tbl_pedido p ON ip.i_cod_pedido = cod_pedido
JOIN tbl_produto ped ON i_cod_produto = cod_produto;

# d)

CREATE VIEW reajusteValor AS
SELECT cod_produto, desc_produto, valor AS valor_atual, 
round((valor + ((valor * 11.2) / 100)), 2) AS valor_reajustado
FROM tbl_produto;
-- CLIENTES
INSERT INTO cliente (id_cliente, nome, cpf, telefone, instagram, endereco, cidade, uf, cep) VALUES
(1, 'Ana Souza', '123.456.789-00', '11999999999', '@anasz', 'Rua das Flores, 123', 'São Paulo', 'SP', '01000-000'),
(2, 'Bruna Lima', '987.654.321-00', '21988888888', '@brunalimabz', 'Av. Brasil, 456', 'Rio de Janeiro', 'RJ', '20000-000');

-- PRODUTOS
INSERT INTO produto (id_produto, nome, tipo, tamanho, preco, status) VALUES
(1, 'Saia BlueJeans', 'Saia', 'M', 59.90, 'disponível'),
(2, 'Top Cropped Vermelho', 'Top', 'P', 39.90, 'vendido');

-- PEDIDOS
INSERT INTO pedido (id_pedido, id_cliente, forma_pagamento, entrega, codigo_rastreio) VALUES
(1, 1, 'PIX', 'Correios', 'BR123456789'),
(2, 2, 'Dinheiro', 'Encontro', NULL);

-- ITENS_PEDIDO
INSERT INTO itens_pedido (id_pedido, id_produto) VALUES
(1, 1),
(2, 2);

-- COLECAO
INSERT INTO colecao (id_colecao, nome_colecao) VALUES
(1, 'Saia BlueJeans'),
(2, 'Verão 2025');

-- PRODUTO_COLECAO
INSERT INTO produto_colecao (id_produto, id_colecao) VALUES
(1, 1),
(2, 2);

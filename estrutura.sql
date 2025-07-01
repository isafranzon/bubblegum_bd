CREATE TABLE Cliente (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14) NOT NULL,
  telefone VARCHAR(20),
  instagram VARCHAR(50),
  endereco VARCHAR(150),
  cidade VARCHAR(50),
  uf CHAR(2),
  cep VARCHAR(10)
);

CREATE TABLE Produto (
  id_produto SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  tipo VARCHAR(50),
  tamanho VARCHAR(10),
  estado_conservacao VARCHAR(50),
  preco NUMERIC(10,2),
  data_postagem DATE,
  observacoes TEXT,
  status VARCHAR(20) CHECK (status IN ('disponível', 'vendido'))
);

CREATE TABLE Pedido (
  id_pedido SERIAL PRIMARY KEY,
  id_cliente INT REFERENCES Cliente(id_cliente),
  data_pedido DATE,
  forma_pagamento VARCHAR(50),
  valor_total NUMERIC(10,2),
  forma_entrega VARCHAR(50),
  codigo_rastreio VARCHAR(30),
  status_entrega VARCHAR(20) CHECK (status_entrega IN ('pendente', 'enviado', 'entregue'))
);

CREATE TABLE Itens_Pedido (
  id_pedido INT REFERENCES Pedido(id_pedido),
  id_produto INT REFERENCES Produto(id_produto),
  preco_unitario NUMERIC(10,2),
  PRIMARY KEY (id_pedido, id_produto)
);

CREATE TABLE Colecao (
  id_colecao SERIAL PRIMARY KEY,
  nome_colecao VARCHAR(100),
  descricao TEXT
);

CREATE TABLE Produto_Colecao (
  id_produto INT REFERENCES Produto(id_produto),
  id_colecao INT REFERENCES Colecao(id_colecao),
  PRIMARY KEY (id_produto, id_colecao)
);
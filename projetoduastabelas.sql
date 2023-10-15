CREATE DATABASE PetShop;


CREATE TABLE clientes (
  idCliente SERIAL PRIMARY KEY
  , nome VARCHAR(50)
  , nomePet VARCHAR(50)
  , idadePet INT
  , raca VARCHAR(50)
  , telefone VARCHAR(11)
  , endereco VARCHAR(70)
);

CREATE TABLE pedidos (
  idPedido SERIAL PRIMARY KEY
  , idCliente INT
  , servico VARCHAR(50)
  , preco NUMERIC(6, 2)
  , dataPedido TIME
  , FOREIGN KEY (idCliente) REFERENCES clientes (idCliente)
);

INSERT INTO
  clientes (
    idCliente
    , nome
    , nomePet
    , idadePet
    , raca
    , telefone
    , endereco
  )
VALUES
  (
    1
    , 'Jonzinho'
    , 'Neguinho'
    , 3
    , 'Vira-Lata'
    , '119XXXXX244'
    , 'Rua Pintassilva n38 '
  );

INSERT INTO
  pedidos (idPedido, servico, preco, dataPedido)
VALUES
  (1, 'Cortar unha', 0200.00, '15:35');
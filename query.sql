-- Active: 1699972204810@@127.0.0.1@3306
/*
    test-mysql por Westwing Brasil
    https://github.com/westwingbrasil/test-mysql
*/

SELECT
    A.nome AS 'Nome',
    A.sobrenome AS 'Sobrenome',
    A.data_nascimento AS 'Data de Nascimento',
    B.cor AS 'Cor da Casa',
    C.nome AS 'Bairro',
    D.modelo AS 'Modelo do Carro'
FROM cliente AS A
    INNER JOIN casa AS B ON B.fk_cliente = A.id_cliente
    INNER JOIN bairro AS C ON C.id_bairro = B.fk_bairro
    INNER JOIN carro AS D ON D.fk_cliente = A.id_cliente;
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
FROM cliente AS ADD
    inner join casa AS B ON B.fk_cliente = A.id_cliente
    inner join bairro AS C on C.id_bairro = B.fk_bairro
    inner join carro as D ON D.fk_cliente = A.id_cliente
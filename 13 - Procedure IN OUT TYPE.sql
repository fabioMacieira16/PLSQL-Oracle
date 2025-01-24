--DROP PROCEDURE pesquisa_estoque
CREATE or REPLACE PROCEDURE pesquisa_estoque(codigo in ESTOQUE.EST_CODIGO%TYPE, nome_produto out ESTOQUE.EST_NOME%TYPE)
IS
BEGIN
    SELECT EST_NOME INTO nome_produto FROM ESTOQUE WHERE EST_CODIGO = codigo;
    dbms_output.put_line('O produto de codigo ' || codigo || ' e ' || nome_produto);
END;

--SELECT * FROM ESTOQUE;

--UPDATE ESTOQUE SET EST_NOME = 'Coca-Cola' WHERE EST_CODIGO = 3;

-- commando no sqlplus para executar a procedure
VARIABLE nome_produto VARCHAR2(100);

-- Execute a procedure
EXECUTE pesquisa_estoque(3, :nome_produto);

-- Exibir o valor da variável de saída
PRINT nome_produto;
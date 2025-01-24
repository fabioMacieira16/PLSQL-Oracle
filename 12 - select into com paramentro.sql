-- DROp procedure pesquisa_estoque;
CREATE or REPLACE PROCEDURE pesquisa_estoque(codigo in NUMBER)
IS
    nome_produto VARCHAR2(50);
BEGIN
    SELECT EST_NOME INTO nome_produto FROM ESTOQUE WHERE EST_CODIGO = codigo;
    dbms_output.put_line('O produto de codigo ' || codigo || ' e ' || nome_produto);
END;

--SELECT * FROM ESTOQUE;

--UPDATE ESTOQUE SET EST_NOME = 'Coca-Cola' WHERE EST_CODIGO = 3;
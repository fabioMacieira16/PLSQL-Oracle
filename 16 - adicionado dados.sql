create or REPLACE PROCEDURE gravando_estoque(
    codigo IN estoque.est_codigo%TYPE,
    NOME IN estoque.est_nome%TYPE,
    tipo IN estoque.est_tipo%TYPE,
    preco IN estoque.est_preco_venda%TYPE,
    data_cadastro IN estoque.est_datacad%TYPE
)
is
BEGIN
    INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_preco_venda, est_datacad)
    VALUES (codigo, NOME, tipo, preco, data_cadastro);
    COMMIT;
    dbms_output.put_line('Registro inserido com sucesso');
END gravando_estoque;   

--select * FROM estoque;
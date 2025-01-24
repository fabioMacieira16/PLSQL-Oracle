/*
    VARIABLE nome_produto VARCHAR2(100);
    -- commando no sqlplus para executar a procedure

    -- Execute a procedure
    EXECUTE altera_preco_todo;

    --DROP PROCEDURE pesquisa_estoque
*/

CREATE OR REPLACE PROCEDURE altera_preco_todo
IS
BEGIN
    -- Atualiza o preço de venda de todos os produtos
   update estoque set est_preco_venda = nvl(est_preco_venda, 0 ) + 70;

   -- where EST_CODIGO =  4

    -- Confirma a transação
commit;

    -- Mensagem de confirmação
dbms_output.put_line('Todos os preços foram atualizados com sucesso!');
END;

--select * from estoque
 

 

-- Date: 20200915_1910
DECLARE
   
   dados_estoque Estoque%ROWTYPE;
BEGIN
   -- Seleciona os dados da tabela Estoque e atribui ao record
   SELECT *
   INTO dados_estoque
   FROM Estoque
   WHERE est_codigo = 2;  -- Filtra pelo código 1

   -- Exibe os dados
   DBMS_OUTPUT.PUT_LINE('----------------------------------- ');
   DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados_estoque.est_codigo) ||  
                        ', Descrição: ' || dados_estoque.est_descricao || 
                        ', Quantidade: ' || TO_CHAR(dados_estoque.est_quantidade));
END;
/

--SELECT * from ESTOQUE;
--UPDATE ESTOQUE SET EST_DESCRICAO = '10 mil reais mensais' WHERE EST_CODIGO = 3;
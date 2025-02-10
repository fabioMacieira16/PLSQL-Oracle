-- Date: 20200915_1910
DECLARE
   TYPE reg_estoque IS RECORD (
      est_codigo         NUMBER(3),        -- Adicionei o campo "codigo"
      est_descricao      VARCHAR2(30),
      est_quantidade     NUMBER(3)
   );

   dados_estoque reg_estoque;
BEGIN
   -- Seleciona os dados da tabela Estoque e atribui ao record
   SELECT est_codigo, est_descricao, est_quantidade
   INTO dados_estoque.est_codigo, dados_estoque.est_descricao, dados_estoque.est_quantidade
   FROM Estoque
   WHERE est_codigo = 3;  -- Filtra pelo código 1

   -- Exibe os dados
   DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados_estoque.est_codigo) ||  
                        ', Descrição: ' || dados_estoque.est_descricao || 
                        ', Quantidade: ' || TO_CHAR(dados_estoque.est_quantidade));
END;
/

--SELECT * from ESTOQUE;
--UPDATE ESTOQUE SET EST_DESCRICAO = '10 mil reais mensais' WHERE EST_CODIGO = 3;
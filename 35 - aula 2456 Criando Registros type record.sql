declare
   type reg_estoque IS record (
         codigo number(3),
         nome   varchar2(30)
   );
   dados_estoque reg_estoque;
begin
   dados_estoque.codigo := 10;
   dados_estoque.nome := 'Fábio Macieira';
   DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados_estoque.codigo) ||  
                        ' Nome: ' || dados_estoque.nome);
end;
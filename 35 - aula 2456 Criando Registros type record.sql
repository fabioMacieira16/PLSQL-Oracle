declare
   type reg_estoque is record (
         codigo number(3),
         nome   varchar2(30)
   );
   dados_estoque reg_estoque;
begin
   dados_estoque.codigo := 10;
   dados_estoque.nome := 'Produto 1';
   dmbs_output.put_line('Código: ' || to_char(dados_estoque.codigo) ||  'Nome: ' || to_char(dados_estoque.nome));
end;
DECLARE
   TYPE dados_estoque is TABLE OF estoque%ROWTYPE INDEX BY BINARY_INTEGER;
   dados dados_estoque;
BEGIN
   for i IN 1..3 loop
     SELECT * INTO dados(i) FROM estoque WHERE est_codigo = i;
   end loop;

   FOR i IN dados.first..dados.last LOOP
      dbms_output.put_line('Códigos: ' || to_char(dados(i).est_codigo) || ' ' || dados(i).est_descricao);
   END LOOP;
   
END;
/

    -- USANDO OS CURSORES ROWCOUNT E ROWTYPE
    -- SQL%ROWCOUNT: Retorna o número de linhas afetadas pela última instrução SQL.
    -- SQL%ROWTYPE: Retorna o tipo de registro de uma linha de uma tabela ou visão.
    -- SQL%FOUND: Retorna TRUE se a última instrução SQL afetou uma ou mais linhas.
    -- SQL%NOTFOUND: Retorna TRUE se a última instrução SQL não afetou nenhuma linha.
    -- SQL%ISOPEN: Retorna TRUE se o cursor está aberto.
    
DECLARE
   Id estoque.est_codigo%TYPE;
BEGIN

     SELECT est_codigo INTO Id FROM estoque WHERE est_codigo = 3;

 dbms_output.put_line('___________________________________________________');
      dbms_output.put_line('Numero de elementos: ' || to_char(SQL%ROWCOUNT));
 dbms_output.put_line('___________________________________________________');

   
END;
/



--    SET SERVEROUTPUT ON;
create or replace procedure excluir (
   codigo in estoque.est_codigo%type
) is
begin
    --verifica se o codigo é nulo
   if codigo is null then
      dbms_output.put_line('Código não pode ser nulo!');
      return;
   end if;

   delete from estoque  where est_codigo = codigo;

   IF SQL%NOTFOUND THEN
        dbms_output.put_line('Código não encontrado!');
    else
        commit;
        dbms_output.put_line('Código excluídos com sucesso!');
    end if;
end;
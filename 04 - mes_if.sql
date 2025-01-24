-- drop procedure mes;
create or replace procedure mes 
is
   qual_mes number;
   nome_mes varchar2(15);
begin
   qual_mes := 6;
   if qual_mes = 1 then
      nome_mes := 'Janeiro';
   elsif qual_mes = 2 then
      nome_mes := 'Fevereiro';
   elsif qual_mes = 3 then
      nome_mes := 'Março';
   elsif qual_mes = 4 then
      nome_mes := 'Abril';
   elsif qual_mes = 5 then
      nome_mes := 'Maio';
   elsif qual_mes = 6 then
      nome_mes := 'Junho';
   else
      nome_mes := 'mês invalido';
   end if;

   dbms_output.put_line(nome_mes);
end;
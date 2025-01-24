-- drop procedure mes;
create or replace procedure mes_case
is
   qual_mes number;
   nome_mes varchar2(15);
begin
   qual_mes := 3;
   CASE qual_mes
      WHEN 1 THEN nome_mes := 'Janeiro';
      WHEN 2 THEN nome_mes := 'Fevereiro';
      WHEN 3 THEN nome_mes := 'Março';
      WHEN 4 THEN nome_mes := 'Abril';
      WHEN 5 THEN nome_mes := 'Maio';
      WHEN 6 THEN nome_mes := 'Junho';
      ELSE nome_mes := 'mês invalido';
   END CASE;
   
   dbms_output.put_line(nome_mes);
end;

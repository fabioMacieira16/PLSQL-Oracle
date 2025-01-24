-- drop procedure soma_com_parametros;
create or replace procedure soma_com_parametros (
   numero1 in number,
   numero2 in number
) is
begin
   dbms_output.put_line('A soma dos números é: ' ||(numero1 + numero2));
end;



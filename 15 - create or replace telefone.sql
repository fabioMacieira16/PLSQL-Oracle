/*
    -- commando no sqlplus para executar a procedure
    VARIABLE fone VARCHAR2(16);
    begin
    :fone := '11999999999';
    end;
    /
  execute telefone(:fone);
     SET SERVEROUTPUT ON;
     
*/

CREATE OR REPLACE PROCEDURE telefone(num_fone in OUT varchar2)
IS
BEGIN
    num_fone:= '(' || substr(num_fone, 1, 2) || ') ' || 
                     substr(num_fone, 3, 4) || '-' || 
                     substr(num_fone, 7, 4);

    dbms_output.put_line('Telefone: ' || num_fone);
END;

--select * from estoque
 

 

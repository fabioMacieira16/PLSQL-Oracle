declare
   numero number;
begin
   numero := 10;
   
    WHILE numero < 20 LOOP
        dbms_output.put_line(numero || ' + 1 = ' || (numero + 1));
        numero := numero + 1;
    END LOOP;

end;
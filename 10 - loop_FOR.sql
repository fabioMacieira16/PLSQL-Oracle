declare
   numero number;
  
begin
   numero := 5;
   
   -- loop FOR vai de 1 até 10
    for i in 1..10 LOOP
        dbms_output.put_line(numero || ' * ' ||i|| ' = ' || (numero * i));
        
        -- caso queiro intorromper o loop
        -- if i = 7 then
        --     exit;
        -- end if;

        -- outro modelo ser sair do loop
        EXIT WHEN i = 8;
    END LOOP;

end;
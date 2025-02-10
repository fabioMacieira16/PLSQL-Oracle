DECLARE
   TYPE codigo is TABLE OF NUMBER INDEX BY BINARY_INTEGER;
   TYPE nome is TABLE OF VARCHAR(40) INDEX BY BINARY_INTEGER;

   t_codigos codigo;
   t_nomes nome;
BEGIN
   t_codigos(1) := 1;
   t_nomes(1) := 'Maria';

   t_codigos(2) := 2;
   t_nomes(2) := 'Fabio';

   t_codigos(3) := 3;
   t_nomes(3) := 'Gleiciane';

   dbms_output.put_line('_______________________________________________________');
   dbms_output.put_line('Códigos: ' || to_char(t_codigos(1)) || ' ' || t_nomes(1));
   dbms_output.put_line('Códigos: ' || to_char(t_codigos(2)) || ' ' || t_nomes(2));
   dbms_output.put_line('Códigos: ' || to_char(t_codigos(3)) || ' ' || t_nomes(3));
   dbms_output.put_line('_______________________________________________________');
END;
/
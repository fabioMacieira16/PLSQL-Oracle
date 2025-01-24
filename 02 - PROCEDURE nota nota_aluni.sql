--DROP PROCEDURE nota_aluno;

create procedure nota_aluno
is
   nota1 number;
   nota2 number;
   soma_nota number;
   media number;
   nome_aluno varchar2(50);

begin
   nota1 := 8;
   nota2 := 10;
   nome_aluno := 'João';
   soma_nota := nota1 + nota2;
   media := soma_nota / 2;
   dbms_output.put_line('A média do aluno ' || nome_aluno || ' é: ' || media || ' e sua nota é: ' || soma_nota);
end;


--EXECUTE nota_aluno;
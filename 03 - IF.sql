-- drop procedure nota_aluno_media;

create OR REPLACE procedure nota_aluno_media
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

if  media >= 6  then
   dbms_output.put_line('A média do aluno: '  || nome_aluno || ' Ficou com media : ' || media || 'e foi aprovado: ');
else
   dbms_output.put_line('A média do aluno: '  || nome_aluno || ' Ficou com media : ' || media || 'e foi reprovado: ');
end if;

end;

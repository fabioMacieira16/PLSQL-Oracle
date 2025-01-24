/*
comando pora criar variáveis no PL/SQL
variable situacao varchar2(4);
*/
DECLARE
    numero1 NUMBER;
    numero2 number;
    media number;
BEGIN
    numero1 := 8;
    numero2 := 10;
    media := (numero1 + numero2) / 2;
    :situacao := 'A soma dos números é: ' || (numero1 + numero2);
    :media := media;
end;

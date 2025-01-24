--    SET SERVEROUTPUT ON;
/*
    --create variavel calc
    variable calc number;

    executa o comando
    execute :calc := Calculo(2,3);

    --printa o resultado
    print calc;

*/

create or REPLACE FUNCTION soma2 
    (
     numero1 NUMBER,
     numero2 NUMBER
     ) 
RETURN NUMBER 
IS
BEGIN
    RETURN (numero1 + numero2);
END soma2;
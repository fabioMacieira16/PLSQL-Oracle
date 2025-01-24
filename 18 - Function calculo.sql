/*
    --create variavel calc
    variable calc number;

    executa o comando
    execute :calc := Calculo(10);

    --printa o resultado
    print calc;

*/

CREATE or REPLACE FUNCTION Calculo (numero NUMBER)
RETURN NUMBER
is
BEGIN
    RETURN (numero + 20);
END;
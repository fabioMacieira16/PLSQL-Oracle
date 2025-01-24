--    SET SERVEROUTPUT ON;
/*
    --create variavel calc
    variable calc number;

    executa o comando
    execute :calc := Calculo(2,3);

    --printa o resultado
    print calc;

*/

create or REPLACE FUNCTION Calcular 
    (
        numero1 NUMBER,
        numero2 NUMBER,
        oque in varchar2
    ) 
    
    RETURN NUMBER 
IS
    calculo NUMBER;	
BEGIN
    
    IF oque = 'soma' THEN
        calculo := (numero1 + numero2);
    ELSIF oque = 'subtracao' THEN
        calculo := (numero1 - numero2);
    ELSIF oque = 'multiplicacao' THEN
        calculo := (numero1 * numero2);
    ELSIF oque = 'divisao' THEN
        calculo := (numero1 / numero2);
    ELSE
        RETURN 0;
    END IF;
    RETURN (calculo);
END Calcular;
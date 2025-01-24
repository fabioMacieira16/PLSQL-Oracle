--    SET SERVEROUTPUT ON;
/*
    --create variavel calc
    variable valor number;

    executa o comando
    execute :preco := valor_curso(2);

    --printa o resultado
    print calc;

*/

CREATE or REPLACE FUNCTION valor_curso (codigo in estoque.est_codigo%type)
    return number
is
    valor estoque.est_preco_venda%type := 0 ;
BEGIN
    select est_preco_venda into valor from estoque where est_codigo = codigo;
    return (valor);
END valor_curso;



--select * from estoque 
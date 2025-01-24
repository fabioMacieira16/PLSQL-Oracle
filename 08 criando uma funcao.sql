-- cria uma função de calulo
create or replace function calculo(numero in number)
 RETURN number
IS
BEGIN
    return (numero + 20);
end calculo;

SELECT * from ESTOQUE;
SELECT CALCULO(est_preco_venda) FROM estoque;


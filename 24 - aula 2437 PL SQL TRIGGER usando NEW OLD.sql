CREATE OR REPLACE TRIGGER controla_preco_maior_valor
    BEFORE update 
        OF EST_PRECO_VENDA
        ON estoque
    FOR EACH ROW
BEGIN
    if (:NEW.EST_PRECO_VENDA < :old.EST_PRECO_VENDA) then
        raise_application_error(-20001, 'O novo valor deve ser maior que o antigo');
    end if;
END controla_preco_maior_valor;


--SELECT * FROM ESTOQUE;
--update ESTOQUE SET EST_PRECO_VENDA = 500 where EST_CODIGO = 4;
CREATE OR REPLACE TRIGGER contrala_preco
    BEFORE INSERT OR update 
    OF EST_PRECO_VENDA
    ON estoque
    FOR EACH ROW
    WHEN (not NEW.EST_PRECO_VENDA BETWEEN 100 AND 200)

BEGIN
        raise_application_error(-20001, 'Preço de venda não pode ser menor que 100 reais');
EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20002, 'Erro desconhecido');
END;
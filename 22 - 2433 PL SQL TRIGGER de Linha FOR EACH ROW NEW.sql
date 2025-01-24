CREATE OR REPLACE TRIGGER contrala_preco
    BEFORE INSERT OR update 
    OF EST_PRECO_VENDA
    ON estoque
    FOR EACH ROW

BEGIN
    if :NEW.EST_PRECO_VENDA < 100 or :NEW.EST_PRECO_VENDA > 200 then
        raise_application_error(-20001, 'Preço de venda não pode ser menor que 100 reais');
    else
        dbms_output.put_line('Preço de venda aceito');end if;
EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20002, 'Erro desconhecido');
END;

create or REPLACE TRIGGER "BAIXA_ESTOQUE"
AFTER INSERT OR UPDATE OR DELETE ON VENDAS
FOR EACH ROW
BEGIN
    -- SE FOR UMA OPERAÇÃO DE INSERT
    IF INSERTING THEN
        UPDATE ESTOQUE 
        SET EST_QUANTIDADE = EST_QUANTIDADE - :NEW.VEN_QUANTIDADE 
        WHERE EST_CODIGO = :NEW.VEN_CODIGO;
    END IF;
    IF DELETING THEN
        UPDATE ESTOQUE 
        SET EST_QUANTIDADE = EST_QUANTIDADE + :OLD.VEN_QUANTIDADE 
        WHERE EST_CODIGO = :OLD.VEN_CODIGO;
    END IF;

    IF UPDATING THEN
        UPDATE ESTOQUE 
        SET EST_QUANTIDADE = EST_QUANTIDADE + :OLD.VEN_QUANTIDADE 
        WHERE EST_CODIGO = :OLD.VEN_CODIGO_PRODUTO;

        --ADD No estoque
        UPDATE ESTOQUE
        SET EST_QUANTIDADE = EST_QUANTIDADE - :NEW.VEN_QUANTIDADE 
        WHERE EST_CODIGO = :NEW.VEN_CODIGO_PRODUTO;
    END IF;
END;
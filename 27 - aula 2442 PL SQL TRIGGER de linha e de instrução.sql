CREATE OR REPLACE TRIGGER ALTERADO
    AFTER UPDATE ON ESTOQUE
    FOR EACH ROW
BEGIN
    dbms_output.put_line('Registro alterado com sucesso');
END ALTERADO;
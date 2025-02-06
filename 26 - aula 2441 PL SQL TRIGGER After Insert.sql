CREATE OR REPLACE TRIGGER GRAVADO
AFTER INSERT ON ESTOQUE
BEGIN
    dbms_output.put_line('Registro gravado com sucesso');
END;
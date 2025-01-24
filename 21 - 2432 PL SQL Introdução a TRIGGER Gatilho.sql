CREATE OR REPLACE TRIGGER trigger_name
    AFTER| BEFORE evento
    On  table_name
    [FOR EACH ROW]
    [when (condition)]
DECLARE
    declarações
BEGIN
    comandos
EXCEPTION
    rotinas de execução
END;
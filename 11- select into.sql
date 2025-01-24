DECLARE
    quantidade NUMBER;
BEGIN
    SELECT COUNT(EST_CODIGO) INTO quantidade FROM ESTOQUE;
    dbms_output.put_line('Possui ' || quantidade || ' registros');
END;


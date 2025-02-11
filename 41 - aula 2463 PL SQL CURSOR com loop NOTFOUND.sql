DECLARE 
    CURSOR cursor_estoque IS SELECT * FROM estoque;
    registro_estoque cursor_estoque%ROWTYPE;

BEGIN   

    OPEN cursor_estoque;
    LOOP
        FETCH cursor_estoque INTO registro_estoque;
        EXIT WHEN cursor_estoque%NOTFOUND;
        dbms_output.put_line('Codigo: ' || registro_estoque.est_codigo || ' Descricao: ' || registro_estoque.est_descricao);
    END LOOP;
    CLOSE cursor_estoque;
END;

DECLARE 
  numero1 NUMBER;
  numero2 NUMBER;
BEGIN
    numero1 := 8;
    numero2 := 10;
    DBMS_OUTPUT.PUT_LINE('A Soma é : ' || (numero1 + numero2));
END;

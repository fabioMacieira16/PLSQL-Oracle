--DROP table LOG_ESTOQUE;
CREATE TABLE LOG_ESTOQUE
(
    USUARIO VARCHAR2(100),
    DATA_LOG DATE,
    ACAO VARCHAR2(100)
);

-- SELECT * from LOG_ESTOQUE
GO;

CREATE OR REPLACE TRIGGER CONNECT_LOG
    AFTER LOGON ON DATABASE
BEGIN
    INSERT INTO LOG_ESTOQUE (USUARIO, DATA_LOG, ACAO)
    VALUES (USER, SYSDATE, 'Conectou');
END CONNECT_LOG;



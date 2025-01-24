CREATE TABLE estoque (
    est_codigo NUMBER not null,
    est_nome VARCHAR2(40),
    est_tipo CHAR(2),
    est_precovendo NUMBER(10,2),
    est_datacad DATE
);

-- preecna a tabela com os seguintes dados
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (1, 'Produto A', 'AA', 100.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (2, 'Produto B', 'BB', 200.00, TO_DATE('2023-02-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (3, 'Produto C', 'CC', 300.00, TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (4, 'Produto D', 'DD', 400.00, TO_DATE('2023-04-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (5, 'Produto E', 'EE', 500.00, TO_DATE('2023-05-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (6, 'Produto F', 'FF', 600.00, TO_DATE('2023-06-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (7, 'Produto G', 'GG', 700.00, TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (8, 'Produto H', 'HH', 800.00, TO_DATE('2023-08-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (9, 'Produto I', 'II', 900.00, TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO estoque (est_codigo, est_nome, est_tipo, est_precovendo, est_datacad) VALUES (10, 'Produto J', 'JJ', 1000.00, TO_DATE('2023-10-01', 'YYYY-MM-DD'));


SELECT * FROM estoque;  



DESCRIBE estoque
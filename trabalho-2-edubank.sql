CREATE DATABASE edubank_db;

USE edubank_db;

CREATE TABLE contas (
    id_conta INT AUTO_INCREMENT PRIMARY KEY,
    titular VARCHAR(100) NOT NULL,
    saldo DECIMAL(10,2) NOT NULL DEFAULT 0.00
);

INSERT INTO contas (titular, saldo)
VALUES
('Carlos Eduardo', 1000.00),
('Aline Souza', 200.00);

START TRANSACTION;

UPDATE contas
SET saldo = saldo - 300.00
WHERE titular = 'Carlos Eduardo';

UPDATE contas
SET saldo = saldo + 300.00
WHERE titular = 'Aline Souza';

COMMIT;

SELECT * FROM contas;

START TRANSACTION;

UPDATE contas
SET saldo = saldo - 500.00
WHERE titular = 'Aline Souza';

ROLLBACK;

SELECT * FROM contas;

CREATE TABLE IF NOT EXISTS Salesman(
Salesman_id TEXT PRIMARY KEY,
name TEXT,
city TEXT,
Comission REAL
);

INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
('5001','James Hoog', 'New York', 0.15),
('5002','Nail Knite', 'Paris', 0.13),
('5005','Pit Alex', 'London', 0.11),
('5006','Mc Lyon', 'Paris', 0.14),
('5007','Paul Adam', 'Rome', 0.13),
('5003','Lauson Hen', 'San Jose', 0.12);

SELECT * FROM Salesman;

CREATE TABLE IF NOT EXISTS Orders (
ord_no TEXT PRIMARY KEY,
purch_amt REAL,
ord_date TEXT,
customer_id TEXT,
Salesman_id TEXT
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id) VALUES
('70001', 150.5, '2012-10-05', '3005', '5002'),
('70009', 270.65, '2012-09-10', '3001', '5001'),
('70002', 65.26, '2012-10-05', '3002', '5003'),
('70004', 110.5, '2012-08-17', '3009', '5007'),
('70007', 948.5, '2012-09-10', '3005', '5005'),
('70005', 2400.6, '2012-07-27', '3007', '5006');

SELECT * FROM Orders;

SELECT name, Comission
FROM Salesman;

DROP Table Orders;

CREATE TABLE IF NOT EXISTS Players (
ply_id TEXT PRIMARY KEY,
ply_name TEXT,
city TEXT,
score REAL
);

INSERT INTO Players (ply_id, ply_name, city, score) VALUES
('1001','James Hoog', 'New York', 15),
('1002','Kong Ping', 'Paris', 13),
('1005','Pot Alex', 'London', 11),
('1006','Mic Lion', 'Paris', 14),
('1007','Paul Adams', 'Rome', 13),
('1003','Lason Hein', 'Florida', 12);

SELECT * FROM Players;

SELECT ply_name, city, score
FROM Players
WHERE score <= 14;

SELECT ply_id, ply_name, score
FROM Players
WHERE score >= 14;

SELECT ply_name, city, score
FROM Players
WHERE city = 'Paris';

SELECT Ply_id, ply_name, city, score
FROM Players
WHERE ply_id == '1007';

SELECT ply_name, city, score
FROM Players
WHERE score <> 13;
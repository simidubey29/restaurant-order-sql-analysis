INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Mumbai'),
(2, 'Priya Verma', 'Delhi'),
(3, 'Aman Singh', 'Pune'),
(4, 'Neha Kapoor', 'Bangalore');

INSERT INTO menu VALUES
(101, 'Margherita Pizza', 'Pizza', 299),
(102, 'Veg Burger', 'Burger', 149),
(103, 'Pasta Alfredo', 'Pasta', 249),
(104, 'Cold Coffee', 'Beverage', 99),
(105, 'French Fries', 'Snacks', 129);

INSERT INTO orders VALUES
(1001, 1, '2026-05-01', '12:30:00'),
(1002, 2, '2026-05-01', '13:15:00'),
(1003, 3, '2026-05-02', '19:45:00'),
(1004, 1, '2026-05-03', '20:10:00');

INSERT INTO order_details VALUES
(1, 1001, 101, 2),
(2, 1001, 104, 1),
(3, 1002, 102, 3),
(4, 1003, 103, 1),
(5, 1003, 105, 2),
(6, 1004, 101, 1),
(7, 1004, 105, 1);
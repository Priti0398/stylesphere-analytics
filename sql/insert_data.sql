INSERT INTO customers VALUES
(101,'Aarav Sharma','Male',28,'Pune','Maharashtra','2024-01-10','Premium'),
(102,'Ananya Patel','Female',25,'Mumbai','Maharashtra','2024-02-15','Regular'),
(103,'Rohan Mehta','Male',34,'Bengaluru','Karnataka','2024-03-05','Premium'),
(104,'Sneha Iyer','Female',29,'Chennai','Tamil Nadu','2024-03-18','Budget'),
(105,'Kabir Singh','Male',31,'Delhi','Delhi','2024-04-02','Regular'),
(106,'Priya Nair','Female',27,'Hyderabad','Telangana','2024-04-20','Premium');

INSERT INTO products VALUES
(201,'Slim Fit Shirt','Shirts','UrbanThread',650,999,15),
(202,'Classic Jeans','Jeans','DenimCo',900,1499,10),
(203,'Floral Kurta','Kurtas','EthniWear',500,899,20),
(204,'Silk Saree','Sarees','Vastra',1800,2999,12),
(205,'Leather Handbag','Handbags','LuxCarry',1200,2199,18),
(206,'Running Shoes','Shoes','SprintX',1400,2499,10);

INSERT INTO orders VALUES
(301,101,'2025-01-05','Pune','UPI',2498),
(302,102,'2025-01-09','Mumbai','Card',899),
(303,103,'2025-01-12','Bengaluru','UPI',1499),
(304,104,'2025-01-15','Chennai','COD',2999),
(305,101,'2025-02-03','Pune','Card',1799),
(306,106,'2025-02-11','Hyderabad','UPI',2199);

INSERT INTO order_items VALUES
(1,301,201,1,999,999),
(2,301,206,1,1499,1499),
(3,302,203,1,899,899),
(4,303,202,1,1499,1499),
(5,304,204,1,2999,2999),
(6,305,205,1,1799,1799);

INSERT INTO returns VALUES
(1,304,'Size issue','2025-01-22',2999);

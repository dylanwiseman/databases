INSERT INTO artist (name) VALUES
('Michael Buble'),
('Justin Beiber'),
('Post Malone');

SELECT * FROM artist
ORDER BY name
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to IN (
  SELECT employee_id FROM employee
  WHERE first_name = 'Nancy' AND last_name = 'Edwards');

SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT SUM(total) FROM invoice;

SELECT * FROM invoice
JOIN invoice_line ON
invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > .99;

SELECT invoice_date, first_name, last_name, total FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id; 

SELECT customer.first_name as customer_first_name, customer.last_name as customer_last_name, employee.first_name, employee.last_name
FROM customer
JOIN employee
ON customer.support_rep_id = employee.employee_id;

SELECT album.title, artist.name FROM artist
JOIN album ON album.artist_id = artist.artist_id;

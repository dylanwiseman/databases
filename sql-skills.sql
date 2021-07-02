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

SELECT * FROM artist
ORDER BY name DESC;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT track_id FROM playlist_track
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id
WHERE name = 'Music';

SELECT name FROM track
JOIN playlist_track on track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

SELECT track.name, playlist.name FROM playlist_track
JOIN track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name, album.title FROM track
JOIN album ON track.album_id = album.album_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk';
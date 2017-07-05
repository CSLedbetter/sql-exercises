#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
# MySQL DML Exercises 12/20 - The INNER JOIN

# Write a query to select all rentals (complete with customer name and film title) made on 2005-05-24, ordered by rental date in descending order.
# Include the following columns: Rental Date, Customer First Name, Customer Last Name, Film Title
# You will need to perform an inner join on the customer, inventory and film tables (in that order) to include the necessary columns.
SELECT rental_date, first_name, last_name, title from rental INNER JOIN customer ON customer.customer_id = rental.customer_id  INNER JOIN inventory ON inventory.inventory_id = rental.rental_id INNER JOIN film ON film.film_id = inventory.inventory_id  WHERE DATE(rental_date) LIKE "2005-05-24" ORDER BY rental_date DESC;
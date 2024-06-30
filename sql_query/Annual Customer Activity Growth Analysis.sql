--1 Menampilkan rata-rata jumlah customer aktif bulanan (monthly active user) untuk setiap tahun

SELECT 
	year, FLOOR(AVG(customer_total)) avg_monthly_active_user
FROM (
	SELECT 
		date_part('year', od.order_purchase_timestamp) AS year,
		date_part('month', od.order_purchase_timestamp) AS month,
		COUNT(DISTINCT cd.customer_unique_id) customer_total
	FROM orders_dataset od
	JOIN customers_dataset cd
		ON cd.customer_id = od.customer_id
	GROUP BY 1, 2
	) sub
GROUP BY 1
ORDER BY 1;

--2 Menampilkan jumlah customer baru pada masing-masing tahun

SELECT 
	year, COUNT(customer_unique_id) total_new_customer
FROM (
	SELECT
		MIN(date_part('year', od.order_purchase_timestamp)) AS year,
		cd.customer_unique_id
	FROM orders_dataset od
	JOIN customers_dataset cd
		ON cd.customer_id = od.customer_id
	GROUP BY 2
	) sub
GROUP BY 1
ORDER BY 1;

--3 Menampilkan jumlah customer repeat order pada masing-masing tahun

SELECT 
	year, count(customer_unique_id) total_customer_repeat_order
FROM (
	SELECT
		date_part('year', od.order_purchase_timestamp) AS year,
		cd.customer_unique_id,
		COUNT(od.order_id) total_order
	FROM orders_dataset od
	JOIN customers_dataset cd
		ON cd.customer_id = od.customer_id
	GROUP BY 1, 2
	HAVING count(2) > 1
	) AS sub
GROUP BY 1
ORDER BY 1;

--4 Menampilkan rata-rata jumlah order yang dilakukan customer untuk masing-masing tahun

SELECT 
	year, ROUND(AVG(freq), 3) avg_order_freq
FROM (
	SELECT
		date_part('year', od.order_purchase_timestamp) AS year,
		cd.customer_unique_id,
		COUNT(order_id) freq
	FROM orders_dataset od
	JOIN customers_dataset cd
		ON cd.customer_id = od.customer_id
	GROUP BY 1, 2
	) sub
GROUP BY 1
ORDER BY 1;

--5 Menggabungkan ketiga metrik yang telah berhasil ditampilkan menjadi satu tampilan tabel

WITH cte_monthly_active_user AS (
	SELECT 
		year, FLOOR(AVG(customer_total)) avg_monthly_active_user
	FROM (
		SELECT 
			date_part('year', od.order_purchase_timestamp) AS year,
			date_part('month', od.order_purchase_timestamp) AS month,
			COUNT(DISTINCT cd.customer_unique_id) customer_total
		FROM orders_dataset od
		JOIN customers_dataset cd
			ON cd.customer_id = od.customer_id
		GROUP BY 1, 2
		) sub
	GROUP BY 1
),

cte_new_customer AS (
	SELECT 
		year, COUNT(customer_unique_id) total_new_customer
	FROM (
		SELECT
			Min(date_part('year', od.order_purchase_timestamp)) AS year,
			cd.customer_unique_id
		FROM orders_dataset od
		JOIN customers_dataset cd
			ON cd.customer_id = od.customer_id
		GROUP BY 2
		) sub
	GROUP BY 1
),

cte_repeat_order AS (
	SELECT 
		year, count(customer_unique_id) total_customer_repeat_order
	FROM (
		SELECT
			date_part('year', od.order_purchase_timestamp) AS year,
			cd.customer_unique_id,
			COUNT(od.order_id) total_order
		FROM orders_dataset od
		JOIN customers_dataset cd
			ON cd.customer_id = od.customer_id
		GROUP BY 1, 2
		HAVING count(2) > 1
		) AS sub
	GROUP BY 1
),

cte_frequency AS (
	SELECT 
		year, ROUND(AVG(freq), 3) AS avg_order_freq
	FROM (
		SELECT
			date_part('year', od.order_purchase_timestamp) AS year,
			cd.customer_unique_id,
			COUNT(order_id) freq
		FROM orders_dataset od
		JOIN customers_dataset cd
			ON cd.customer_id = od.customer_id
		GROUP BY 1, 2
		) sub
	GROUP BY 1
)

SELECT
	mau.year AS year, avg_monthly_active_user,
	total_new_customer, total_customer_repeat_order, avg_order_freq
FROM
	cte_monthly_active_user mau
	JOIN cte_new_customer nc
		ON mau.year = nc.year
	JOIN cte_repeat_order ro
		ON nc.year = ro.year
	JOIN cte_frequency f
		ON ro.year = f.year
GROUP BY 1, 2, 3, 4, 5
ORDER BY 1;
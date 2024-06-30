-- 1) Membuat database baru dengan klik kanan Databases > Create > Database dengan nama mini_project_1_ecommerce

-- 2) Membuat tabel menggunakan statement CREATE TABLE dengan mengikuti penamaan table yang
--    sesuai dengan file csv dan memastikan tipe data tiap kolom sesuai.

CREATE TABLE customers_dataset (
	customer_id varchar,
	customer_unique_id varchar,
	customer_zip_code_prefix varchar,
	customer_city varchar,
	customer_state varchar
);

CREATE TABLE geolocation_dataset (
	geolocation_zip_code_prefix varchar,
	geolocation_lat decimal,
	geolocation_lng decimal,
	geolocation_city varchar,
	geolocation_state varchar
);

CREATE TABLE order_items_dataset (
	order_id varchar,
	order_item_id int,
	product_id varchar,
	seller_id varchar,
	shipping_limit_date timestamp,
	price decimal,
	fright_value decimal
);

CREATE TABLE order_payments_dataset (
	order_id varchar,
	payment_sequential int,
	payment_type varchar,
	payment_installments int,
	payment_value decimal
);

CREATE TABLE order_reviews_dataset (
	review_id varchar,
	order_id varchar,
	review_score int,
	review_comment_title varchar,
	review_comment_message varchar,
	review_creation_date timestamp,
	review_answer_timestamp timestamp
);

CREATE TABLE orders_dataset (
	order_id varchar,
	customer_id varchar,
	order_status varchar,
	order_purchase_timestamp timestamp,
	order_approved_at timestamp,
	order_delivered_carrier_date timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp
);

CREATE TABLE product_dataset (
	product_id varchar,
	product_category_name varchar,
	product_name_lenght int,
	product_description_lenght int,
	product_photos_qty int,
	product_weight_g decimal,
	product_length_cm decimal,
	product_height_cm decimal,
	product_width_cm decimal
);

CREATE TABLE sellers_dataset (
	seller_id varchar,
	seller_zip_code_prefix varchar,
	seller_city varchar,
	seller_state varchar
);

-- 3) Mengimpor file csv ke dalam masing-masing tabel yang telah dibuat dengan klik kanan pada nama tabel > Import/Export Data

-- 4) Menentukan Primary Key dan Foreign Key agar bisa membuat relasi antar tabelnya.
--    Pastikan Primary Key memiliki nilai unik dan tipe data sesuai antara Primary Key dan Foreign Key pada dataset.

-- PRIMARY KEY
ALTER TABLE customers_dataset ADD CONSTRAINT customers_dataset_pkey PRIMARY KEY(customer_id);
ALTER TABLE geolocation_dataset ADD CONSTRAINT geolocation_dataset_pkey PRIMARY KEY(geolocation_zip_code_prefix);
ALTER TABLE orders_dataset ADD CONSTRAINT orders_dataset_pkey PRIMARY KEY(order_id);
ALTER TABLE product_dataset ADD CONSTRAINT product_dataset_pkey PRIMARY KEY(product_id);
ALTER TABLE sellers_dataset ADD CONSTRAINT sellers_dataset_pkey PRIMARY KEY(seller_id);

-- FOREIGN KEY
ALTER TABLE customers_dataset ADD CONSTRAINT fk_customer_zip_code_prefix FOREIGN KEY (customer_zip_code_prefix) 
REFERENCES geolocation_dataset(geolocation_zip_code_prefix);
ALTER TABLE sellers_dataset ADD CONSTRAINT fk_seller_zip_code_prefix FOREIGN KEY (seller_zip_code_prefix) 
REFERENCES geolocation_dataset(geolocation_zip_code_prefix);
ALTER TABLE order_items_dataset ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_payments_dataset ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_reviews_dataset ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders_dataset;
ALTER TABLE order_items_dataset ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES product_dataset;
ALTER TABLE order_items_dataset ADD CONSTRAINT fk_seller_id FOREIGN KEY (seller_id) REFERENCES sellers_dataset;
ALTER TABLE orders_dataset ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers_dataset;

-- 5) Membuat ERD dengan cara klik kanan pada database mini_project_1_ecommerce > ERD For Database
CREATE TABLE cdm.user_product_counters (
id SERIAL PRIMARY KEY,
user_id UUID NOT NULL,
product_id UUID NOT NULL,
product_name VARCHAR(200) NOT NULL,
order_cnt INT NOT NULL,
CONSTRAINT user_product_counters_order_cnt_check CHECK (order_cnt >= 0),
CONSTRAINT user_product_counters_user_product_unique UNIQUE(user_id, product_id))
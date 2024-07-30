CREATE TABLE stg.order_events (
id SERIAL PRIMARY KEY,
object_id INT NOT NULL,
object_type VARCHAR(50) NOT NULL,
sent_dttm timestamp NOT NULL,
payload JSON NOT NULL)

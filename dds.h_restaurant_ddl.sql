CREATE TABLE dds.h_restaurant (
h_restaurant_pk UUID PRIMARY KEY NOT NULL,
restaurant_id VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
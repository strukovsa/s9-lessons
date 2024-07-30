CREATE TABLE dds.l_product_restaurant (
hk_product_restaurant_pk UUID PRIMARY KEY NOT NULL,
h_restaurant_pk UUID REFERENCES dds.h_restaurant (h_restaurant_pk) NOT NULL,
h_product_pk UUID REFERENCES dds.h_product (h_product_pk) NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
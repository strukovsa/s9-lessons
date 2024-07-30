CREATE TABLE dds.l_order_product (
hk_order_product_pk UUID PRIMARY KEY NOT NULL,
h_order_pk UUID REFERENCES dds.h_order (h_order_pk) NOT NULL,
h_product_pk UUID REFERENCES dds.h_product (h_product_pk) NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
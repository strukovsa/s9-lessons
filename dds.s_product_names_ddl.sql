CREATE TABLE dds.s_product_names (
h_product_pk UUID REFERENCES dds.h_product (h_product_pk) NOT NULL,
name VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL,
hk_product_names_hashdiff UUID NOT NULL,
PRIMARY KEY (h_product_pk, load_dt))
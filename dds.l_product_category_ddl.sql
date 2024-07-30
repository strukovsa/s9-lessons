CREATE TABLE dds.l_product_category (
hk_product_category_pk UUID PRIMARY KEY NOT NULL,
h_category_pk UUID REFERENCES dds.h_category (h_category_pk) NOT NULL,
h_product_pk UUID REFERENCES dds.h_product (h_product_pk) NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
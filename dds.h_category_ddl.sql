CREATE TABLE dds.h_category (
h_category_pk UUID PRIMARY KEY NOT NULL,
category_name VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
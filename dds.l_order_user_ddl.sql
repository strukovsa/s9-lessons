CREATE TABLE dds.l_order_user (
hk_order_user_pk UUID PRIMARY KEY NOT NULL,
h_order_pk UUID REFERENCES dds.h_order (h_order_pk) NOT NULL,
h_user_pk UUID REFERENCES dds.h_user (h_user_pk) NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL)
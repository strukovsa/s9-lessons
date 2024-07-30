CREATE TABLE dds.s_order_status (
h_order_pk UUID REFERENCES dds.h_order (h_order_pk) NOT NULL,
status VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL,
hk_order_status_hashdiff UUID NOT NULL,
PRIMARY KEY (h_order_pk, load_dt))

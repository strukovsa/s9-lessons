CREATE TABLE dds.s_order_cost (
h_order_pk UUID REFERENCES dds.h_order (h_order_pk) NOT NULL,
cost decimal(19, 5) NOT NULL,
payment decimal(19, 5) NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL,
hk_order_cost_hashdiff UUID NOT NULL,
PRIMARY KEY (h_order_pk, load_dt))
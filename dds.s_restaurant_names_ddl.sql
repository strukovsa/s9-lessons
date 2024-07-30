CREATE TABLE dds.s_restaurant_names (
h_restaurant_pk UUID REFERENCES dds.h_restaurant (h_restaurant_pk) NOT NULL,
name VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL,
hk_restaurant_names_hashdiff UUID NOT NULL,
PRIMARY KEY (h_restaurant_pk, load_dt))

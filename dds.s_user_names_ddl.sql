CREATE TABLE dds.s_user_names (
h_user_pk UUID REFERENCES dds.h_user (h_user_pk) NOT NULL,
username VARCHAR NOT NULL,
userlogin VARCHAR NOT NULL,
load_dt TIMESTAMP NOT NULL,
load_src VARCHAR NOT NULL,
hk_user_names_hashdiff UUID NOT NULL,
PRIMARY KEY (h_user_pk, load_dt))
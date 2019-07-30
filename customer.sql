CREATE TABLE customer
(	
customer_id varchar2(8)
  constraint customer_customer_id_pk primary key
	constraint customer_customer_id_nn not null,
title varchar2(8)
	constraint customer_title_nn not null,
surname varchar2(16)
	constraint customer_surname_nn not null,
forename varchar2(16)
	constraint customer_forename_nn not null,
username varchar2(16)
	constraint customer_username_nn not null
	constraint customer_username_nn unique,
email varchar2(128)
	constraint customer_email_nn not null
	constraint customer_email_chk check(regexp_like(email,'^(\S+)\@(\S+)\.(\S+)$'),	
phone_no varchar2(16)
	constraint customer_phone_no_nn not null,
house_no number(8),
house_name varchar2(16),
postcode varchar2(8)
	constraint customer_postcode_nn not null
);
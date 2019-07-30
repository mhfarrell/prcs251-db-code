create table staff
(
staff_id varchar2(8)
  constraint staff_staff_id_pk primary key
  constraint staff_staff_id_nn not null,
title varchar2(8)
	constraint staff_title_nn not null,
surname varchar2(16)
	constraint staff_surname_nn not null,
forename varchar2(16)
	constraint staff_forename_nn not null,
username varchar2(16)
	constraint staff_username_nn not null
	constraint staff_username_nn unique,
email varchar2(128)
	constraint staff_email_nn not null
	constraint staff_email_chk check(regexp_like(email,'^(\S+)\@(\S+)\.(\S+)$'),	
phone_no varchar2(16)
	constraint staff_phone_no_nn not null,
house_no number(8),
house_name varchar2(16),
postcode varchar2(8)
	constraint staff_postcode_nn not null,
job_title varchar2(16)
  constraint staff_job_title_nn not null,
active char(1)
  constraint staff_active_nn not null
);
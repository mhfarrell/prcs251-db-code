create table status
(
staus_id varchar2(8)
  constraint status_status_id_nn not null
  constraint status_status_id_pk primary key,
status varchar2(16)
  constraint statis_status_nn not null
);

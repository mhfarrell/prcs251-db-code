create table dietary
(
dietary_id varchar2(8)
  constraint dietary_dietary_id_pk primary key
    constraint dietary_dietary_id_nn not null,
dietary_info varchar2(16)
  constraint dietary_dietary_info_nn not null
);

create table order_history
(
order_no varchar2(8)
  constraint history_order_no_nn not null,
status_id varchar2(8)
  constraint history_status_id_nn not null,
status_changed timestamp
  constraint history_stat_change_nn not null,
staff_id varchar2(8),
  constraint history_staff_id_fk foreign key (staff_id) references staff(staff_id),
  constraint history_composite_key_pk primary key(order_no, status_id)
);

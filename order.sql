create table order
(
order_no varchar2(8)
  constraint order_order_no_pk primary key
  constraint order_order_no_nn not null,
date_ordered timestamp
  constraint order_date_order_nn not null,
customer_id varchar2(8),
guest char(1),
surname varchar2(16),
forename varchar2(16),
email varchar2(128),
phone_no number(16),
house_no number(8),
house_name varchar2(16),
postcode varchar2(8),
payment_method varchar2(8)
  constraint order_payment_nn not null,
paid char(1)
  constraint order_paid_nn not null,
delivery_notes varchar2(128),
status_id varchar2(8)
  constraint order_status_id_nn not null,

  constraint order_status_id_fk foreign key (status_id) references status(status_id),
  constraint order_customer_id_fk foreign key (customer_id) references customer(customer_id)
);
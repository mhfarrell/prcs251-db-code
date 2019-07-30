create table order_item
(
order_no varchar2(8)
  constraint order_order_no_nn not null,
item_no varchar2(8)
  constraint order_item_no_nn not null,
quantity number(8)
  constraint order_quantity_nn not null,
  
  constraint order_composite_pk primary key(order_no, item_no)
);
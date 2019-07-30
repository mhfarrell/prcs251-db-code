create table drink
(
drink_id varchar2(8)
  constraint drink_drink_id_pk primary key
  constraint drink_drink_id_nn not null,
item_no varchar2(8)
  constraint drink_item_no_nn not null,
dietary_id varchar2(8)
  constraint drink_dietary_id_nn not null,
drink_size varchar2(8)
  constraint drink_drink_size_nn not null,
price float
  constraint drink_price_nn not null,

  constraint drink_item_no_fk foreign key (item_no) references item(item_no),
  constraint drink_dietary_id_fk foreign key (dietary_id) references dietary(dietary_id)
);

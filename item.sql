create table item
(
item_no varchar2(8)
  constraint item_item_no_pk primary key
    constraint item_item_no_nn not null,
item_name varchar2(16)
    constraint item_item_name_nn not null,
description varchar2(512)
  constraint item_description_nn not null
);

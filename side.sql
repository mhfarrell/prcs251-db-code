create table side
(
side_id varchar2(8)
  constraint side_side_id_pk primary key
  constraint side_side_id_nn not null,
item_no varchar2(8)
  constraint side_item_no_nn not null,
dietary_id varchar2(8)
  constraint side_dietary_id_nn not null,
ingredient_id varchar2(8)
  constraint side_ingredient_id_nn not null,
price float
  constraint side_price_nn not null,
  
  constraint side_item_no_fk foreign key (item_no) references item(item_no),
  constraint side_dietary_id_fk foreign key (dietary_id) references dietary(dietary_id),
  constraint side_ingredient_id_fk foreign key (ingredient_id) references ingredient(ingredient_id)
);

create table pizza
(
pizza_id varchar2(8)
  constraint pizza_pizza_id_pk primary key
  constraint pizza_pizza_id_nn not null,
item_no varchar2(8)
  constraint pizza_item_no_nn not null,
dietary_id varchar2(8)
  constraint pizza_dietary_id_nn not null,
ingredient_id varchar2(8)
  constraint pizza_ingredient_id_nn not null,
pizza_size varchar2(8)
  constraint pizza_pizza_size_nn not null,
base_type varchar2(16)
  constraint pizza_base_type_nn not null,
price float
  constraint pizza_price_nn not null,
  
  constraint pizza_item_no_fk foreign key (item_no) references item(item_no),
  constraint pizza_dietary_id_fk foreign key (dietary_id) references dietary(dietary_id),
  constraint pizza_ingredient_id_fk foreign key (ingredient_id) references ingredient(ingredient_id)   
);

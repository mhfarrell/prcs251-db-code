create table ingredient
(
ingredient_id varchar2(8)
  constraint ingredient_ingredient_id_pk primary key
  constraint ingredient_ingredient_id_nn not null,
ingredient varchar2(16)
  constraint ingredient_ingredient_nn not null
);

create table product_category(
id number(5) primary key,
name varchar(20) ,
desc varchar(50),
created_at timestamp,
modified_at timestamp,
deleted_at timestamp
);


create table product_inventory(
id number(5) primary key,
quantity number(5) ,
created_at timestamp,
modified_at timestamp,
deleted_at timestamp
);

create table discount(
id number(5) primary key,
name varchar(20) ,
desc varchar(50),
discount_percent number(5,2),
active number(1),
created_at timestamp,
modified_at timestamp,
deleted_at timestamp
);


create table product(
id number(5) primary key,
name varchar(20),
desc varchar(50),
SKU varchar(20),
price number(5,2),
created_at timestamp,
modified_at timestamp,
deleted_at timestamp,
category_id number(5),
constraint category_id_FK Foreign key(category_id) references product_category(id),
inventory_id number(5),
constraint inventory_id_FK Foreign key(inventory_id) references product_inventory(id),
discount_id number(5),
constraint discount_id_FK Foreign key(discount_id) references discount(id)
);
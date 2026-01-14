create table if not exists clients(
    client_id integer primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) not null unique,
    phone_number varchar(15),
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

create table if not exists products(
    produt_id integer unsigned primary key auto_increment,
    name varchar(100) not null,
    slug varchar(150) not null unique,
    description text,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP    
);


create table if not exists bills(
    bill_id integer unsigned primary key auto_increment,
    client_id integer not null,
    total float,
    status enum('open', 'paid', 'lost') not null default 'open',
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    foreign key (client_id) references clients(client_id)
on delete cascade
on update cascade

);




insert into bills(client_id, total) values(10,15.00);
insert into clients(client_id, name, email) values(10, 'Yesica', 'yagiraldot@ieee.org');



#### tabla nueva 


create table if not exists bill_products (
bill_product_id integer unisigned primary key auto_increment,
bill_id integer not null,
product_id integer unsigned not null,
quantity integer not null default 1,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    foreign key (bill_id) references bills(bill_id)
    on update cascade
    on delete cascade,
);




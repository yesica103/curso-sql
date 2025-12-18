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
    updated_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);



#create table for user/owner inventory

CREATE TABLE IF NOT EXISTS owner_table
    owner_first_name varchar(255) NOT NULL,
    owner_last_name varchar(255) NOT NULL,
    owner_company_name varchar(255) NOT NULL,
    PRIMARY KEY(owner_first_name, owner_last_name, shoe_company_name)
    ;

#insert parameters for owner_table

insert into owner_table(owner_first_name, owner_last_name, owner_company_name)values





#create table for shoe table

CREATE TABLE IF NOT EXISTS shoe_table
    shoe_id int not NULL auto_increment,
    shoe_type varchar(255),
    shoe_brand varchar(255),
    shoe_name varchar(255),
    shoe_size varchar(255),
    shoe_color varchar(255),
    shoe_gender varchar(255),
    shoe_condition varchar(255),
    primary key(shoe_id)
    ;

#
#insert shoe parameters into shoe table
insert into shoe_table (shoe_type, shoe_brand, shoe_name, shoe_size, shoe_color, shoe_gender, shoe_condition) values









# create table for available inventory

CREATE TABLE IF NOT EXISTS inventory_table
    inventory_id int not NULL auto_increment,
    shoe_id int not NULL,
    Foreign Key (shoe_id) REFERENCES shoe_table(shoe_id),
    PRIMARY KEY(inventory_id)
    ;

#insert into inventory

insert into inventory_table(shoe_id) values



# create table for customer buying the shoe

CREATE TABLE IF NOT EXISTS customer_table
    customer_id int not null auto_increment,
    customer_first_name varchar(255),
    customer_last_name varchar(255),
    customer_phone_number int,
    customer_email varchar(255),
    customer_gender varchar(255),
    customer_shoe_size varchar(255),
    primary key(customer_id)
    ;
# insert parameters into customer table 
insert into customer_table(customer_first_name, customer_last_name, customer_phone_number, customer_email, customer_gender, customer_shoe_size) VALUES;


# create a table for transactions

CREATE TABLE IF NOT EXISTS transaction_table
    transaction_id int not null auto_increment,
    shoe_id int not null,
    transaction_type varchar(255),
    transaction_cost int,
    transaction_date date,
    primary key (transaction_id),
    FOREIGN key (shoe_id) REFERENCES shoe_table(shoe_id)

# insert parameters into transaction table
insert into transaction_table(shoe_id, transaction_type, transaction_cost, transaction_date) values;


# create a table for customer 
CREATE TABLE IF NOT EXISTS customer_transaction
    customer_transaction_id int not null auto_increment,
    customer_id int not null,
    transaction_id int not null,
    primary key (customer_transaction_id),
    FOREIGN key customer_id REFERENCES customer_table(customer_id),
    FOREIGN key transaction_id REFERENCES transaction_table(transaction_id)
;

# insert parameters into customer transaction table
insert into customer_transaction(customer_id, transaction_id) values;













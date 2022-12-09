#create table for user/owner inventory

CREATE TABLE IF NOT EXISTS owner_table(
    owner_id int NOT NULL AUTO_INCREMENT,
    owner_first_name varchar(255),
    owner_last_name varchar(255),
    owner_company_name varchar(255),
    owner_email varchar(255),
    PRIMARY KEY(owner_id)
);

#insert parameters for owner_table

insert into owner_table(owner_first_name, owner_last_name, owner_company_name, owner_email)values




#create table for authentication for each shoe reseller
create table if not exists owner_authentication(
    owner_id int not null,
    owner_auth_username varchar (255) not null,
    owner_auth_password varchar (255) not null,
    primary key (owner_auth_username, owner_auth_password),
    foreign key (owner_id) REFERENCES owner_table (owner_id)
);

#insert parameters for owner_authentication

insert into owner_authentication(owner_id, owner_auth_username, owner_auth_password)values


#create table for shoe table

CREATE TABLE IF NOT EXISTS shoe_table(
    shoe_id int not NULL auto_increment,
    shoe_brand varchar(255),
    shoe_name varchar(255),
    shoe_colorway varchar(255),
    shoe_retail_value int,
    shoe_description varchar(4000),
    shoe_image_url varchar(4000), 
    primary key(shoe_id)
);

#
#insert shoe parameters into shoe table
insert into shoe_table (shoe_brand, shoe_name, shoe_colorway, shoe_retail_value, shoe_description, shoe_image_url) values 

;









# create table for available inventory

CREATE TABLE IF NOT EXISTS inventory_table(
    inventory_id int not NULL auto_increment,
    shoe_id int not NULL,
    Foreign Key (shoe_id) REFERENCES shoe_table(shoe_id),
    PRIMARY KEY(inventory_id)
);

#insert into inventory

insert into inventory_table(shoe_id) values



# create table for customer buying the shoe

CREATE TABLE IF NOT EXISTS customer_table(
    customer_id int not null auto_increment,
    customer_first_name varchar(255),
    customer_last_name varchar(255),
    customer_phone_number int,
    customer_email varchar(255),
    customer_gender varchar(255),
    customer_shoe_size varchar(255),
    primary key(customer_id)
);
# insert parameters into customer table 
insert into customer_table(customer_first_name, customer_last_name, customer_phone_number, customer_email, customer_gender, customer_shoe_size) VALUES;


# create a table for transactions

CREATE TABLE IF NOT EXISTS transaction_table(
    transaction_id int not null auto_increment,
    shoe_id int not null,
    transaction_type varchar(255),
    transaction_cost int,
    transaction_date date,
    primary key (transaction_id),
    FOREIGN key (shoe_id) REFERENCES shoe_table(shoe_id)
);
# insert parameters into transaction table
insert into transaction_table(shoe_id, transaction_type, transaction_cost, transaction_date) values;


# create a table for customer 
CREATE TABLE IF NOT EXISTS customer_transaction(
    customer_transaction_id int not null auto_increment,
    customer_id int not null,
    transaction_id int not null,
    primary key (customer_transaction_id),
    FOREIGN key (customer_id) REFERENCES customer_table(customer_id),
    FOREIGN key (transaction_id) REFERENCES transaction_table(transaction_id)
);

# insert parameters into customer transaction table
insert into customer_transaction(customer_id, transaction_id) values;


#create table for the market values
create table if not exists market_values_table (
    market_value_id int not null auto_increment,
    shoe_id int not null,
    market_stockx_value int,
    market_flightClub_value int,
    market_Goat_values int,
    primary key (market_value_id),
    foreign key (shoe_id) REFERENCES shoe_table(shoe_id)
);


# insert parameters into market values table transaction table
insert into market_values_table(shoe_id, market_stockx_value, market_flightClub_value, market_Goat_values) values;









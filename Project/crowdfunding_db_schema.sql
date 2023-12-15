DROP table if exists category;
DROP table if exists subcategory;
DROP table if exists campaign;
DROP table if exists contacts;

CREATE TABLE category(
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR NOT NULL
);

SELECT * FROM category;

CREATE TABLE subcategory(
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR NOT NULL
);

SELECT * FROM subcategory;

CREATE TABLE campaign(
  cf_id FLOAT PRIMARY KEY,
  contact_id FLOAT NOT NULL,
  company_name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  goal VARCHAR NOT NULL,
  pledged VARCHAR NOT NULL,
  outcome VARCHAR NOT NULL,
  backers_count FLOAT NOT NULL,
  country VARCHAR NOT NULL,
  currency VARCHAR NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR NOT NULL,
  subcategory_id VARCHAR NOT NULL,
  foreign key (contact_id) references contacts(contact_id),
  foreign key (category_id) references category(category_id),
  foreign key (subcategory_id) references subcategory(subcategory_id)
);

SELECT * FROM campaign;

CREATE TABLE contacts(
  contact_id FLOAT PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR NOT NULL
);

SELECT * FROM contacts;
CREATE TABLE `kmrusers`(
  id integer primary key,
  disp_name text,
  name text,
  password text,
  auth_type text
);

CREATE TABLE `kmrproducts`(
  id integer primary key,
  name text,
  default_price integer
);

CREATE TABLE `kmrcustomer`(
  id integer primary key,
  name text,
  note text
);

CREATE TABLE `kmrorderdetail`(
  id integer primary key,
  order_id integer,
  product_id integer,
  price integer
);

CREATE TABLE `kmractions`(
  id integer primary key,
  plan_id integer,
  add_date date,
  note text,
  user_id integer,
  status text
);

CREATE TABLE `kmrtaskusers`(
  id integer primary key,
  task_id integer,
  user_id integer
);

CREATE TABLE `kmrreadings`(
  id integer primary key,
  add_date date,
  task_id integer,
  user_id integer
);

CREATE TABLE `kmrgoodjobs`(
  id integer primary key,
  add_date date,
  action_id integer,
  user_id integer
);

INSERT INTO kmrusers VALUES (1, "administrator", "admin", "admin", "admin");
INSERT INTO kmrusers VALUES (2, "user", "user", "user", "user");
INSERT INTO kmrusers VALUES (3, "guest", "guest", "guest", "guest");

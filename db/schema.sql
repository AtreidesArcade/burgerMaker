-- Create the burgers_db database --
CREATE DATABASE burgers_db;
USE burgers_db;

-- Create a burgers table with the required fields --
CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
  	ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	PRIMARY KEY(id)
);

-- Creating seed data for the burgers_db database --
INSERT INTO burgers (burger_name, devoured) VALUES ('Irish Mash Burger', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Sheperds Pie Burger', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Cherry Venison Burger', false);
INSERT INTO burgers (burger_name, devoured) VALUES ('Ewwie Veggie Burger', true);

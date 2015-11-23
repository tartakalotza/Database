# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          tar.dez                                         #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-24 00:04                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Departments"                                                #
# ---------------------------------------------------------------------- #
create schema 5605104021db;
use 5605104021db;
CREATE TABLE `Departments` (
    `Dpt_id` INTEGER(5) NOT NULL,
    `Dpt_name` VARCHAR(40),
    CONSTRAINT `PK_Departments` PRIMARY KEY (`Dpt_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Employees"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Employees` (
    `emp_id` INTEGER(5) NOT NULL,
    `emp_name` VARCHAR(40),
    `Birthday` VARCHAR(40),
    `Address` VARCHAR(40),
    `phone` INTEGER(10),
    `email` VARCHAR(40),
    `sex` VARCHAR(10),
    `Dpt_id` INTEGER(5),
    CONSTRAINT `PK_Employees` PRIMARY KEY (`emp_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Products` (
    `Pro_id` INTEGER(3) NOT NULL,
    `Pro_name` VARCHAR(40),
    `Price` VARCHAR(40),
    `emp_id` INTEGER(5),
    CONSTRAINT `PK_Products` PRIMARY KEY (`Pro_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Customer` (
    `cus_id` INTEGER(5) NOT NULL,
    `cus_name` VARCHAR(40),
    `cus_phone` INTEGER(10),
    `cus_address` VARCHAR(40),
    `emp_id` INTEGER(5) NOT NULL,
    CONSTRAINT `PK_Customer` PRIMARY KEY (`cus_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Order"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Order` (
    `Order_name` VARCHAR(40),
    `Order_id` INTEGER(5) NOT NULL,
    `cus_id` INTEGER(5),
    `emp_id` INTEGER(5),
    CONSTRAINT `PK_Order` PRIMARY KEY (`Order_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Employees` ADD CONSTRAINT `Departments_Employees` 
    FOREIGN KEY (`Dpt_id`) REFERENCES `Departments` (`Dpt_id`);

ALTER TABLE `Products` ADD CONSTRAINT `Employees_Products` 
    FOREIGN KEY (`emp_id`) REFERENCES `Employees` (`emp_id`);

ALTER TABLE `Order` ADD CONSTRAINT `Customer_Order` 
    FOREIGN KEY (`cus_id`) REFERENCES `Customer` (`cus_id`);

ALTER TABLE `Order` ADD CONSTRAINT `Employees_Order` 
    FOREIGN KEY (`emp_id`) REFERENCES `Employees` (`emp_id`);

ALTER TABLE `Customer` ADD CONSTRAINT `Employees_Customer` 
    FOREIGN KEY (`emp_id`) REFERENCES `Employees` (`emp_id`);

# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          tar.dez                                         #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-24 00:04                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Employees` DROP FOREIGN KEY `Departments_Employees`;

ALTER TABLE `Products` DROP FOREIGN KEY `Employees_Products`;

ALTER TABLE `Order` DROP FOREIGN KEY `Customer_Order`;

ALTER TABLE `Order` DROP FOREIGN KEY `Employees_Order`;

ALTER TABLE `Customer` DROP FOREIGN KEY `Employees_Customer`;

# ---------------------------------------------------------------------- #
# Drop table "Order"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Order` DROP PRIMARY KEY;

DROP TABLE `Order`;

# ---------------------------------------------------------------------- #
# Drop table "Customer"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Customer` DROP PRIMARY KEY;

DROP TABLE `Customer`;

# ---------------------------------------------------------------------- #
# Drop table "Products"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Products` DROP PRIMARY KEY;

DROP TABLE `Products`;

# ---------------------------------------------------------------------- #
# Drop table "Employees"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Employees` DROP PRIMARY KEY;

DROP TABLE `Employees`;

# ---------------------------------------------------------------------- #
# Drop table "Departments"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Departments` DROP PRIMARY KEY;

DROP TABLE `Departments`;

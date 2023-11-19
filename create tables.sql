create table HOME_INTEGRATION_VEHICLE (Base_ID int, Employee_ID int, Active_Status TINYINT, Repair_Need_Status TINYINT, Vehicle_Number int, PRIMARY KEY (Vehicle_Number), FOREIGN KEY (Base_ID) REFERENCES OFFICE_WAREHOUSE_BASE);

create table OFFICE_WAREHOUSE_BASE (Active_Projects int, Base_ID int, Metal_Sheet_Inventory float, Cardboard_Inventory float, Blanket_Inventory float, PRIMARY KEY (Base_ID));

create table OFFICE_MANAGER (Employee_ID int, Base_ID int, Department varchar(20), PRIMARY KEY (Employee_ID), FOREIGN KEY (Base_ID) REFERENCES OFFICE_WAREHOUSE_BASE);

create table PET_AID (Employee_ID int, Base_ID int, Vehicle_Number int, PRIMARY KEY (Employee_ID), FOREIGN KEY (Vehicle_Number) REFERENCES HOME_INTEGRATION_VEHICLE);

create table REPAIR_TECHNICIAN (Employee_ID int, Base_ID int, Active_Assignment_Status TINYINT, PRIMARY KEY (Employee_ID), UNIQUE (Active_Assignment_Status));
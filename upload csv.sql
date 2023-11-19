LOAD DATA LOCAL INFILE 'C:/Users/kziel/Desktop/HomeIntegrationVehicleCSV.csv' 
    into table HOME_INTEGRATION_VEHICLE 
    fields terminated by ',' 
    lines terminated by '\n'
    ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:/Users/kziel/Desktop/Office-Warehouse-BaseCSV.csv' 
    into table OFFICE_WAREHOUSE_BASE 
    fields terminated by ','
    lines terminated by '\n'
    ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:/Users/kziel/Desktop/OfficeManagerCSV.csv' 
    into table OFFICE_MANAGER 
    fields terminated by ','
    lines terminated by '\n'
    ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:/Users/kziel/Desktop/PetAidCSV.csv' 
    into table PET_AID 
    fields terminated by ','
    lines terminated by '\n'
    ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:/Users/kziel/Desktop/RepairTechCSV.csv' 
    into table REPAIR_TECHNICIAN 
    fields terminated by ','
    lines terminated by '\n'
    ignore 1 lines;

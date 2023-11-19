/*change base table to have ENUM column, column measures customer rating */
ALTER TABLE OFFICE_WAREHOUSE_BASE ADD rating ENUM('poor', 'low', 'average', 'good', 'great') NOT NULL;

/*insert a new instance to the table missing the ENUM to show an error will return without it */
INSERT INTO OFFICE_WAREHOUSE_BASE VALUES(2, 708, 0.85, 0.7, 0.92);

/*insert a new instance to the table using the new ENUM column type */
INSERT INTO OFFICE_WAREHOUSE_BASE VALUES(2, 708, 0.85, 0.7, 0.92, 'average');

/*change each column in the previously created record*/
UPDATE OFFICE_WAREHOUSE_BASE 
    SET Active_Projects = 1, 
    Metal_Sheet_Inventory = 0.8, 
    Cardboard_Inventory = 0.6, 
    Blanket_Inventory = 0.87, 
    rating = 'good' 
    WHERE Base_ID = 708
;

/*delete previously built/updated record*/
delete from office_warehouse_base WHERE Base_ID = 708;

/*Change Employee_ID column in Repair_Techician to be AUTO_INCREMENT*/
ALTER TABLE Repair_Technician MODIFY COLUMN Employee_ID int NOT NULL AUTO_INCREMENT;

/*demonstrate that AUTO_INCREMENT generates value for its column*/
insert into repair_technician (base_id, active_assignment_status) VALUES (708, NULL);

/*add column to repair technician table with DEFAULT parameter*/
ALTER TABLE REPAIR_TECHNICIAN ADD Standing ENUM ('poor', 'low', 'average', 'good', 'great') NOT NULL DEFAULT 'average';

/*demonstrate that DEFAULT generates value for its column*/
insert into repair_technician (base_id, active_assignment_status) VALUES (708, NULL);


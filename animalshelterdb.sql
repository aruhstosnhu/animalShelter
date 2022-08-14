/* Artifact Three: Databases */

/*
Database Name: animalshelterdb

This SQL file shows the steps taken to create and query from a database named 'animalshelterdb'
You can also export the data from this table into data mining tools such as JMP and sofastats

The information within this database can act as a real-life example when maintaining a patient database for an animal shelter

DB Tool: MySQL Workbench 8.0
Statistics Tool: SOFAstats v1.5.4

Author: Angela Ruhstorfer
SNHU CS 499: Computer Science Capstone
*/


/*
Create MySQL database `named animalshelterdb`
*/
CREATE SCHEMA `animalshelterdb`;

/*
Create `animal` table within `animalshelterdb` database
*/
CREATE TABLE `animalshelterdb`.`animal` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `age_years` INT NOT NULL,
  `vet_id` INT NOT NULL,
  `adoption_status` VARCHAR(45) NOT NULL,
  `Animalcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
COMMENT = 'Table of Animals within the SNHU Animal Shelter';

/*
Remove additonal `Animalcol` column from `animal` table
*/
ALTER TABLE `animalshelterdb`.`animal` 
DROP COLUMN `Animalcol`;

/*
Add data points into `animal` table
*/
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('01', 'Joy', 'Dog', 'F', '6', '07', 'ADOPTED');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('02', 'Callie', 'Cat', 'F', '2', '04', 'AVAILABLE');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('03', 'Jax', 'Dog', 'M', '8', '09', 'ADOPTION PENDING');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('04', 'Nila', 'Dog', 'F', '1', '05', 'AVAILABLE');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('05', 'George', 'Cat', 'M', '4', '01', 'AVAILABLE');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('06', 'Cheeks', 'Rabbit', 'M', '1', '10', 'ADOPTION PENDING');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('07', 'Milo', 'Dog', 'M', '4', '03', 'AVAILABLE');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('08', 'Willow', 'Horse', 'F', '10', '06', 'AVAILABLE');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('09', 'Troy', 'Dog', 'M', '2', '02', 'ADOPTED');
INSERT INTO `animalshelterdb`.`animal` (`id`, `name`, `type`, `gender`, `age_years`, `vet_id`, `adoption_status`) VALUES ('10', 'Cherri', 'Cat', 'F', '1', '08', 'AVAILABLE');

/*
Create `vet_record` table within `animalshelterdb` database
*/
CREATE TABLE `animalshelterdb`.`vet_record` (
  `vet_id` INT NOT NULL AUTO_INCREMENT,
  `bloodwork` VARCHAR(45) NOT NULL,
  `rabies_vaccine` VARCHAR(45) NOT NULL,
  `fixed` VARCHAR(45) NOT NULL,
  `dental_cleaning` VARCHAR(45) NOT NULL,
  `grooming` VARCHAR(45) NOT NULL,
  `deworming` VARCHAR(45) NOT NULL,
  `ready_for_adoption` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vet_id`));
COMMENT = 'Table of vet records for the animals within the SNHU Animal Shelter';

/*
Add data points into `vet_record` table
*/
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('01', 'y', 'y', 'n', 'n', 'y', 'n', 'n');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('02', 'y', 'y', 'n', 'y', 'y', 'y', 'y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('03', 'y', 'y', 'y', 'n', 'n', 'y', 'Y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('04', 'y', 'y', 'y', 'n', 'n', 'y', 'Y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('05', 'n', 'n', 'y', 'y', 'n', 'n', 'N');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('06', 'y', 'y', 'n', 'y', 'y', 'y', 'Y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('07', 'y', 'y', 'Y', 'Y', 'Y', 'Y', 'Y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('08', 'y', 'y', 'y', 'n', 'n', 'y', 'Y');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('09', 'y', 'n', 'y', 'y', 'y', 'y', 'N');
INSERT INTO `animalshelterdb`.`vet_record` (`vet_id`, `bloodwork`, `rabies_vaccine`, `fixed`, `dental_cleaning`, `grooming`, `deworming`, `ready_for_adoption`) VALUES ('10', 'n', 'y', 'n', 'n', 'y', 'y', 'N');

/*
Update 3 records in the 'vet.record' table to match other values in 'lowercase' answers
*/
UPDATE `animalshelterdb`.`vet_record` 
	SET `ready_for_adoption` = 'n' 
	WHERE (`vet_id` = '10');
UPDATE `animalshelterdb`.`vet_record` 
	SET `ready_for_adoption` = 'n' 
	WHERE (`vet_id` = '5');
UPDATE `animalshelterdb`.`vet_record` 
	SET `ready_for_adoption` = 'n' 
	WHERE (`vet_id` = '9');


/*
Create `animal_picture` table within `animalshelterdb` database
*/
CREATE TABLE `animalshelterdb`.`animal_picture` (
  `pic_id` INT NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `pic_date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pic_id`))
COMMENT = 'Table of pictures taken of animals within the shelter to post to the adoption site.';


/*
Add data points into `animal_picture` table
*/
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('01', 'Playing in the grass!', 'June');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('02', 'Loves kids!', 'May');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('03', 'Enjoys cuddling on the couch.', 'November');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('04', 'Shy with new people.', 'July');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('05', 'Gorgeous blue eyes!', 'May');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('06', 'Swimming in the lake with foster mom!', 'August');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('07', 'Fresh treats are their favorite.', 'February');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('08', 'Always ready to play!', 'September');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('09', 'Pleasant on walks in the park.', 'September');
INSERT INTO `animalshelterdb`.`animal_picture` (`pic_id`, `description`, `pic_date`) VALUES ('10', 'Friendly with other animals!', 'March');

/*
Edit 'animal' table to include new 'pic_id' column
*/
ALTER TABLE `animalshelterdb`.`animal` 
ADD COLUMN `pic_id` INT NOT NULL AFTER `vet_id`;

/*
Add data values to 'pic id' column in 'animal' table
*/
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '3' WHERE (`id` = '2');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '7' WHERE (`id` = '5');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '8' WHERE (`id` = '6');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '5' WHERE (`id` = '8');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '6' WHERE (`id` = '1');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '4' WHERE (`id` = '3');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '9' WHERE (`id` = '4');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '2' WHERE (`id` = '7');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '10' WHERE (`id` = '10');
UPDATE `animalshelterdb`.`animal` SET `pic_id` = '1' WHERE (`id` = '9');


/*
Use 'animalshelterdb' database and show the tables within it
*/
USE animalshelterdb;
SHOW TABLES;

/*
Use 'animalshelterdb' database and show columns within the 'animal' table
*/
USE animalshelterdb;
SHOW COLUMNS FROM animal


/*
Find and display animals that are ready to adopt with their picture description
*/
SELECT animal.id, animal.name, animal_picture.description, animal.adoption_status, vet_record.ready_for_adoption
	FROM animal, vet_record, animal_picture
	WHERE animal.pic_id = animal_picture.pic_id
    AND vet_record.ready_for_adoption = 'y'
    AND animal.adoption_status = 'AVAILABLE'
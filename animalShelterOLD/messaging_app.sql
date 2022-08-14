/*Final Project: Database Mangement Report*/


/*Grab the database that will be used*/
USE messaging;


/*
Task One: Table person Record Insert
*/
INSERT INTO person (first_name, last_name)
VALUES
    ("Angela", "Ruhstorfer");
SELECT * FROM person;
    
/*
Task Two: Alter the 'person' Table
*/
ALTER TABLE messaging.person ADD age INT(3) NOT NULL;
SHOW COLUMNS FROM person;


/*
Task Three: Update 'person' Table Records
*/
UPDATE messaging.person
    SET age = 25
    WHERE last_name = 'Ruhstorfer';
UPDATE messaging.person
    SET age = 31
    WHERE person_id BETWEEN 1 AND 4;
UPDATE messaging.person
    SET age = 28
    WHERE person_id BETWEEN 5 AND 6;
SELECT * FROM person;


/*
Task Four: Delete Records from person Table
*/
DELETE FROM messaging.person
    WHERE
    first_name = 'Diana' AND last_name = 'Taurasi';
SELECT * FROM person;   
    
    
/*   
Task Five: Alter the contact_list Table
*/
ALTER TABLE messaging.contact_list ADD favorite VARCHAR(10) default NULL;
SHOW COLUMNS FROM contact_list;


/*
Task Six: Update Records in the contact_list Table
*/
UPDATE messaging.contact_list
    SET favorite = 'y'
    WHERE contact_id = 1;
SELECT * FROM contact_list;    
    
/*
Task Seven: Update Records in the contact_list Table
*/
UPDATE messaging.contact_list
    SET favorite = 'n'
    WHERE contact_id <> 1;
SELECT * FROM contact_list;

/*
Task Eight: Insert Records to contact_list Table
*/
INSERT INTO contact_list (person_id, contact_id, favorite)
    VALUES
        (7, 4, 'y'),
        (2, 7, 'n'),
        (5, 7, 'y'),
        (1, 7, 'n');
SELECT * FROM contact_list;

/*
Task Nine: Create the image Table
*/
CREATE TABLE IF NOT EXISTS image (
    image_id INT(8) NOT NULL auto_increment,
    image_name VARCHAR(50) NOT NULL,
    image_location VARCHAR(250) NOT NULL,
    PRIMARY KEY (image_id)
) AUTO_INCREMENT = 1;
SHOW TABLES;
SHOW COLUMNS FROM image;


/*
Task Ten: Create the message_image Intersection Table
*/
CREATE TABLE IF NOT EXISTS message_image (
    message_id INT(8) NOT NULL,
    image_id INT(8) NOT NULL,
    PRIMARY KEY (message_id, image_id));
SHOW TABLES;
SHOW COLUMNS FROM message_image;


/*
Task Eleven: Insert Records to 'image' Table
*/
INSERT INTO image (image_name, image_location)
    VALUES
        ('Flower Garden', 'Manchester'),
        ('Waterfall', 'Franconia Notch'),
        ('Main Street', 'Concord'),
        ('Sunset', 'Bedford'),
        ('Country Roads', 'Loudon');
SELECT * FROM image;


/*
Task Twelve: Insert Records to 'message_image' Table
*/
INSERT INTO message_image (message_id, image_id)
    VALUES
        (5, 2),
        (2, 1),
        (2, 4),
        (1, 3),
        (4, 5);
SELECT * FROM message_image;


/*
Task Thirteen: Find All of the Messages that Michael Phelps Sent
*/
SELECT Send.first_name, Send.last_name, Receive.first_name, Receive.last_name, Michael.message_id, Michael.message, Michael.send_datetime
    FROM message Michael, person Send, person Receive
    WHERE Michael.sender_id = Send.person_id
    AND Michael.receiver_id = Receive.person_id
    AND Send.first_name = 'Michael'
    AND Send.last_name = 'Phelps';
    

/*
Task Fourteen: Find the Number of Messages Sent for Every Person
*/
SELECT COUNT(message_id) AS message_count, person_id, first_name, last_name
    FROM message, person
    WHERE message.sender_id = person.person_id
    GROUP BY person.person_id, person.first_name, person.last_name;    


/*
Task Fifteen: Find All of the Messages that Have At Least One Image Attached Using INNER JOINs
*/
SELECT message_image.message_id, message, send_datetime, image_name, image_location
    FROM message
    INNER JOIN message_image ON message.message_id = message_image.message_id
    INNER JOIN image ON image.image_id = message_image.image_id
    GROUP BY message_image.message_id;
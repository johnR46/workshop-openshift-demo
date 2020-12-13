create table IF NOT EXISTS  employee(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   phone INT ,
   department VARCHAR(40) NOT NULL,
   PRIMARY KEY ( id )
);

INSERT INTO employee(name,email,phone,department)
VALUES("bancha","testEmail",12,"3gs");

INSERT INTO employee(name,email,phone,department)
VALUES("bancha2","testEmail2",14,"4gs");
CREATE TABLE dealership (
	dealershipId INT NOT NULL, -- primary key & auto-increment
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

INSERT INTO dealership -- optional (dealershipId , name, address, phone)
VALUES (1, 'Isaiahs Verbacious Vehicle-verse',
 '2347 North Wallace St.', 999-999-9990
);

INSERT INTO dealership
VALUES (2, 'Car Store 101',
 '777 Holiland Ave.', 777-777-7777
);

INSERT INTO dealership
VALUES (3, 'PoochsPurrfectParadise',
 '123 fourth St.', 123-456-7890
);

CREATE TABLE vehicles (
	VIN VARCHAR(255), -- primary key, no auto-increment
    sold boolean,
    brand VARCHAR(50),
    mileage int
);
-- INSERT VEHICLES

CREATE TABLE inventory (
	dealershipId INT,
    VIN VARCHAR
);

INSERT INTO inventory -- optional (VIN , sold, brand, mileage)
VALUES ('10AJDV324R', false, 'ford', 7 -- GENERATE THE VIN FOR ALL !!!!
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (9, true, 'jeep', 105
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (8, false, 'honda', 2
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (7, false, 'hyundai', 33
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (6, false, 'tesla', 71
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (5, false, 'toyota', 24
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (4, true, 'mercedes', 12
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (3, false, 'honda', 18
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (2, true, 'ford', 2
);

INSERT INTO inventory (VIN , sold, brand, mileage)
VALUES (1, true, 'tesla', 8
;)


CREATE TABLE sales_contracts (
	salesId VARCHAR NOT NULL, --should be auto-incremented
    contractorName VARCHAR,
    vehicleNumber INT --use foreign key (VIN) to link to vehicle

)
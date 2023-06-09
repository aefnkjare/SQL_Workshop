CREATE TABLE dealership (
	dealershipId INT NOT NULL, -- primary key & auto-increment
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12),
    PRIMARY KEY (dealershipId)
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
    mileage int,
    PRIMARY KEY(VIN)
);

INSERT INTO vehicles -- optional (VIN , sold, brand, mileage)
VALUES ('2G1FB1EV1B9123456', false, 'ford', 7 -- GENERATE THE VIN FOR ALL !!!!
);

INSERT INTO vehicles
VALUES ('1HGCM826X4A123456', true, 'jeep', 105
);

INSERT INTO vehicles
VALUES ('5J6YH18382L789012
', false, 'honda', 2
);

INSERT INTO vehicles
VALUES ('KM8SRDHF3EU098765', false, 'hyundai', 33
);

INSERT INTO vehicles
VALUES ('3GNFK16Z5YG543210', false, 'tesla', 71
);

INSERT INTO vehicles
VALUES ('WAULC68E95A987654', false, 'toyota', 24
);

INSERT INTO vehicles
VALUES ('JTEBU14R450123456', true, 'mercedes', 12
);

INSERT INTO vehicles
VALUES ('1FAFP4040YF123456', false, 'honda', 18
);

INSERT INTO vehicles
VALUES ('2T3BFREV4CW987654', true, 'ford', 2
);

INSERT INTO vehicles
VALUES ('1C4HJWFG8CL543210', true, 'tesla', 8
);

CREATE TABLE inventory (
	dealershipId INT,
    VIN VARCHAR,
    FOREIGN KEY(dealershipId) REFERENCES dealership(dealershipId)
    FOREIGN KEY(VIN) REFERENCES vehicle(VIN)

);

INSERT INTO inventory
	VALUES(1, '2G1FB1EV1B9123456'
);

INSERT INTO inventory
	VALUES(1, '1HGCM826X4A123456'
);

INSERT INTO inventory
	VALUES(1, '3GNFK16Z5YG543210'
);

INSERT INTO inventory
	VALUES(1, '5J6YH18382L789012'
);

INSERT INTO inventory
	VALUES(1, 'KM8SRDHF3EU098765'
);

INSERT INTO inventory
	VALUES(3, 'WAULC68E95A987654'
);

INSERT INTO inventory
	VALUES(2, 'JTEBU14R450123456'
);

INSERT INTO inventory
	VALUES(2, '1FAFP4040YF123456'
);

INSERT INTO inventory
	VALUES(1, '2T3BFREV4CW987654'
);

INSERT INTO inventory
	VALUES(3, '1C4HJWFG8CL543210'
);


CREATE TABLE sales_contracts (
	salesId VARCHAR NOT NULL, --should be auto-incremented
    contractorName VARCHAR,
    vehicleNumber INT --use foreign key (VIN) to link to vehicle
    FOREIGN KEY(vehicleNumber) REFERENCES (vehicles)
)
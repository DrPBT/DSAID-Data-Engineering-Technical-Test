CREATE TABLE dimSalesperson(
salespersonID		INT PRIMARY KEY NOT NULL,
name				TEXT NOT NULL
);

CREATE TABLE dimCustomer(
customerID			INT PRIMARY KEY NOT NULL,
name				TEXT NOT NULL,
phone				CHAR(50)
);

CREATE TABLE dimManufacturer(
manufacturerID		INT PRIMARY KEY NOT NULL,
name				CHAR(50)
);

CREATE TABLE dimModel(
modelID				INT PRIMARY KEY NOT NULL,
manufacturerID		INT,
name				CHAR(50),
weight				DECIMAL (5,2),
price				DECIMAL (10,2),
FOREIGN KEY (manufacturerID) REFERENCES dimManufacturer(manufacturerID)
);

CREATE TABLE factSales (
salesID				INT PRIMARY KEY NOT NULL,
customerID			INT NOT NULL,
modelID				INT NOT NULL,
salespersonID		INT NOT NULL,
modelName			CHAR(50),
weight				DECIMAL (5,2),				
price				DECIMAL (10,2),
manufacturerName	CHAR(50),
customerName		TEXT NOT NULL,
phone				CHAR(50),
serialNumber		CHAR(50),
FOREIGN KEY (modelID) REFERENCES dimModel(modelID),
FOREIGN KEY (customerID) REFERENCES dimCustomer(customerID),
FOREIGN KEY (salespersonID) REFERENCES dimSalesperson(salespersonID)
);
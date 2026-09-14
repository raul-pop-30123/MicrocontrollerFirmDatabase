USE MicrocontrollerFirm;

-- =========================================================
-- Independent Tables (Base Lookups / Reference Tables)
-- =========================================================

CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Description TEXT
) ENGINE=InnoDB;

CREATE TABLE Manufacturers (
    ManufacturerID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    FoundedYear INT,
    Website VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE MicrocontrollerSuppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Phone VARCHAR(12),
    Country VARCHAR(50),
    City VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE SensorsSuppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(50) NOT NULL,
    ContactName VARCHAR(50),
    Phone VARCHAR(50),
    Country VARCHAR(30),
    City VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE CommunicationProtocols (
    ProtocolID INT AUTO_INCREMENT PRIMARY KEY,
    ProtocolName VARCHAR(50),
    MaxSpeedMbps DECIMAL(8,2),
    Wireless TINYINT(1)
) ENGINE=InnoDB;

CREATE TABLE TestingLabs (
    LabID INT AUTO_INCREMENT PRIMARY KEY,
    LabName VARCHAR(100),
    City VARCHAR(50),
    CertificationLevel VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100),
    ContactName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(50),
    HireDate DATE,
    City VARCHAR(50),
    Country VARCHAR(50),
    Salary DECIMAL(10,2)
) ENGINE=InnoDB;

CREATE TABLE Shippers (
    ShipperID INT AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(100),
    Phone VARCHAR(30)
) ENGINE=InnoDB;

-- =========================================================
-- Dependent Tables (Foreign Keys / FK)
-- =========================================================

CREATE TABLE Microcontrollers (
    MicrocontrollerID INT AUTO_INCREMENT PRIMARY KEY,
    ManufacturerID INT NOT NULL,
    SupplierID INT NOT NULL,
    CategoryID INT NOT NULL,
    ModelName VARCHAR(100) NOT NULL,
    Architecture VARCHAR(50),
    ClockSpeedMHz DECIMAL(6,2),
    CoreCount INT,
    FlashMemoryKB INT,
    PowerConsumptionMW DECIMAL(8,2),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    CONSTRAINT FK_Microcontrollers_Manufacturers
        FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID),
    CONSTRAINT FK_Microcontrollers_Suppliers
        FOREIGN KEY (SupplierID) REFERENCES MicrocontrollerSuppliers(SupplierID),
    CONSTRAINT FK_Microcontrollers_Categories
        FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
) ENGINE=InnoDB;

CREATE TABLE Sensors (
    SensorID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierID INT NOT NULL,
    SensorName VARCHAR(100),
    SensorType VARCHAR(50),
    AccuracyPercent DECIMAL(5,2),
    CONSTRAINT FK_Sensors_SensorsSuppliers
        FOREIGN KEY (SupplierID) REFERENCES SensorsSuppliers(SupplierID)
) ENGINE=InnoDB;

CREATE TABLE MicrocontrollerSensors (
    MicrocontrollerID INT NOT NULL,
    SensorID INT NOT NULL,
    IntegrationLevel VARCHAR(50),
    PRIMARY KEY (MicrocontrollerID, SensorID),
    CONSTRAINT FK_MicrocontrollerSensors_Microcontrollers
        FOREIGN KEY (MicrocontrollerID) REFERENCES Microcontrollers(MicrocontrollerID),
    CONSTRAINT FK_MicrocontrollerSensors_Sensors
        FOREIGN KEY (SensorID) REFERENCES Sensors(SensorID)
) ENGINE=InnoDB;

CREATE TABLE MicrocontrollerProtocols (
    MicrocontrollerID INT NOT NULL,
    ProtocolID INT NOT NULL,
    SupportedVersion VARCHAR(30),
    PRIMARY KEY (MicrocontrollerID, ProtocolID),
    CONSTRAINT FK_MicrocontrollerProtocols_Microcontrollers
        FOREIGN KEY (MicrocontrollerID) REFERENCES Microcontrollers(MicrocontrollerID),
    CONSTRAINT FK_MicrocontrollerProtocols_Protocols
        FOREIGN KEY (ProtocolID) REFERENCES CommunicationProtocols(ProtocolID)
) ENGINE=InnoDB;

CREATE TABLE FirmwareVersions (
    FirmwareID INT AUTO_INCREMENT PRIMARY KEY,
    MicrocontrollerID INT NOT NULL,
    VersionName VARCHAR(50),
    ReleaseDate DATE,
    StabilityStatus VARCHAR(50),
    CONSTRAINT FK_FirmwareVersions_Microcontrollers
        FOREIGN KEY (MicrocontrollerID) REFERENCES Microcontrollers(MicrocontrollerID)
) ENGINE=InnoDB;

CREATE TABLE QualityTests (
    TestID INT AUTO_INCREMENT PRIMARY KEY,
    MicrocontrollerID INT NOT NULL,
    LabID INT NOT NULL,
    TestDate DATE,
    VoltageStabilityPercent DECIMAL(5,2),
    TemperatureResistanceC DECIMAL(6,2),
    Passed TINYINT(1),
    CONSTRAINT FK_QualityTests_Microcontrollers
        FOREIGN KEY (MicrocontrollerID) REFERENCES Microcontrollers(MicrocontrollerID),
    CONSTRAINT FK_QualityTests_TestingLabs
        FOREIGN KEY (LabID) REFERENCES TestingLabs(LabID)
) ENGINE=InnoDB;

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    ShipperID INT NOT NULL,
    OrderDate DATE,
    ShippedDate DATE,
    Freight DECIMAL(10,2),
    ShippingAddress VARCHAR(200),
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Orders_Employees
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Orders_Shippers
        FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
) ENGINE=InnoDB;

CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    MicrocontrollerID INT NOT NULL,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    DiscountPercent DECIMAL(5,2),
    PRIMARY KEY (OrderID, MicrocontrollerID),
    CONSTRAINT FK_OrderDetails_Orders
        FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_OrderDetails_Microcontrollers
        FOREIGN KEY (MicrocontrollerID) REFERENCES Microcontrollers(MicrocontrollerID)
) ENGINE=InnoDB;

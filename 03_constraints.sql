USE MicrocontrollerFirm;

/* Categories */
ALTER TABLE Categories
ADD CONSTRAINT UC_CategoryName_Cat UNIQUE (CategoryName);

/* Manufacturers */
ALTER TABLE Manufacturers
ADD CONSTRAINT UC_CompanyName_M UNIQUE (CompanyName);

ALTER TABLE Manufacturers
ADD CONSTRAINT CK_FoundedYear_Range_M
CHECK (FoundedYear BETWEEN 1900 AND 2026);

ALTER TABLE Manufacturers
ADD CONSTRAINT CK_Website_Format_M
CHECK (Website LIKE 'https://www.%');

/* MicrocontrollerSuppliers */
ALTER TABLE MicrocontrollerSuppliers
ADD CONSTRAINT UC_CompanyName_MicroS UNIQUE (CompanyName);

ALTER TABLE MicrocontrollerSuppliers
ADD CONSTRAINT UC_ContactName_Phone_MicroS UNIQUE (ContactName, Phone);

ALTER TABLE MicrocontrollerSuppliers
ADD CONSTRAINT CK_Phone_Formats_MicroS
CHECK (
    Phone REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    OR
    Phone REGEXP '^[0-9]{4}-[0-9]{3}-[0-9]{3}$'
);

/* SensorsSuppliers */
ALTER TABLE SensorsSuppliers
ADD CONSTRAINT UC_CompanyName_SS UNIQUE (CompanyName);

ALTER TABLE SensorsSuppliers
ADD CONSTRAINT UC_ContactName_SS UNIQUE (ContactName);

ALTER TABLE SensorsSuppliers
ADD CONSTRAINT UC_Phone_SS UNIQUE (Phone);

ALTER TABLE SensorsSuppliers
ADD CONSTRAINT CK_Phone_Formats_SS
CHECK (
    Phone REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    OR
    Phone REGEXP '^[0-9]{4}-[0-9]{3}-[0-9]{3}$'
);

/* CommunicationProtocols */
ALTER TABLE CommunicationProtocols
ADD CONSTRAINT UC_ProtocolName UNIQUE (ProtocolName);

ALTER TABLE CommunicationProtocols
ADD CONSTRAINT CK_MaxSpeedMbps_CP
CHECK (MaxSpeedMbps BETWEEN 0.01 AND 64000.00);

/* TestingLabs */
ALTER TABLE TestingLabs
ADD CONSTRAINT UC_LabName_City_TL UNIQUE (LabName, City);

/* Customers */
ALTER TABLE Customers
ADD CONSTRAINT UC_CompanyName_C UNIQUE (CompanyName);

ALTER TABLE Customers
ADD CONSTRAINT UC_ContactName_C UNIQUE (ContactName);

ALTER TABLE Customers
ADD CONSTRAINT UC_Email_C UNIQUE (Email);

ALTER TABLE Customers
ADD CONSTRAINT UC_Phone_C UNIQUE (Phone);

ALTER TABLE Customers
ADD CONSTRAINT CK_Phone_Formats
CHECK (
    Phone REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    OR
    Phone REGEXP '^[0-9]{4}-[0-9]{3}-[0-9]{3}$'
);

/* Employees */
ALTER TABLE Employees
ADD CONSTRAINT UC_Employees_FullName UNIQUE (LastName, FirstName);

ALTER TABLE Employees
ADD CONSTRAINT CK_Employees_HireDate
CHECK (HireDate > '1950-01-01');

ALTER TABLE Employees
ADD CONSTRAINT CK_Employees_Salary_Range
CHECK (Salary BETWEEN 2000 AND 10000);

/* Shippers */
ALTER TABLE Shippers
ADD CONSTRAINT UC_CompanyName_S UNIQUE (CompanyName);

ALTER TABLE Shippers
ADD CONSTRAINT UC_Phone_S UNIQUE (Phone);

ALTER TABLE Shippers
ADD CONSTRAINT CK_Phone_Formats_S
CHECK (
    Phone REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    OR
    Phone REGEXP '^[0-9]{4}-[0-9]{3}-[0-9]{3}$'
);

/* Microcontrollers */
ALTER TABLE Microcontrollers
ADD CONSTRAINT UC_ModelName UNIQUE (ModelName);

ALTER TABLE Microcontrollers
ADD CONSTRAINT CK_Architecture_M
CHECK (Architecture IN ('ARM Cortex-M', 'AVR', 'PIC', 'RISC-V', 'Xtensa', '16-bit', 'RXv2', 'TriCore'));

ALTER TABLE Microcontrollers
ADD CONSTRAINT CK_ClockSpeedMHz_CoreCount
CHECK (ClockSpeedMHz BETWEEN 1 AND 4000 AND CoreCount BETWEEN 0 AND 8);

ALTER TABLE Microcontrollers
ADD CONSTRAINT CK_FlashMemoryKB_PowerConsumptionMW
CHECK (FlashMemoryKB BETWEEN 0 AND 120000 AND PowerConsumptionMW BETWEEN 0 AND 500);

ALTER TABLE Microcontrollers
ADD CONSTRAINT CK_UnitPrice_UnitsInStock
CHECK (UnitPrice BETWEEN 0.10 AND 500 AND UnitsInStock BETWEEN 0 AND 10000);

/* Sensors */
ALTER TABLE Sensors
ADD CONSTRAINT UC_SensorName_Sen UNIQUE (SensorName);

ALTER TABLE Sensors
ADD CONSTRAINT CK_AccuracyPercent_Sen
CHECK (AccuracyPercent > 0 AND AccuracyPercent <= 100);

/* FirmwareVersions */
ALTER TABLE FirmwareVersions
ADD CONSTRAINT CK_ReleaseDate
CHECK (ReleaseDate >= '1950-09-01');

ALTER TABLE FirmwareVersions
ADD CONSTRAINT CK_StabilityStatus
CHECK (StabilityStatus IN ('Stable', 'Beta', 'Experimental', 'Unstable', 'Alpha'));

/* QualityTests */
ALTER TABLE QualityTests
ADD CONSTRAINT UC_MicrocontrollerID_LabID_QT UNIQUE (MicrocontrollerID, LabID);

ALTER TABLE QualityTests
ADD CONSTRAINT CK_VoltageStabilityPercent_QT
CHECK (VoltageStabilityPercent BETWEEN 0 AND 100);

ALTER TABLE QualityTests
ADD CONSTRAINT CK_TemperatureResistanceC_QT
CHECK (TemperatureResistanceC BETWEEN -50 AND 150);

/* Orders */
ALTER TABLE Orders
ADD CONSTRAINT UC_CustomerID_EmployeeID_OrderDate UNIQUE (CustomerID, EmployeeID, OrderDate);

ALTER TABLE Orders
ADD CONSTRAINT CK_Freight
CHECK (Freight > 0 AND Freight < 50000);

ALTER TABLE Orders
ADD CONSTRAINT CK_OrderDate_ShippedDate
CHECK (OrderDate <= ShippedDate);

/* OrderDetails */
ALTER TABLE OrderDetails
ADD CONSTRAINT CK_Quantity_OD
CHECK (Quantity > 0 AND Quantity < 10000);

ALTER TABLE OrderDetails
ADD CONSTRAINT CK_UnitPrice_OD
CHECK (UnitPrice BETWEEN 2 AND 500);

ALTER TABLE OrderDetails
ADD CONSTRAINT CK_DiscountPercent_OD
CHECK (DiscountPercent BETWEEN 0 AND 75);

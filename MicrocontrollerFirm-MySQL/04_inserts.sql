USE MicrocontrollerFirm;


-- Categories (11 rows)
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (1, 'ARM Cortex-M', 'Low power ARM microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (2, 'AVR', '8-bit AVR microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (3, 'PIC', 'PIC family microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (4, 'ESP Series', 'WiFi enabled microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (5, 'RISC-V', 'Open-source architecture microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (6, 'Industrial MCU', 'Industrial automation microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (7, 'Automotive MCU', 'Automotive grade microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (8, 'IoT MCU', 'Internet of Things microcontrollers');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (10, 'PIC2', 'UNKNOWN');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (11, 'I2', 'UNKNOWN');
INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES (12, 'H3', 'UNKNOWN');

-- Manufacturers (10 rows)
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (1, 'STMicroelectronics', 'Switzerland', 1987, 'https://www.st.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (2, 'Microchip Technology', 'USA', 1989, 'https://www.microchip.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (3, 'NXP Semiconductors', 'Netherlands', 2006, 'https://www.nxp.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (4, 'Texas Instruments', 'USA', 1930, 'https://www.ti.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (5, 'Espressif Systems', 'China', 2008, 'https://www.espressif.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (6, 'Infineon Technologies', 'Germany', 1999, 'https://www.infineon.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (7, 'Renesas Electronics', 'Japan', 2010, 'https://www.renesas.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (8, 'Silicon Labs', 'USA', 1996, 'https://www.silabs.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (9, 'Analog Devices', 'USA', 1965, 'https://www.analog.com');
INSERT INTO Manufacturers (ManufacturerID, CompanyName, Country, FoundedYear, Website) VALUES (10, 'Nordic Semiconductor', 'Norway', 1983, 'https://www.nordicsemi.com');

-- MicrocontrollerSuppliers (10 rows)
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (1, 'Arrow Electronics', 'John Smith', '352-653-0183', 'USA', 'Denver');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (2, 'Avnet', 'Michael Brown', '134-652-1350', 'USA', 'Phoenix');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (3, 'Mouser Electronics', 'David Wilson', '105-135-8432', 'USA', 'Dallas');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (4, 'Digi-Key', 'James Taylor', '952-296-2962', 'USA', 'Thief River Falls');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (5, 'Future Electronics', 'Robert Moore', '206-293-1935', 'Canada', 'Montreal');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (6, 'RS Components', 'Daniel White', '230-235-9153', 'UK', 'London');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (7, 'Farnell', 'Thomas Hall', '104-394-1945', 'UK', 'Leeds');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (8, 'TME', 'Christopher Young', '931-194-9355', 'Poland', 'Lodz');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (9, 'Conrad Electronics', 'Henry Scott', '103-196-9631', 'Germany', 'Berlin');
INSERT INTO MicrocontrollerSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (10, 'Rutronik', 'Kevin Adams', '946-105-9395', 'Germany', 'Stuttgart');

-- SensorsSuppliers (10 rows)
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (1, 'Arrow Electronics', 'John Smith', '352-653-0183', 'USA', 'Denver');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (2, 'Avnet', 'Michael Brown', '134-652-1350', 'USA', 'Phoenix');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (3, 'Mouser Electronics', 'David Wilson', '105-135-8432', 'USA', 'Dallas');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (4, 'Digi-Key', 'James Taylor', '952-296-2962', 'USA', 'Thief River Falls');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (5, 'Future Electronics', 'Robert Moore', '206-293-1935', 'Canada', 'Montreal');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (6, 'RS Components', 'Daniel White', '230-235-9153', 'UK', 'London');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (7, 'Farnell', 'Thomas Hall', '104-394-1945', 'UK', 'Leeds');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (8, 'TME', 'Christopher Young', '931-194-9355', 'Poland', 'Lodz');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (9, 'Conrad Electronics', 'Henry Scott', '103-196-9631', 'Germany', 'Berlin');
INSERT INTO SensorsSuppliers (SupplierID, CompanyName, ContactName, Phone, Country, City) VALUES (10, 'Rutronik', 'Kevin Adams', '946-105-9395', 'Germany', 'Stuttgart');

-- CommunicationProtocols (10 rows)
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (1, 'UART', 1.00, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (2, 'SPI', 50.00, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (3, 'I2C', 3.40, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (4, 'CAN', 8.00, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (5, 'USB', 480.00, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (6, 'Ethernet', 1000.00, 0);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (7, 'Bluetooth', 24.00, 1);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (8, 'WiFi', 600.00, 1);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (9, 'Zigbee', 0.25, 1);
INSERT INTO CommunicationProtocols (ProtocolID, ProtocolName, MaxSpeedMbps, Wireless) VALUES (10, 'LoRa', 0.05, 1);

-- TestingLabs (5 rows)
INSERT INTO TestingLabs (LabID, LabName, City, CertificationLevel) VALUES (1, 'Advanced Testing Lab', 'Munich', 'ISO 9001');
INSERT INTO TestingLabs (LabID, LabName, City, CertificationLevel) VALUES (2, 'Embedded Validation Center', 'Austin', 'ISO 17025');
INSERT INTO TestingLabs (LabID, LabName, City, CertificationLevel) VALUES (3, 'Microchip Reliability Lab', 'Tokyo', 'Automotive Grade');
INSERT INTO TestingLabs (LabID, LabName, City, CertificationLevel) VALUES (4, 'Industrial QA Systems', 'Berlin', 'ISO 14001');
INSERT INTO TestingLabs (LabID, LabName, City, CertificationLevel) VALUES (5, 'Nano Precision Lab', 'Paris', 'Military Grade');

-- Customers (10 rows)
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (1, 'TechNova', 'Alice Johnson', 'New York', 'USA', 'alice@technova.com', '437-124-1631');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (2, 'Embedded Solutions', 'Mark Evans', 'Berlin', 'Germany', 'mark@embeddedsolutions.de', '413-763-3663');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (3, 'Smart Devices SRL', 'Ion Popescu', 'Bucharest', 'Romania', 'ion@smartdevices.ro', '824-234-6554');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (4, 'Industrial Systems', 'Maria Rossi', 'Rome', 'Italy', 'maria@indsys.it', '828-345-7853');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (5, 'IoT Labs', 'James Carter', 'London', 'UK', 'james@iotlabs.uk', '723-764-2326');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (6, 'Automation Corp', 'Anna Schmidt', 'Munich', 'Germany', 'anna@automation.de', '235-872-1622');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (7, 'Future Electronics SRL', 'Mihai Ionescu', 'Cluj', 'Romania', 'mihai@future.ro', '824-824-7626');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (8, 'NanoTech', 'Emily Davis', 'Paris', 'France', 'emily@nanotech.fr', '504-845-4682');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (9, 'AI Robotics', 'George Martin', 'Toronto', 'Canada', 'george@airobotics.ca', '163-723-2610');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, City, Country, Email, Phone) VALUES (10, 'Circuit Works', 'Victor Lee', 'Seoul', 'South Korea', 'victor@circuit.kr', '733-525-0538');

-- Employees (10 rows)
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (1, 'John', 'Doe', 'Sales Manager', '2018-01-10', 'New York', 'USA', 5500.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (2, 'Michael', 'Smith', 'Engineer', '2019-03-15', 'Austin', 'USA', 6200.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (3, 'Sarah', 'Connor', 'QA Specialist', '2020-07-01', 'London', 'UK', 5000.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (4, 'David', 'Brown', 'Production Manager', '2017-09-20', 'Berlin', 'Germany', 7000.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (5, 'Laura', 'Wilson', 'Firmware Engineer', '2021-04-12', 'Paris', 'France', 6100.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (6, 'Daniel', 'Taylor', 'Sales Representative', '2022-02-11', 'Madrid', 'Spain', 4300.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (7, 'Emma', 'White', 'Technical Consultant', '2020-08-18', 'Rome', 'Italy', 5200.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (8, 'Alex', 'Johnson', 'System Architect', '2016-11-09', 'Amsterdam', 'Netherlands', 7800.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (9, 'Chris', 'Anderson', 'Hardware Designer', '2015-06-17', 'Stockholm', 'Sweden', 6700.00);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, HireDate, City, Country, Salary) VALUES (10, 'Olivia', 'Martinez', 'Project Coordinator', '2023-01-05', 'Barcelona', 'Spain', 4800.00);

-- Shippers (6 rows)
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (1, 'DHL Express', '800-111-0001');
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (2, 'FedEx', '800-111-0002');
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (3, 'UPS', '800-111-0003');
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (4, 'TNT Express', '800-111-0004');
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (5, 'GLS', '800-111-0005');
INSERT INTO Shippers (ShipperID, CompanyName, Phone) VALUES (6, 'CrisTrans', '143-513-9835');

-- Microcontrollers (10 rows)
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (1, 1, 1, 1, 'STM32F103', 'ARM Cortex-M', 72.00, 1, 512, 120.00, 6.50, 500);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (2, 1, 2, 1, 'STM32F407', 'ARM Cortex-M', 168.00, 1, 1024, 210.00, 12.00, 400);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (3, 2, 3, 2, 'ATmega328P', 'AVR', 20.00, 1, 32, 80.00, 3.20, 900);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (4, 2, 4, 3, 'PIC16F877A', 'PIC', 20.00, 1, 14, 70.00, 4.10, 700);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (5, 5, 5, 4, 'ESP32', 'Xtensa', 240.00, 2, 520, 260.00, 7.80, 1000);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (6, 5, 6, 4, 'ESP8266', 'Xtensa', 160.00, 1, 160, 180.00, 4.90, 1100);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (7, 3, 7, 5, 'RV32M1', 'RISC-V', 48.00, 1, 256, 90.00, 8.60, 300);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (8, 4, 8, 6, 'MSP430', '16-bit', 25.00, 1, 64, 60.00, 5.20, 450);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (9, 6, 9, 7, 'AURIX TC3xx', 'TriCore', 300.00, 3, 4096, 450.00, 25.00, 120);
INSERT INTO Microcontrollers (MicrocontrollerID, ManufacturerID, SupplierID, CategoryID, ModelName, Architecture, ClockSpeedMHz, CoreCount, FlashMemoryKB, PowerConsumptionMW, UnitPrice, UnitsInStock) VALUES (10, 7, 10, 1, 'RX65N', 'RXv2', 120.00, 1, 2048, 220.00, 14.00, 250);

-- Sensors (10 rows)
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (1, 1, 'TMP36', 'Temperature', 98.50);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (2, 2, 'DHT22', 'Humidity', 97.00);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (3, 3, 'BMP280', 'Pressure', 99.10);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (4, 4, 'MPU6050', 'Motion', 96.20);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (5, 5, 'VL53L0X', 'Distance', 95.50);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (6, 6, 'MQ-2', 'Gas', 94.30);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (7, 7, 'HC-SR04', 'Ultrasonic', 93.90);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (8, 8, 'LDR Module', 'Light', 91.50);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (9, 9, 'MAX30102', 'Pulse Oximeter', 97.50);
INSERT INTO Sensors (SensorID, SupplierID, SensorName, SensorType, AccuracyPercent) VALUES (10, 10, 'BME680', 'Environmental', 98.10);

-- MicrocontrollerSensors (13 rows)
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (1, 1, 'Full');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (1, 2, 'Partial');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (2, 3, 'Full');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (2, 4, 'Advanced');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (3, 5, 'Basic');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (4, 6, 'Partial');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (5, 7, 'Advanced');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (5, 8, 'Full');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (6, 9, 'Advanced');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (7, 10, 'Basic');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (8, 4, 'Full');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (9, 2, 'Advanced');
INSERT INTO MicrocontrollerSensors (MicrocontrollerID, SensorID, IntegrationLevel) VALUES (10, 8, 'Basic');

-- MicrocontrollerProtocols (13 rows)
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (1, 1, '2.0');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (1, 2, '1.1');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (2, 3, '1.0');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (2, 4, '2.0B');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (3, 1, '1.0');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (4, 2, '1.2');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (5, 7, '5.0');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (5, 8, '802.11n');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (6, 8, '802.11b/g/n');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (7, 1, '1.1');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (8, 7, '1.0');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (9, 4, '2.2');
INSERT INTO MicrocontrollerProtocols (MicrocontrollerID, ProtocolID, SupportedVersion) VALUES (10, 5, '2.0');

-- FirmwareVersions (12 rows)
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (1, 1, 'v1.0.0', '2022-01-10', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (2, 1, 'v1.1.0', '2022-06-15', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (3, 2, 'v2.0.0', '2023-02-11', 'Beta');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (4, 3, 'v1.0.5', '2021-09-01', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (5, 4, 'v3.2.1', '2023-03-17', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (6, 5, 'v4.0.0', '2024-01-12', 'Experimental');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (7, 6, 'v2.5.0', '2023-11-08', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (8, 7, 'v1.3.4', '2022-07-19', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (9, 8, 'v5.0.0', '2024-03-25', 'Beta');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (10, 9, 'v6.1.2', '2024-05-10', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (11, 10, 'v2.1.1', '2023-08-18', 'Stable');
INSERT INTO FirmwareVersions (FirmwareID, MicrocontrollerID, VersionName, ReleaseDate, StabilityStatus) VALUES (16, 5, 'v3', '2023-04-14', 'Stable');

-- Orders (10 rows)
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (1, 1, 1, 1, '2024-01-10', '2024-01-12', 120.50, 'New York Industrial Park');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (2, 2, 2, 2, '2024-01-15', '2024-01-18', 220.00, 'Berlin Tech Center');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (3, 3, 3, 3, '2024-02-01', '2024-02-03', 95.20, 'Bucharest Sector 3');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (4, 4, 4, 1, '2024-02-11', '2024-02-15', 150.75, 'Rome Industrial Area');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (5, 5, 5, 4, '2024-03-02', '2024-03-05', 310.00, 'London Innovation Hub');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (6, 6, 6, 5, '2024-03-10', '2024-03-12', 180.40, 'Munich Automation Center');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (7, 7, 7, 2, '2024-04-01', '2024-04-05', 260.90, 'Cluj Tech Park');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (8, 8, 8, 3, '2024-04-20', '2024-04-23', 199.99, 'Paris Science District');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (9, 9, 9, 1, '2024-05-01', '2024-05-04', 400.50, 'Toronto Robotics Center');
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, ShipperID, OrderDate, ShippedDate, Freight, ShippingAddress) VALUES (10, 10, 10, 2, '2024-05-10', '2024-05-13', 275.80, 'Seoul Embedded Park');

-- OrderDetails (10 rows)
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (1, 1, 100, 6.50, 5.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (1, 2, 50, 12.00, 0.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (2, 5, 200, 7.80, 10.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (2, 6, 150, 4.90, 0.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (3, 3, 300, 3.20, 3.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (4, 4, 120, 4.10, 2.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (5, 9, 40, 25.00, 5.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (6, 8, 70, 5.20, 0.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (7, 7, 90, 8.60, 4.00);
INSERT INTO OrderDetails (OrderID, MicrocontrollerID, Quantity, UnitPrice, DiscountPercent) VALUES (8, 10, 60, 14.00, 1.00);

-- QualityTests (10 rows)
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (1, 1, 1, '2024-01-01', 98.50, 125.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (2, 2, 2, '2024-01-05', 97.80, 120.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (3, 3, 3, '2024-01-10', 96.20, 110.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (4, 4, 4, '2024-01-15', 95.50, 100.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (5, 5, 5, '2024-01-20', 94.80, 95.00, 0);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (6, 6, 1, '2024-02-01', 97.10, 105.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (7, 7, 2, '2024-02-10', 96.90, 115.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (8, 8, 3, '2024-02-18', 95.00, 90.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (9, 9, 4, '2024-03-01', 99.20, 150.00, 1);
INSERT INTO QualityTests (TestID, MicrocontrollerID, LabID, TestDate, VoltageStabilityPercent, TemperatureResistanceC, Passed) VALUES (10, 10, 5, '2024-03-11', 98.70, 140.00, 1);

USE MicrocontrollerFirm;

-- ---------------------------------------------------------------
-- v_MicrocontrollerTechnicalCatalog
-- ---------------------------------------------------------------
CREATE VIEW v_MicrocontrollerTechnicalCatalog AS
SELECT
    m.MicrocontrollerID,
    m.ModelName,
    man.CompanyName AS ManufacturerName,
    m.Architecture,
    m.ClockSpeedMHz,
    m.FlashMemoryKB,
    (SELECT GROUP_CONCAT(cp.ProtocolName SEPARATOR ', ')
     FROM MicrocontrollerProtocols mp
     JOIN CommunicationProtocols cp ON mp.ProtocolID = cp.ProtocolID
     WHERE mp.MicrocontrollerID = m.MicrocontrollerID) AS SupportedProtocols,
    m.UnitPrice,
    m.UnitsInStock
FROM Microcontrollers m
JOIN Manufacturers man ON m.ManufacturerID = man.ManufacturerID;

-- ---------------------------------------------------------------
-- v_OrderFinancialSummary
-- ---------------------------------------------------------------
CREATE VIEW v_OrderFinancialSummary AS
SELECT
    o.OrderID,
    c.CompanyName AS CustomerName,
    o.OrderDate,
    o.ShippedDate,
    CAST(SUM(od.UnitPrice * od.Quantity * (1 - (od.DiscountPercent / 100.0))) AS DECIMAL(10,2)) AS GrossTotal,
    o.Freight AS ShippingCost,
    CAST(SUM(od.UnitPrice * od.Quantity * (1 - (od.DiscountPercent / 100.0))) + o.Freight AS DECIMAL(10,2)) AS NetTotal
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.OrderID, c.CompanyName, o.OrderDate, o.ShippedDate, o.Freight;

-- ---------------------------------------------------------------
-- v_EmployeeSalesPerformance
-- ---------------------------------------------------------------
CREATE VIEW v_EmployeeSalesPerformance AS
SELECT
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName,
    e.Title AS JobTitle,
    COUNT(DISTINCT o.OrderID) AS TotalOrdersProcessed,
    CAST(COALESCE(SUM(od.UnitPrice * od.Quantity * (1 - (od.DiscountPercent / 100.0))), 0) AS DECIMAL(10,2)) AS TotalRevenueGenerated
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, e.FirstName, e.LastName, e.Title;

-- ---------------------------------------------------------------
-- v_InventoryStatusAlerts
-- ---------------------------------------------------------------
CREATE VIEW v_InventoryStatusAlerts AS
SELECT
    'Microcontroller' AS ItemType,
    ModelName AS ItemName,
    UnitsInStock,
    UnitPrice,
    CASE
        WHEN UnitsInStock = 0 THEN 'OUT OF STOCK'
        WHEN UnitsInStock < 50 THEN 'LOW STOCK ALERT'
        ELSE 'OK'
    END AS StockStatus
FROM Microcontrollers;

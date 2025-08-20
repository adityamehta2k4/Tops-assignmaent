CREATE DATABASE MarketCo;
USE MarketCo;

CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10)
);

-- 1. Contact table
CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- 2. Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

-- 3. ContactEmployee table
CREATE TABLE ContactEmployee (
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeeID INT,
    ContactDate DATE,
    Description VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- sample data

INSERT INTO Company VALUES
(1, 'Urban Outfitters, Inc.', 'Philadelphia', 'PA', '19107'),
(2, 'Toll Brothers', 'New York', 'NY', '10001');

INSERT INTO Contact VALUES
(1, 1, 'Dianne', 'Connor', '123 Main St', 'Philadelphia', 'PA', '19107', TRUE, 'dianne@urban.com', '111-111-1111'),
(2, 2, 'Alan', 'Smith', '456 Broadway', 'New York', 'NY', '10001', FALSE, 'alan@toll.com', '222-222-2222');

INSERT INTO Employee VALUES
(1, 'Lesley', 'Bland', '2020-05-10', 'Sales Rep', 'lesley@marketco.com', '000-000-0000'),
(2, 'Jack', 'Lee', '2021-06-20', 'Account Manager', 'jack@marketco.com', '999-999-9999');

INSERT INTO ContactEmployee VALUES
(1, 1, 2, '2025-06-01', 'Initial Meeting'),
(2, 2, 1, '2025-06-15', 'Follow-up Call');

-- 4. Update Lesley Bland’s phone number
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee
SET Phone = '215-555-8800'
WHERE FirstName = 'Lesley' AND LastName = 'Bland';

-- 5.Update company name
UPDATE Company
SET CompanyName = 'Urban Outfitters'
WHERE CompanyName = 'Urban Outfitters, Inc.';

-- 6.Delete Dianne Connor's contact with Jack Lee
DELETE FROM ContactEmployee
WHERE ContactEmployeeID = 1;

-- 7. Display names of employees who contacted "Toll Brothers"
SELECT DISTINCT e.FirstName, e.LastName
FROM Contact c
JOIN Company co ON c.CompanyID = co.CompanyID
JOIN ContactEmployee ce ON c.ContactID = ce.ContactID
JOIN Employee e ON ce.EmployeeID = e.EmployeeID
WHERE co.CompanyName = 'Toll Brothers';

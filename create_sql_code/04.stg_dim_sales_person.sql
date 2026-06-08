IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_sales_person', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_sales_person(
    SalesPersonID INT IDENTITY(1,1) PRIMARY KEY,
    Sales_Person_Name NVARCHAR(50) NOT NULL,
    Sales_Person_Department NVARCHAR(50) NOT NULL,
    Load_Date DATETIME DEFAULT GETDATE()
);

INSERT INTO  computer_hub_stg.dbo.stg_dim_sales_person
(
    Sales_Person_Name,
    Sales_Person_Department
)
SELECT DISTINCT
    Sales_Person_Name,
    Sales_Person_Department
FROM computer_hub_stg.dbo.raw_comp_sales;
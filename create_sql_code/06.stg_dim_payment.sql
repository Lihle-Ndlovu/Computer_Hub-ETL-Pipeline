IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_payment', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_payment(
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    Payment_Method NVARCHAR(50) NOT NULL,
    Load_Date DATETIME DEFAULT GETDATE()
);



INSERT INTO computer_hub_stg.dbo.stg_dim_payment
(
    Payment_Method
)
SELECT DISTINCT
    Payment_Method
FROM computer_hub_stg.dbo.raw_comp_sales;
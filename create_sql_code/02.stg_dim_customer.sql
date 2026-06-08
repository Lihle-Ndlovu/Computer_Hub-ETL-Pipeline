IF OBJECT_ID('stg_dim_customer', 'U') IS NULL
BEGIN
    CREATE TABLE  computer_hub_stg.dbo.stg_dim_customer
    (
        Customer_Name NVARCHAR(50),
        Customer_Surname NVARCHAR(50),
        Customer_Contact_Number NVARCHAR(50),
        Customer_Email_Address NVARCHAR(50),
        Load_Date DATETIME DEFAULT GETDATE()
    );

    INSERT INTO  computer_hub_stg.dbo.stg_dim_customer
    (
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
)
SELECT DISTINCT
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address

FROM [computer_hub_stg].[dbo].[raw_comp_sales] s
    
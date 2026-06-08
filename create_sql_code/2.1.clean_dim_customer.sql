IF OBJECT_ID('clean_dim_customer', 'U') IS NULL
BEGIN
    CREATE TABLE  computer_hub_stg.dbo.clean_dim_customer
    (
        Customer_Name NVARCHAR(50),
        Customer_Surname NVARCHAR(50),
        Customer_Contact_Number NVARCHAR(50),
        Customer_Email_Address NVARCHAR(50),
        Load_Date DATETIME DEFAULT GETDATE()
    );
    END
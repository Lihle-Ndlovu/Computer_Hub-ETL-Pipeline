IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_store', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_store(
    [StoreID] INT IDENTITY (1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [tinyint] NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
) 

INSERT INTO computer_hub_stg.dbo.stg_dim_store(
           [Shop_Name],
           [Shop_Age] )


SELECT DISTINCT 
           [Shop_Name],
           [Shop_Age] 

FROM computer_hub_stg.dbo.raw_comp_sales;
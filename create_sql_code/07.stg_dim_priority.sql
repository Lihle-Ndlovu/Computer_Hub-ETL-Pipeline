IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_priority', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_priority(
    [PriorityID] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
)


INSERT INTO computer_hub_stg.dbo.stg_dim_priority(
           [Priority])
SELECT DISTINCT 
                [Priority]

FROM computer_hub_stg.dbo.raw_comp_sales;
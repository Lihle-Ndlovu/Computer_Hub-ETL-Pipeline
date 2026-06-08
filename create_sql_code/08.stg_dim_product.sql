IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_product', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_product(
    [ProductID] INT IDENTITY (1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
    [Load_date] DATETIME DEFAULT GETDATE()
)

INSERT INTO computer_hub_stg.dbo.stg_dim_product(
           [PC_Model],
           [PC_Make] ,
           [Storage_Type] ,
           [Storage_Capacity])


SELECT DISTINCT 
           [PC_Model],
           [PC_Make] ,
           [Storage_Type], 
           [Storage_Capacity]
FROM computer_hub_stg.dbo.raw_comp_sales;
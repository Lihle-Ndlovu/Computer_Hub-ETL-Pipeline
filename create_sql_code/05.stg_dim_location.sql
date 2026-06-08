IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_location', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_location(
        LocationID INT IDENTITY(1,1) PRIMARY KEY,
        Continent NVARCHAR(50) NOT NULL,
        Country_or_State NVARCHAR(50) NOT NULL,
        Province_or_City NVARCHAR(100) NOT NULL,
        Load_Date DATETIME DEFAULT GETDATE()
    );

    INSERT INTO computer_hub_stg.dbo.stg_dim_location
(
    Continent,
    Country_or_State,
    Province_or_City
)
SELECT DISTINCT
    Continent,
    Country_or_State,
    Province_or_City
FROM computer_hub_stg.dbo.raw_comp_sales;
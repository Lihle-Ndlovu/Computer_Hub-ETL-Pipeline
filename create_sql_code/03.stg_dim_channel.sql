IF OBJECT_ID('computer_hub_stg.dbo.stg_dim_channel', 'U') IS NULL
    CREATE TABLE computer_hub_stg.dbo.stg_dim_channel
    (
        ChannelID INT IDENTITY(1,1) PRIMARY KEY,
        Channel NVARCHAR(50) NOT NULL,
        Load_Date DATETIME DEFAULT GETDATE()
    );

INSERT INTO computer_hub_stg.dbo.stg_dim_channel
(
    Channel
)
SELECT DISTINCT
    Channel
FROM computer_hub_stg.dbo.raw_comp_sales;
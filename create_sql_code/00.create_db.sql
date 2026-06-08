IF DB_ID('computer_hub') IS NULL
BEGIN
    CREATE DATABASE computer_hub;
END;
GO

USE computer_hub;
GO


IF DB_ID('computer_hub_stg') IS NULL
BEGIN
    CREATE DATABASE computer_hub_stg;
END;
GO

USE computer_hub_stg;
GO
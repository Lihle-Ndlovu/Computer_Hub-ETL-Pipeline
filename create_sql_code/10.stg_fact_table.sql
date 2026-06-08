IF OBJECT_ID(' computer_hub_stg.dbo.stg_fact_sales', 'U') IS NULL
 CREATE TABLE  computer_hub_stg.dbo.stg_fact_sales(

    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    StoreID INT NOT NULL,
    LocationID INT NOT NULL,
    SalesPersonID INT NOT NULL,
    PaymentID INT NOT NULL,
    PriorityID INT NOT NULL,
    ChannelID INT NOT NULL,
    DateID INT NOT NULL,

    Cost_Price DECIMAL(10,2),
    Sale_Price DECIMAL(10,2),
    Discount_Amount DECIMAL(10,2),
    Finance_Amount DECIMAL(10,2),
    Cost_of_Repairs DECIMAL(10,2),
    Total_Sales_per_Employee DECIMAL(10,2),
    PC_Market_Price DECIMAL(10,2),

    Load_Date DATETIME DEFAULT GETDATE()
);


--    CONSTRAINT FK_Fact_Customer FOREIGN KEY (CustomerID) REFERENCES Dim_Customer(CustomerID),
--    CONSTRAINT FK_Fact_Product FOREIGN KEY (ProductID) REFERENCES Dim_Product(ProductID),
--    CONSTRAINT FK_Fact_Store FOREIGN KEY (StoreID) REFERENCES Dim_Store(StoreID),
--    CONSTRAINT FK_Fact_Location FOREIGN KEY (LocationID) REFERENCES Dim_Location(LocationID),
--    CONSTRAINT FK_Fact_Department FOREIGN KEY (DepartmentID) REFERENCES Dim_Department(DepartmentID),
--    CONSTRAINT FK_Fact_Payment FOREIGN KEY (PaymentID) REFERENCES Dim_Payment(PaymentID),
--    CONSTRAINT FK_Fact_Priority FOREIGN KEY (PriorityID) REFERENCES Dim_Priority(PriorityID),
--    CONSTRAINT FK_Fact_Channel FOREIGN KEY (ChannelID) REFERENCES Dim_Channel(ChannelID),
--    CONSTRAINT FK_Fact_Date FOREIGN KEY (DateID) REFERENCES Dim_Date(DateID)
--);

SELECT * FROM computer_hub_stg.dbo.stg_fact_sales
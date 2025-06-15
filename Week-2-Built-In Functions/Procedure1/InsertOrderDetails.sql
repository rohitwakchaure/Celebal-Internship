-- Drop if it already exists
DROP PROCEDURE IF EXISTS InsertOrderDetails;
GO

-- Now create the procedure
CREATE PROCEDURE InsertOrderDetails
    @OrderID INT,
    @ProductID INT,
    @UnitPrice MONEY = NULL,
    @Quantity INT,
    @Discount FLOAT = 0
AS
BEGIN
    DECLARE @Stock INT, @ReorderPoint INT, @DefaultPrice MONEY

    -- Get stock and price info
    SELECT @Stock = p.SafetyStockLevel, @ReorderPoint = p.ReorderPoint, @DefaultPrice = p.ListPrice
    FROM Production.Product p WHERE p.ProductID = @ProductID;

    -- Abort if not enough stock
    IF @Stock < @Quantity
    BEGIN
        PRINT 'Not enough stock to place the order. Aborting.'
        RETURN;
    END

    -- Use default price if UnitPrice not provided
    IF @UnitPrice IS NULL
        SET @UnitPrice = @DefaultPrice;

    -- Insert the order detail
    INSERT INTO Sales.SalesOrderDetail (SalesOrderID, ProductID, UnitPrice, OrderQty, UnitPriceDiscount)
    VALUES (@OrderID, @ProductID, @UnitPrice, @Quantity, @Discount);

    -- Check if insertion succeeded
    IF @@ROWCOUNT = 0
    BEGIN
        PRINT 'Failed to place the order. Please try again.';
        RETURN;
    END

    -- Update product stock
    UPDATE Production.Product
    SET SafetyStockLevel = SafetyStockLevel - @Quantity
    WHERE ProductID = @ProductID;

    -- Check reorder point
    IF EXISTS (
        SELECT 1 FROM Production.Product
        WHERE ProductID = @ProductID AND SafetyStockLevel < ReorderPoint
    )
    BEGIN
        PRINT 'Warning: Stock dropped below reorder level!';
    END
END;

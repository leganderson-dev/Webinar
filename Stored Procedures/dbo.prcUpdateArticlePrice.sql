SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Create the stored procedure to update the price and log the changes
CREATE PROCEDURE [dbo].[prcUpdateArticlePrice]
    @ArticlesID INT,
    @ChangeValue MONEY,
    @IsPercentage BIT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @OldPrice MONEY;
    DECLARE @NewPrice MONEY;
    DECLARE @ChangeType VARCHAR(10);

    -- Get the current price of the article
    SELECT TOP 1 @OldPrice = Price
    FROM dbo.ArticlePrices
    WHERE ArticlesID = @ArticlesID AND Active = 'Y'
    ORDER BY ValidFrom DESC;

    IF @OldPrice IS NOT NULL
    BEGIN
        IF @IsPercentage = 1
        BEGIN
            -- Calculate new price as a percentage
            SET @NewPrice = @OldPrice + (@OldPrice * @ChangeValue / 100);
            SET @ChangeType = 'PERCENTAGE';
        END
        ELSE
        BEGIN
            -- Calculate new price as a fixed amount
            SET @NewPrice = @OldPrice + @ChangeValue;
            SET @ChangeType = 'FIXED';
        END

        -- Update the price in ArticlePrices table
        UPDATE dbo.ArticlePrices
        SET Price = @NewPrice
        WHERE ArticlesID = @ArticlesID AND Active = 'Y';

        -- Log the change in ArticleCostHistory table
        INSERT INTO dbo.ArticleCostHistory (ArticlesID, OldPrice, NewPrice, ChangeType)
        VALUES (@ArticlesID, @OldPrice, @NewPrice, @ChangeType);
    END
END;

-- Example execution:
-- EXEC dbo.prcUpdateArticlePrice @ArticlesID = 1, @ChangeValue = 10, @IsPercentage = 1;
-- EXEC dbo.prcUpdateArticlePrice @ArticlesID = 1, @ChangeValue = 5, @IsPercentage = 0;
GO

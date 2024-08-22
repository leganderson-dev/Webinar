SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[newview]
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
SELECT DC.customer_company_name
     , DC.customer_credit_card_number
     , DC.customer_firstname
     , DC.customer_zipcode
FROM dbo.DM_CUSTOMER AS DC
    JOIN dbo.DM_CUSTOMER_NOTES AS DCN
        ON DCN.customer_id = DC.customer_id;
-- WITH CHECK OPTION
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcRenewContacts]
    @ContactFullName VARCHAR(40)
  , @PhoneWork VARCHAR(30) = NULL
  , @PhoneMobile VARCHAR(30) = NULL
  , @Address1 VARCHAR(30) = NULL
  , @Address2 VARCHAR(30) = NULL
  , @Address3 VARCHAR(30) = NULL
  , @Email VARCHAR(30) = NULL
  , @JoiningDate DATETIME = NULL
WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.Contacts
    (
        ContactFullName
      , PhoneWork
      , PhoneMobile
      , Address1
      , Address2
      , Address3
      , JoiningDate
      , ModifiedDate
      , Email
    )
    VALUES
    (@ContactFullName, @PhoneWork, @PhoneMobile, @Address1, @Address2, @Address3, @JoiningDate, GETDATE(), @Email);
END;
GO

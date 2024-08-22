SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts]

AS
BEGIN
	SET NOCOUNT ON
	    SELECT  ContactsID
              , ContactFullName
              , PhoneWork
              , PhoneMobile
              , Address1
              , Address2
              , Address3
              , CountryCode
              , JoiningDate
              , ModifiedDate
              , Email
              , Photo
              , LinkedIn
	    FROM    dbo.Contacts
END

	-- v7
GO

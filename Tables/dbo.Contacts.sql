CREATE TABLE [dbo].[Contacts]
(
[ContactsID] [int] NOT NULL IDENTITY(1, 1),
[ContactFullName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[PhoneWork] [nvarchar] (25) COLLATE Latin1_General_CI_AS NULL,
[PhoneMobile] [nvarchar] (25) COLLATE Latin1_General_CI_AS NULL,
[Address1] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Address2] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[Address3] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[CountryCode] [nvarchar] (4) COLLATE Latin1_General_CI_AS NULL CONSTRAINT [DF__Contacts__Countr__117F9D94] DEFAULT (N'US'),
[JoiningDate] [datetime] NULL CONSTRAINT [DF__Contacts__Joinin__1273C1CD] DEFAULT (getdate()),
[ModifiedDate] [datetime] NULL,
[Email] [nvarchar] (256) COLLATE Latin1_General_CI_AS NULL,
[Photo] [image] NULL,
[LinkedIn] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [PK__Contacts__912F378B7C53D1A0] PRIMARY KEY CLUSTERED ([ContactsID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD CONSTRAINT [FK__Contacts__Countr__145C0A3F] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[CountryCodes] ([CountryCode])
GO
EXEC sp_addextendedproperty N'MS_Description', N'A list of all Simple Talk members, including authors, bloggers, and any other member or contributor', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contact name', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'ContactFullName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Country for the given address', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'CountryCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contact email address', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When the contact joined Simple Talk', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'JoiningDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'When the contact details were last modified', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Photo of contact, especially authors.
This is now deprecated as the photos are saved as image files outside of the database.', 'SCHEMA', N'dbo', 'TABLE', N'Contacts', 'COLUMN', N'Photo'
GO

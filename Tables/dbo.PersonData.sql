CREATE TABLE [dbo].[PersonData]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[NAME] [nvarchar] (200) COLLATE Latin1_General_CI_AS NOT NULL,
[Email1] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[Email2] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[Phone1] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL,
[Phone2] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL,
[Street1] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[City1] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[StateProvince1] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[PostalCode1] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Street2] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[City2] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[StateProvince2] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[PostalCode2] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PersonData] ADD CONSTRAINT [PK__PersonDa__3214EC27CA5DC9C3] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

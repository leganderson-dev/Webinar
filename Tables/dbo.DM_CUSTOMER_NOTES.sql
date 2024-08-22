CREATE TABLE [dbo].[DM_CUSTOMER_NOTES]
(
[customer_id] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[customer_firstname] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_lastname] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_notes_entry_date] [datetime] NOT NULL,
[customer_note] [varchar] (2000) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [cnInd1] ON [dbo].[DM_CUSTOMER_NOTES] ([customer_id], [customer_notes_entry_date]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DM_CUSTOMER_NOTES] ADD CONSTRAINT [CN_FK] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[DM_CUSTOMER] ([customer_id])
GO

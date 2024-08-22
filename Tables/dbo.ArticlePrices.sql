CREATE TABLE [dbo].[ArticlePrices]
(
[ArticlePricesID] [int] NOT NULL IDENTITY(1, 1),
[ArticlesID] [int] NULL,
[Price] [money] NULL,
[ValidFrom] [datetime] NULL CONSTRAINT [DF__ArticlePr__Valid__1CF15040] DEFAULT (getdate()),
[ValidTo] [datetime] NULL,
[Active] [char] (1) COLLATE Latin1_General_CI_AS NULL CONSTRAINT [DF__ArticlePr__Activ__1DE57479] DEFAULT ('N'),
[SalesPrice] [char] (1) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlePrices] ADD CONSTRAINT [PK_ArticlePrices] PRIMARY KEY CLUSTERED ([ArticlePricesID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices] ON [dbo].[ArticlePrices] ([ArticlesID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices_1] ON [dbo].[ArticlePrices] ([ValidFrom]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices_2] ON [dbo].[ArticlePrices] ([ValidTo]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlePrices] ADD CONSTRAINT [FK_ArticlePrices] FOREIGN KEY ([ArticlesID]) REFERENCES [dbo].[Articles] ([ArticlesID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'How much was paid for the article', 'SCHEMA', N'dbo', 'TABLE', N'ArticlePrices', NULL, NULL
GO

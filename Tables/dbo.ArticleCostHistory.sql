CREATE TABLE [dbo].[ArticleCostHistory]
(
[ArticleCostHistoryID] [int] NOT NULL IDENTITY(1, 1),
[ArticlesID] [int] NOT NULL,
[OldPrice] [money] NOT NULL,
[NewPrice] [money] NOT NULL,
[ChangeDate] [datetime] NOT NULL CONSTRAINT [DF__ArticleCo__Chang__2B0A656D] DEFAULT (getdate()),
[ChangeType] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleCostHistory] ADD CONSTRAINT [PK__ArticleC__1DD68C598551B58D] PRIMARY KEY CLUSTERED ([ArticleCostHistoryID]) ON [PRIMARY]
GO

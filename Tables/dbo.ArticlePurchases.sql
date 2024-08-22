CREATE TABLE [dbo].[ArticlePurchases]
(
[ArticlePurchasesID] [int] NOT NULL IDENTITY(1, 1),
[ArticlePricesID] [int] NOT NULL,
[Quantity] [int] NOT NULL CONSTRAINT [DF__ArticlePu__Quant__22AA2996] DEFAULT ((1)),
[InvoiceNumber] [nvarchar] (20) COLLATE Latin1_General_CI_AS NULL,
[PurchaseDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticlePurchases] ADD CONSTRAINT [PK_ArticlePurchases] PRIMARY KEY CLUSTERED ([ArticlePurchasesID]) ON [PRIMARY]
GO

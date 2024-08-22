CREATE TABLE [dbo].[DM_CUSTOMER]
(
[customer_id] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[customer_firstname] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_lastname] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_gender] [varchar] (1) COLLATE Latin1_General_CI_AS NULL,
[customer_company_name] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_street_address] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_region] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_country] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_email] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_telephone] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[customer_zipcode] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[credit_card_type_id] [varchar] (2) COLLATE Latin1_General_CI_AS NULL,
[customer_credit_card_number] [varchar] (60) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DM_CUSTOMER] ADD CONSTRAINT [PK__DM_CUSTO__CD65CB85EBAB0573] PRIMARY KEY CLUSTERED ([customer_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DM_CUSTOMER] ADD CONSTRAINT [CU_FK] FOREIGN KEY ([credit_card_type_id]) REFERENCES [dbo].[DM_CREDIT_CARD_TYPE] ([credit_card_type_id])
GO

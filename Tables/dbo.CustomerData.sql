CREATE TABLE [dbo].[CustomerData]
(
[customer_id] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[customer_data_xml] [xml] NULL,
[customer_data_json] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO

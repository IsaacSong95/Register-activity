CREATE TABLE [dbo].[register]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[EventName] VARCHAR(25) NULL,
	[GuestNumber] INT NULL,
	[PaymentAmount] float NULL,
	[Emailaddress] VARCHAR(25) NULL,
)

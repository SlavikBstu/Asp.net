create database PhoneCatalog

USE [PhoneCatalog]

CREATE TABLE [clients](
	[Number] [nvarchar](10) Primary key NOT NULL,
	[Surname] [nvarchar](30) NOT NULL,
	[Firstname] [nvarchar](30) NOT NULL,
	[Middlename] [nvarchar](30) NOT NULL,
	[Bday] [datetime] NOT NULL,
)
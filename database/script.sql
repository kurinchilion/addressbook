USE [Contacts2015]
GO
/****** Object:  Table [dbo].[user]    Script Date: 07/12/2015 2:24:16 AM ******/
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[forgotPass]    Script Date: 07/12/2015 2:24:16 AM ******/
DROP TABLE [dbo].[forgotPass]
GO
/****** Object:  Table [dbo].[country]    Script Date: 07/12/2015 2:24:16 AM ******/
DROP TABLE [dbo].[country]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 07/12/2015 2:24:16 AM ******/
DROP TABLE [dbo].[contact]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 07/12/2015 2:24:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](200) NULL,
	[lastName] [nvarchar](200) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[streetName] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[province] [nvarchar](255) NULL,
	[postalCode] [nvarchar](10) NULL,
	[country] [nvarchar](255) NULL,
	[notes] [nvarchar](max) NULL,
	[status] [int] NULL CONSTRAINT [DF_contact_status]  DEFAULT ((0)),
	[userid] [int] NULL,
	[created] [datetime] NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[country]    Script Date: 07/12/2015 2:24:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[code] [nchar](2) NOT NULL,
	[name_en] [nvarchar](150) NULL,
	[name_fr] [nvarchar](150) NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[forgotPass]    Script Date: 07/12/2015 2:24:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forgotPass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](150) NULL,
	[tempPassword] [nvarchar](100) NULL,
	[status] [int] NULL,
	[modified] [datetime] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_forgotPass] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 07/12/2015 2:24:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NULL,
	[email] [nvarchar](150) NULL,
	[password] [nvarchar](100) NULL,
	[usertype] [int] NULL,
	[active] [int] NULL CONSTRAINT [DF_user_active]  DEFAULT ((0)),
	[modified] [datetime] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (2, N'z25Twy5tDQK8JV8zPgP2+A==', N'E2NOykIXQUdVAQzqxPvTrg==', N'bruW1ij7un1rk37vgBxUfw==', N'1 bandari street', N'scarborough', N'ontario', N'm1h 242', N'Canada', NULL, 1, 99, CAST(N'2015-12-06 12:26:36.397' AS DateTime), CAST(N'2015-12-06 13:51:28.197' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (3, N'kakFwH3MYnjua+5GCbgeBg==', N'WECSHiocPpv+Zn7ixJPrdg==', N'zNfVWOUrgC/RBVIT0kEm3w==', N'12 bandari street', N'scarborough', N'ontario', N'm1h 242', N'Canada', N'gkghjkjkhjkhjkhjkhjkhjkhjk', 1, 99, CAST(N'2015-12-06 12:29:09.613' AS DateTime), CAST(N'2015-12-06 12:45:29.313' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (4, N'YXtdn2/osrphCcwdgkwLpA==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'5 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', N'dtsdfjfh g gg kgkh &nbsp;klggyetryfhgvhjghkgf gfjkgk', 1, 99, CAST(N'2015-12-06 12:55:26.557' AS DateTime), CAST(N'2015-12-06 14:38:06.153' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (5, N'ERysAQhe1JE5nzNKkCgQAg==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'28 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', N'<p>asa<b>sas</b>asa</p>', 1, 99, CAST(N'2015-12-06 13:04:25.767' AS DateTime), CAST(N'2015-12-06 13:14:44.400' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (6, N'nMSoRCjYSibV79nCCW+mqw==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'28 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', NULL, 1, 99, CAST(N'2015-12-06 13:53:45.107' AS DateTime), CAST(N'2015-12-06 13:53:45.107' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (8, N'/cWsT188mCAFVn0ts6Dq+g==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'28 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', N'dorukku ggfgfj', 1, 99, CAST(N'2015-12-06 14:34:55.393' AS DateTime), CAST(N'2015-12-06 14:36:39.230' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (9, N'c1Bd5NJ+2WXtAicJmQenjA==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'28 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', N'asdgfjjklh h jhhkyurteturugj', 1, 99, CAST(N'2015-12-06 14:45:51.243' AS DateTime), CAST(N'2015-12-06 14:45:51.243' AS DateTime))
INSERT [dbo].[contact] ([id], [firstName], [lastName], [phoneNumber], [streetName], [city], [province], [postalCode], [country], [notes], [status], [userid], [created], [modified]) VALUES (10, N'BYSQDJ24VsZsKmHuu0ptsQ==', N'D4DNFw0OXTtqzzTnip0Jxg==', N'q+JIv65Jq/CDXftqmwmdvA==', N'5 bandari street', N'scarborough', N'ontario', N'm1h 2e3', N'Canada', N'asdgfjjklh h jhhkyurteturugj &lt;br&gt;', 1, 99, CAST(N'2015-12-06 14:47:19.960' AS DateTime), CAST(N'2015-12-06 14:47:19.960' AS DateTime))
SET IDENTITY_INSERT [dbo].[contact] OFF
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AD', N'Andorra', N'Andorre')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AE', N'United Arab Emirates', N'Émirats arabes unis')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AF', N'Afghanistan', N'Afghanistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AG', N'Antigua and Barbuda', N'Antigua-et-Barbuda')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AI', N'Anguilla', N'Anguilla')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AL', N'Albania', N'Albanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AM', N'Armenia', N'Arménie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AO', N'Angola', N'Angola')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AQ', N'Antarctica', N'Antarctique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AR', N'Argentina', N'Argentine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AS', N'American Samoa', N'Samoa américaine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AT', N'Austria', N'Autriche')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AU', N'Australia', N'Australie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AW', N'Aruba', N'Aruba')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AX', N'Åland Islands', N'Îles d''Åland')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'AZ', N'Azerbaijan', N'Azerbaïdjan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BA', N'Bosnia and Herzegovina', N'Bosnie-Herzégovine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BB', N'Barbados', N'Barbade')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BD', N'Bangladesh', N'Bangladesh')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BE', N'Belgium', N'Belgique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BF', N'Burkina Faso', N'Burkina Faso')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BG', N'Bulgaria', N'Bulgarie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BH', N'Bahrain', N'Bahreïn')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BI', N'Burundi', N'Burundi')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BJ', N'Benin', N'Bénin')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BL', N'Saint Barthélemy', N'Saint-Barthélemy')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BM', N'Bermuda', N'Bermudes')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BN', N'Brunei Darussalam', N'Brunei Darussalam')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BO', N'Bolivia', N'Bolivie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BQ', N'Caribbean Netherlands ', N'Pays-Bas caribéens')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BR', N'Brazil', N'Brésil')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BS', N'Bahamas', N'Bahamas')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BT', N'Bhutan', N'Bhoutan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BV', N'Bouvet Island', N'Île Bouvet')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BW', N'Botswana', N'Botswana')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BY', N'Belarus', N'Bélarus')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'BZ', N'Belize', N'Belize')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CA', N'Canada', N'Canada')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CC', N'Cocos (Keeling) Islands', N'Îles Cocos (Keeling)')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CD', N'Congo, Democratic Republic of', N'Congo, République démocratique du')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CF', N'Central African Republic', N'République centrafricaine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CG', N'Congo', N'Congo')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CH', N'Switzerland', N'Suisse')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CI', N'Côte d''Ivoire', N'Côte d''Ivoire')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CK', N'Cook Islands', N'Îles Cook')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CL', N'Chile', N'Chili')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CM', N'Cameroon', N'Cameroun')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CN', N'China', N'Chine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CO', N'Colombia', N'Colombie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CR', N'Costa Rica', N'Costa Rica')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CU', N'Cuba', N'Cuba')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CV', N'Cape Verde', N'Cap-Vert')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CW', N'Curaçao', N'Curaçao')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CX', N'Christmas Island', N'Île Christmas')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CY', N'Cyprus', N'Chypre')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'CZ', N'Czech Republic', N'République tchèque')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DE', N'Germany', N'Allemagne')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DJ', N'Djibouti', N'Djibouti')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DK', N'Denmark', N'Danemark')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DM', N'Dominica', N'Dominique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DO', N'Dominican Republic', N'République dominicaine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'DZ', N'Algeria', N'Algérie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'EC', N'Ecuador', N'Équateur')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'EE', N'Estonia', N'Estonie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'EG', N'Egypt', N'Égypte')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'EH', N'Western Sahara', N'Sahara Occidental')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ER', N'Eritrea', N'Érythrée')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ES', N'Spain', N'Espagne')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ET', N'Ethiopia', N'Éthiopie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FI', N'Finland', N'Finlande')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FJ', N'Fiji', N'Fidji')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FK', N'Falkland Islands', N'Îles Malouines')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FM', N'Micronesia, Federated States of', N'Micronésie, États fédérés de')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FO', N'Faroe Islands', N'Îles Féroé')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'FR', N'France', N'France')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GA', N'Gabon', N'Gabon')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GB', N'United Kingdom', N'Royaume-Uni')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GD', N'Grenada', N'Grenade')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GE', N'Georgia', N'Géorgie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GF', N'French Guiana', N'Guyane française')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GG', N'Guernsey', N'Guernesey')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GH', N'Ghana', N'Ghana')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GI', N'Gibraltar', N'Gibraltar')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GL', N'Greenland', N'Groenland')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GM', N'Gambia', N'Gambie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GN', N'Guinea', N'Guinée')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GP', N'Guadeloupe', N'Guadeloupe')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GQ', N'Equatorial Guinea', N'Guinée équatoriale')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GR', N'Greece', N'Grèce')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands', N'Géorgie du Sud et les îles Sandwich du Sud')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GT', N'Guatemala', N'Guatemala')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GU', N'Guam', N'Guam')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GW', N'Guinea-Bissau', N'Guinée-Bissau')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'GY', N'Guyana', N'Guyana')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HK', N'Hong Kong', N'Hong Kong')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HM', N'Heard and McDonald Islands', N'Îles Heard et McDonald')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HN', N'Honduras', N'Honduras')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HR', N'Croatia', N'Croatie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HT', N'Haiti', N'Haïti')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'HU', N'Hungary', N'Hongrie')
GO
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ID', N'Indonesia', N'Indonésie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IE', N'Ireland', N'Irlande')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IL', N'Israel', N'Israël')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IM', N'Isle of Man', N'Île de Man')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IN', N'India', N'Inde')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IO', N'British Indian Ocean Territory', N'Territoire britannique de l''océan Indien')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IQ', N'Iraq', N'Irak')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IR', N'Iran', N'Iran')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IS', N'Iceland', N'Islande')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'IT', N'Italy', N'Italie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'JE', N'Jersey', N'Jersey')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'JM', N'Jamaica', N'Jamaïque')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'JO', N'Jordan', N'Jordanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'JP', N'Japan', N'Japon')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KE', N'Kenya', N'Kenya')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KG', N'Kyrgyzstan', N'Kirghizistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KH', N'Cambodia', N'Cambodge')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KI', N'Kiribati', N'Kiribati')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KM', N'Comoros', N'Comores')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KN', N'Saint Kitts and Nevis', N'Saint-Kitts-et-Nevis')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KP', N'North Korea', N'Corée du Nord')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KR', N'South Korea', N'Corée du Sud')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KW', N'Kuwait', N'Koweït')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KY', N'Cayman Islands', N'Îles Caïmans')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'KZ', N'Kazakhstan', N'Kazakhstan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LA', N'Lao People''s Democratic Republic', N'Laos')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LB', N'Lebanon', N'Liban')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LC', N'Saint Lucia', N'Sainte-Lucie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LI', N'Liechtenstein', N'Liechtenstein')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LK', N'Sri Lanka', N'Sri Lanka')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LR', N'Liberia', N'Libéria')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LS', N'Lesotho', N'Lesotho')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LT', N'Lithuania', N'Lituanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LU', N'Luxembourg', N'Luxembourg')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LV', N'Latvia', N'Lettonie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'LY', N'Libya', N'Libye')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MA', N'Morocco', N'Maroc')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MC', N'Monaco', N'Monaco')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MD', N'Moldova', N'Moldavie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ME', N'Montenegro', N'Monténégro')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MF', N'Saint-Martin (France)', N'Saint-Martin (France)')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MG', N'Madagascar', N'Madagascar')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MH', N'Marshall Islands', N'Îles Marshall')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MK', N'Macedonia', N'Macédoine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ML', N'Mali', N'Mali')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MM', N'Myanmar', N'Myanmar')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MN', N'Mongolia', N'Mongolie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MO', N'Macau', N'Macao')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MP', N'Northern Mariana Islands', N'Mariannes du Nord')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MQ', N'Martinique', N'Martinique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MR', N'Mauritania', N'Mauritanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MS', N'Montserrat', N'Montserrat')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MT', N'Malta', N'Malte')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MU', N'Mauritius', N'Maurice')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MV', N'Maldives', N'Maldives')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MW', N'Malawi', N'Malawi')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MX', N'Mexico', N'Mexique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MY', N'Malaysia', N'Malaisie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'MZ', N'Mozambique', N'Mozambique')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NA', N'Namibia', N'Namibie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NC', N'New Caledonia', N'Nouvelle-Calédonie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NE', N'Niger', N'Niger')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NF', N'Norfolk Island', N'Île Norfolk')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NG', N'Nigeria', N'Nigeria')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NI', N'Nicaragua', N'Nicaragua')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NL', N'The Netherlands', N'Pays-Bas')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NO', N'Norway', N'Norvège')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NP', N'Nepal', N'Népal')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NR', N'Nauru', N'Nauru')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NU', N'Niue', N'Niue')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'NZ', N'New Zealand', N'Nouvelle-Zélande')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'OM', N'Oman', N'Oman')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PA', N'Panama', N'Panama')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PE', N'Peru', N'Pérou')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PF', N'French Polynesia', N'Polynésie française')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PG', N'Papua New Guinea', N'Papouasie-Nouvelle-Guinée')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PH', N'Philippines', N'Philippines')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PK', N'Pakistan', N'Pakistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PL', N'Poland', N'Pologne')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PM', N'St. Pierre and Miquelon', N'Saint-Pierre-et-Miquelon')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PN', N'Pitcairn', N'Pitcairn')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PR', N'Puerto Rico', N'Puerto Rico')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PS', N'Palestine, State of', N'Palestine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PT', N'Portugal', N'Portugal')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PW', N'Palau', N'Palau')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'PY', N'Paraguay', N'Paraguay')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'QA', N'Qatar', N'Qatar')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'RE', N'Réunion', N'Réunion')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'RO', N'Romania', N'Roumanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'RS', N'Serbia', N'Serbie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'RU', N'Russian Federation', N'Russie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'RW', N'Rwanda', N'Rwanda')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SA', N'Saudi Arabia', N'Arabie saoudite')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SB', N'Solomon Islands', N'Îles Salomon')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SC', N'Seychelles', N'Seychelles')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SD', N'Sudan', N'Soudan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SE', N'Sweden', N'Suède')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SG', N'Singapore', N'Singapour')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SH', N'Saint Helena', N'Sainte-Hélène')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SI', N'Slovenia', N'Slovénie')
GO
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SJ', N'Svalbard and Jan Mayen Islands', N'Svalbard et île de Jan Mayen')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SK', N'Slovakia', N'Slovaquie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SL', N'Sierra Leone', N'Sierra Leone')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SM', N'San Marino', N'Saint-Marin')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SN', N'Senegal', N'Sénégal')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SO', N'Somalia', N'Somalie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SR', N'Suriname', N'Suriname')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SS', N'South Sudan', N'Soudan du Sud')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ST', N'Sao Tome and Principe', N'Sao Tomé-et-Principe')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SV', N'El Salvador', N'El Salvador')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SX', N'Sint Maarten (Dutch part)', N'Saint-Martin (Pays-Bas)')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SY', N'Syria', N'Syrie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'SZ', N'Swaziland', N'Swaziland')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TC', N'Turks and Caicos Islands', N'Îles Turks et Caicos')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TD', N'Chad', N'Tchad')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TF', N'French Southern Territories', N'Terres australes françaises')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TG', N'Togo', N'Togo')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TH', N'Thailand', N'Thaïlande')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TJ', N'Tajikistan', N'Tadjikistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TK', N'Tokelau', N'Tokelau')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TL', N'Timor-Leste', N'Timor-Leste')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TM', N'Turkmenistan', N'Turkménistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TN', N'Tunisia', N'Tunisie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TO', N'Tonga', N'Tonga')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TR', N'Turkey', N'Turquie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TT', N'Trinidad and Tobago', N'Trinité-et-Tobago')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TV', N'Tuvalu', N'Tuvalu')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TW', N'Taiwan', N'Taïwan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'TZ', N'Tanzania', N'Tanzanie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'UA', N'Ukraine', N'Ukraine')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'UG', N'Uganda', N'Ouganda')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'UM', N'United States Minor Outlying Islands', N'Îles mineures éloignées des États-Unis')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'US', N'United States', N'États-Unis')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'UY', N'Uruguay', N'Uruguay')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'UZ', N'Uzbekistan', N'Ouzbékistan')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VA', N'Vatican', N'Vatican')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VC', N'Saint Vincent and the Grenadines', N'Saint-Vincent-et-les-Grenadines')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VE', N'Venezuela', N'Venezuela')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VG', N'Virgin Islands (British)', N'Îles Vierges britanniques')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VI', N'Virgin Islands (U.S.)', N'Îles Vierges américaines')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VN', N'Vietnam', N'Vietnam')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'VU', N'Vanuatu', N'Vanuatu')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'WF', N'Wallis and Futuna Islands', N'Îles Wallis-et-Futuna')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'WS', N'Samoa', N'Samoa')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'YE', N'Yemen', N'Yémen')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'YT', N'Mayotte', N'Mayotte')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ZA', N'South Africa', N'Afrique du Sud')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ZM', N'Zambia', N'Zambie')
INSERT [dbo].[country] ([code], [name_en], [name_fr]) VALUES (N'ZW', N'Zimbabwe', N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[forgotPass] ON 

INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1, N'sutha2@gmail.com', N'Lc8-x=Y9*', 0, CAST(N'2015-12-06 01:23:19.223' AS DateTime), CAST(N'2015-12-06 01:23:19.223' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (2, N'sutha2@gmail.com', N'L$q36W!e', 0, CAST(N'2015-12-06 01:24:39.710' AS DateTime), CAST(N'2015-12-06 01:24:40.537' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1002, N'webharan@gmail.com', N'8Gp%j6*Q?R', 0, CAST(N'2015-12-07 00:58:18.410' AS DateTime), CAST(N'2015-12-07 00:58:18.410' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1003, N'webharan@gmail.com', N'o}4F3C_iSj', 1, CAST(N'2015-12-07 02:19:19.957' AS DateTime), CAST(N'2015-12-07 01:22:13.043' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1004, N'webharan@gmail.com', N'm?7JA9p*{', 0, CAST(N'2015-12-07 01:25:35.167' AS DateTime), CAST(N'2015-12-07 01:25:35.167' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1005, N'webharan@gmail.com', N'8k*JS?5bw7', 0, CAST(N'2015-12-07 01:31:11.237' AS DateTime), CAST(N'2015-12-07 01:31:11.237' AS DateTime))
INSERT [dbo].[forgotPass] ([id], [email], [tempPassword], [status], [modified], [created]) VALUES (1006, N'webharan@gmail.com', N'Rc9{7_eJQ2', 0, CAST(N'2015-12-07 01:39:20.673' AS DateTime), CAST(N'2015-12-07 01:39:20.677' AS DateTime))
SET IDENTITY_INSERT [dbo].[forgotPass] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [firstName], [lastName], [email], [password], [usertype], [active], [modified], [created]) VALUES (1004, N'ERysAQhe1JE5nzNKkCgQAg==', N'AOn+Mw6Yi4mzq2Vdj303fA==', N'webharan@gmail.com', N'7nmXbJOA1eM3/BwJXs6MjyL5HzBs7rFh+lH+zt4sS6E=', 99, 1, CAST(N'2015-12-06 19:42:19.627' AS DateTime), CAST(N'2015-12-06 10:24:35.673' AS DateTime))
INSERT [dbo].[user] ([id], [firstName], [lastName], [email], [password], [usertype], [active], [modified], [created]) VALUES (1006, N'D4DNFw0OXTtqzzTnip0Jxg==', N'7tHYt3y1TRFdzKm7qHFoqw==', N'haran005@yahoo.com', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 99, 1, CAST(N'2015-12-06 20:22:55.570' AS DateTime), CAST(N'2015-12-06 20:22:55.570' AS DateTime))
INSERT [dbo].[user] ([id], [firstName], [lastName], [email], [password], [usertype], [active], [modified], [created]) VALUES (1007, N'+ReIZMgUkhd69zloekVRKQ==', N'WlP7k90XkhqE/zqV5P4Fcw==', N'acestrainfo@gmail.com', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 99, 1, CAST(N'2015-12-06 21:10:54.207' AS DateTime), CAST(N'2015-12-06 21:05:46.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[user] OFF

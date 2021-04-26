/*============================== CREATE DATABASE =======================================*/
/*======================================================================================*/
DROP DATABASE IF EXISTS WeatherDatabase;
CREATE DATABASE WeatherDatabase;
USE WeatherDatabase;

/*============================== CREATE TABLE=== =======================================*/
/*======================================================================================*/
-- CREATE TABLE: Admin
DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin`(
	AdminID			INT UNSIGNED NOT NULL  PRIMARY KEY AUTO_INCREMENT ,
	Email 			VARCHAR(256)  NOT NULL UNIQUE KEY ,
	`Password`		NVARCHAR(256) NOT NULL
);

-- CREATE TABLE: User
CREATE TABLE `User`(
	UserID			INT UNSIGNED NOT NULL  PRIMARY KEY AUTO_INCREMENT,
	`Name`			NVARCHAR(250) NOT NULL,
    Email 			VARCHAR(50) NOT NULL UNIQUE KEY ,
    Address			NVARCHAR(250) NOT NULL
);

-- CREATE TABLE: Country
CREATE TABLE Country(
	CountryID 		INT UNSIGNED PRIMARY KEY   AUTO_INCREMENT,
	CountryName		NVARCHAR(256) NOT NULL UNIQUE KEY,
    `Description`	TEXT NOT NULL,
    Image			NVARCHAR(256)
);

-- CREATE TABLE: City
CREATE TABLE City(
	CityID 			INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
	CityName		NVARCHAR(100) NOT NULL UNIQUE KEY,
    `Description`	TEXT NOT NULL ,
    CountryID 		INT UNSIGNED NOT NULL ,
    Image			NVARCHAR(256),
    FOREIGN KEY 	(CountryID) 	REFERENCES 		Country (CountryID)
);

-- CREATE TABLE: FavoriteCity
CREATE TABLE FavoriteCity(
	UserID			INT UNSIGNED NOT NULL,
	CityID 			INT UNSIGNED NOT NULL,
    FOREIGN KEY 	(UserID) 		REFERENCES 		`User` 	(UserID),
    FOREIGN KEY 	(CityID) 		REFERENCES 		City 	(CityID),
    PRIMARY KEY 	(UserID, CityID)
);

/*============================== INSERT DATABASE =======================================*/
/*======================================================================================*/
-- INSERT DATABASE TO TABLE Admin
INSERT INTO `Admin`		(	Email						, 	`Password` 		) 
VALUES 					(	"ngthanhtien@gmail.com"		,	"admin123"		),
						(	"nghoanggiang@gmail.com"	,	"admin123"		),
                        (	"quanghuybui@gmail.com"		,	"admin123"		),
                        (	"longduc@gmail.com"			,	"admin123"		),
                        (	"nguyendacngoc@gmail.com"	,	"admin123"		),
                        (	"tuvandai@gmail.com"		,	"admin123"		),
                        (	"damquangtrung@gmail.com"	,	"admin123"		),
                        (	"hatienhiepn@gmail.com"		,	"admin123"		);

-- INSERT DATABASE TO TABLE User
INSERT INTO `User`		(	`Name`						, 	Email					,	Address		)
VALUES					(	"Nguyễn Thanh Tiến"			,	"ngthanhtien@gmail.com"	,	"Trung thôn, Đông Hội, Đông Anh, Hà Nội"),
						(	"Nguyễn Hoàng Giang"		,	"nghoanggiang@gmail.com",	"Trung thôn, Đông Hội, Đông Anh, Hà Nội");
-- INSERT DATABASE TO TABLE COUNTRY
INSERT INTO Country		(	CountryName					, 	`Description` 			, 	Image		) 
VALUES 					(	"Brunei"					,		"abc"				,	"abc"		),
						(	"Campuchia"					,		"abc"				,	"abc"		),
                        (	"Indonesia"					,		"abc"				,	"abc"		),
                        (	"Lào"						,		"abc"				,	"abc"		),
                        (	"Malaysia"					,		"abc"				,	"abc"		),
                        (	"Myanmar"					,		"abc"				,	"abc"		),
                        (	"Philippines"				,		"abc"				,	"abc"		),
                        (	"Singapore"					,		"abc"				,	"abc"		),
                        (	"Thái Lan"					,		"abc"				,	"abc"		),
						(	"Timor Leste"				,		"abc"				,	"abc"		),
						(	"Việt Nam"					,		"abc"				,	"abc"		);
                        
-- INSERT DATABASE TO TABLE City
INSERT INTO City		(	CityName					,	`Description`	,	CountryID	,	Image 		)
VALUES					(	"Bandar Seri Begawan"		,	"abc"			,		1		,	"abc"		),
						(	"Kampung Kota Batu"			,	"abc"			,		1		,	"abc"		),
                        (	"Kampong Ayer"				,	"abc"			,		1		,	"abc"		),
                        (	"Muara Beach"				,	"abc"			,		1		,	"abc"		),
                        (	"Kaula Belait"				,	"abc"			,		1		,	"abc"		),
                        (	"Koh Rong"					,	"abc"			,		2		,	"abc"		),
                        (	"Sihanoukville"				,	"abc"			,		2		,	"abc"		),
                        (	"Kampot"					,	"abc"			,		2		,	"abc"		),
                        (	"Phnom Penh"				,	"abc"			,		2		,	"abc"		),
                        (	"Kratie"					,	"abc"			,		2		,	"abc"		),
                        (	"Bukittinggi"				,	"abc"			,		3		,	"abc"		),
                        (	"Yogyakarta"				,	"abc"			,		3		,	"abc"		),
                        (	"Jakarta"					,	"abc"			,		3		,	"abc"		),
                        (	"Bandung"					,	"abc"			,		3		,	"abc"		),
                        (	"Manado"					,	"abc"			,		3		,	"abc"		),
                        (	"Savanakhet"				,	"abc"			,		4		,	"abc"		),
                        (	"Vientiane"					,	"abc"			,		4		,	"abc"		),
                        (	"Vang Vieng"				,	"abc"			,		4		,	"abc"		),
                        (	"Champasak"					,	"abc"			,		4		,	"abc"		),
                        (	"Luang Prabang"				,	"abc"			,		4		,	"abc"		),
                        (	"Malacca"					,	"abc"			,		5		,	"abc"		),
						(	"Langkawi"					,	"abc"			,		5		,	"abc"		),
						(	"Kuantan"					,	"abc"			,		5		,	"abc"		),
						(	"Perhentian"				,	"abc"			,		5		,	"abc"		),
						(	"Kuala Lumpur"				,	"abc"			,		5		,	"abc"		),
                        (	"Yangon"					,	"abc"			,		6		,	"abc"		),
                        (	"Mandalay"					,	"abc"			,		6		,	"abc"		),
                        (	"Bagan"						,	"abc"			,		6		,	"abc"		),
                        (	"Mrauk-U"					,	"abc"			,		6		,	"abc"		),
                        (	"Nyaung Shwe"				,	"abc"			,		6		,	"abc"		),
                        (	"Manila"					,	"abc"			,		7		,	"abc"		),
                        (	"Palawan"					,	"abc"			,		7		,	"abc"		),
                        (	"Cebu"						,	"abc"			,		7		,	"abc"		),
                        (	"Padre Burgos"				,	"abc"			,		7		,	"abc"		),
                        (	"Malapascua"				,	"abc"			,		7		,	"abc"		),
                        (	"Singapore"					,	"abc"			,		8		,	"abc"		),
                        (	"Sentosa"					,	"abc"			,		8		,	"abc"		),
                        (	"Little India "				,	"abc"			,		8		,	"abc"		),
                        (	"Civic"						,	"abc"			,		8		,	"abc"		),
                        (	"China Town"				,	"abc"			,		8		,	"abc"		),
                        (	"Bangkok"					,	"abc"			,		9		,	"abc"		),
                        (	"Phuket"					,	"abc"			,		9		,	"abc"		),
                        (	"Ayutthaya"					,	"abc"			,		9		,	"abc"		),
                        (	"Mimosa"					,	"abc"			,		9		,	"abc"		),
                        (	"Pattaya"					,	"abc"			,		9		,	"abc"		),
                        (	"Dili"						,	"abc"			,		10		,	"abc"		),
                        (	"Lautem"					,	"abc"			,		10		,	"abc"		),
                        (	"Ermera"					,	"abc"			,		10		,	"abc"		),
                        (	"Liquica"					,	"abc"			,		10		,	"abc"		),
                        (	"Baucau"					,	"abc"			,		10		,	"abc"		),
                        (	"Ha Noi"					,	"abc"			,		11		,	"abc"		),
                        (	"Ho Chi Minh City"			,	"abc"			,		11		,	"abc"		),
                        (	"Hue"						,	"abc"			,		11		,	"abc"		),
                        (	"Da Nang"					,	"abc"			,		11		,	"abc"		),
                        (	"Hoi An"					,	"abc"			,		11		,	"abc"		);
                        
-- INSERT DATABASE TO TABLE FavoriteCity
INSERT INTO FavoriteCity	(UserID	,	CityID	)
VALUES						(	1	,	1		),
							(	1	,	2		),
							(	1	,	3		),
							(	2	,	4		),
							(	2	,	2		),
							(	2	,	3		),
							(	2	,	1		);
                        
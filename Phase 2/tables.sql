DROP TABLE cpu;
DROP TABLE motherboard;
DROP TABLE caseCover;
DROP TABLE ram;
DROP TABLE storage;
DROP TABLE distributor;
DROP TABLE gpu;
DROP TABLE powerSupply;
DROP TABLE cooling;
DROP TABLE monitor;
DROP TABLE est_total;
DROP TABLE friend;
DROP TABLE customer;

CREATE TABLE cpu(
 ID INTEGER not null,
 type char (32) not null,
 name char (32) primary key,
 price float(32,2) not null,
 socket char(32) not null,
 popularity float(32,1) not null,
 speed float(32,1) not null,
 cores INTEGER not null
);

CREATE TABLE motherboard(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 socket char(32) not null,
 wifi char(32) not null,
 size char(32) not null,
popularity float(32,1) not null
);

CREATE TABLE caseCover(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 size char(32) not null,
 color char(32) not null,
 popularity float(32,2) not null
);

CREATE TABLE ram(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 speed INTEGER not null,
 size INTEGER not null,
 popularity float(32,1),
 rgb char(32) not null
);

CREATE TABLE storage(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 speed INTEGER not null,
 size INTEGER not null,
 popularity float(32,1) not null
);

CREATE TABLE distributor(
 ID INTEGER primary key,
 type char(32) not null,
 price float(32,2) not null,
 popularity float(32,2)
);

CREATE TABLE gpu(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 speed INTEGER not null,
 memory INTEGER not null,
 popularity float(32,1),
 rgb char(32)
);

CREATE TABLE powerSupply(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 wattage INTEGER not null,
 size INTEGER not null,
 popularity float(32,1),
 rating char(32) not null
);

CREATE TABLE cooling(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 size INTEGER not null,
 popularity float(32,1) not null,
 rgb char(32) not null
);

CREATE TABLE monitor(
 ID INTEGER not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 size float(32,1) not null,
 panel char(32) not null,
 refresh INTEGER not null,
 resolution char(32) not null
);

CREATE TABLE estTotal(
 price float(32,2) primary key
);

CREATE TABLE friend(
 email char(32) primary key,
 buildkey INTEGER not null
);

CREATE TABLE customer(
 fname char(32) not null,
 lname char(32) not null,
 email char(32) primary key,
 buildkey INTEGER not null
);

--chnage name caseCover and powerSupply
DELETE FROM cpu;
DELETE FROM motherboard;
DELETE FROM caseCover;
DELETE FROM ram;
DELETE FROM storage;
DELETE FROM distributor;
DELETE FROM gpu;
DELETE FROM powerSupply;
DELETE FROM cooling;
DELETE FROM monitor;
DELETE FROM est_total;
DELETE FROM friend;
DELETE FROM customer;

INSERT INTO monitor VALUES(1,'Curved','Acer XZ271U',489.99, 27,'VA','144Hz','2560 x 1440');
INSERT INTO monitor VALUES(2,'Curved','MSI Optix AG32C',329.99,32,'LCD','165Hz','1920 x 1080');
INSERT INTO monitor VALUES(3,'Curved','ASUS TUF Gaming VG24VQ',189.99,24,'VA','144 Hz','1920 x 1080');
INSERT INTO monitor VALUES(4,'Flat','Acer Nitro VG270 Pbiip',199.99,27,'IPS','144 Hz','1920 x 1080');
INSERT INTO monitor VALUES(5,'Flat','ASUS ROG Strix XG279Q',576.99,27,'IPS','170 Hz','2560 x 1440');
INSERT INTO monitor VALUES(6,'Flat','Acer NITRO VG0',249.99,27,	'IPS','75 Hz','2560 x 1440');
INSERT INTO monitor VALUES(7,'Flat','ASUS ROG Strix XG438Q',1060.99,43,'VA','120 Hz','3840 x 2160');
INSERT INTO monitor VALUES(8,'Flat','ASUS ROG Strix XG258Q',518.88,24.5,'TN','240 Hz','1920 x 1080');
INSERT INTO monitor VALUES(9,'Curved','SAMSUNG LC34J791WTNXZA',699.99,34,'VA','100 Hz','3440 x 1440');
INSERT INTO monitor VALUES(10,'Curved','MSI Optix MAG27C',255.99,27,'VA','144 Hz','1920 x 1080');
INSERT INTO monitor VALUES(11,'Curved','Samsung CFG73 Series C27FG73',359.99,27,'VA','144 Hz','1920 x 1080');
INSERT INTO monitor VALUES(12,'Curved','ASUS TUF Gaming VG32VQ',369.99,32,'VA','144 Hz','2560 x 1440'); 

INSERT INTO cooling VALUES(1,'cpu','Cooler Master MasterAir MA624 Stealth',99.99,120,4.5,'no');
INSERT INTO cooling VALUES(2,'cpu','Deepcool Assassin III',89.99,140,4.5,'no');
INSERT INTO cooling VALUES(3,'cpu','Cooler Master MasterAir MA410M',69.99,140,4.5,'yes');
INSERT INTO cooling VALUES(4,'cpu','Noctua NH-U14S',79.95,140,5.0,'no');
INSERT INTO cooling VALUES(5,'cpu','Zalman CNPS10x Performa Black',39.99,135,4.5,'no');
INSERT INTO cooling VALUES(6,'case','Noctua NF-S12B Redux-1200',13.95,120,5.0,'no');
INSERT INTO cooling VALUES(7,'case', 'Arctic F12-120',0.59,120,4.5,'no');
INSERT INTO cooling VALUES(8,'case','Cooler Master MF200R ARGB',38.7,200,3.5,'yes');
INSERT INTO cooling VALUES(9,'case','be quiet! Silent Wings 3',24.34,120,4.5,'no');
INSERT INTO cooling VALUES(10,'case','Corsair QL Series QL120',99.5,120,5.0,'yes');
INSERT INTO cooling VALUES(11,'case','Noctua NF-P12 Redux',13.9,120,5.0,'no');
INSERT INTO cooling VALUES(12,'case','Corsair LL 120',87.99,120,4.5,'yes');
INSERT INTO cooling VALUES(13,'case','Cooler Master MegaFlow 200',29,200,4.5,'no');


INSERT INTO powerSupply VALUES(1,'Modular','EVGA SuperNOVA 850 GA',124.99,850,150,4.8,'80 Plus Gold');
INSERT INTO powerSupply VALUES(2,'Modular','EVGA SuperNOVA 750 G5',95.88,750,150,4.9,'80 Plus Gold');
INSERT INTO powerSupply VALUES(3,'Modular','Seasonic PRIME Ultra',196.8,650,140,4.7,'80 Plus Gold');
INSERT INTO powerSupply VALUES(4,'Modular','EVGA 550 B5',54.99,550,150,4.7,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(5,'Modular','Seasonic FOCUS PX-850',158.99,850,150,4.8,'80 Plus Platinum');
INSERT INTO powerSupply VALUES(6,'Modular','CORSAIR SF Series SF450',119.88,450,100,4.6,'80 Plus Platinum');
INSERT INTO powerSupply VALUES(7,'Not Modular','Rosewill RD 400Z',50.99,400,140,4.5,'80 Plus');
INSERT INTO powerSupply VALUES(8,'Modular','Thermaltake Toughpower Grand RGB',137.99,850,160,4.7,'80 Plus Gold');
INSERT INTO powerSupply VALUES(9,'Semi Modular', 'CORSAIR TX-M Series TX550M',59.99,550,140,4.5,'80 Plus Gold');
INSERT INTO powerSupply VALUES(10,'Modular','Thermaltake Smart Pro RGB',103.99,750,170,3.7,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(11,'Semi Modular','Seasonic FOCUS GM-850',133.11,850,140,4.5,'80 Plus Gold');
INSERT INTO powerSupply VALUES(12,'Not Modular','EVGA 450 BR',34.99,450,140,4.5,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(13,'Not Modular','CORSAIR CV Series CV650',67.99,650,125,4.6,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(14,'Semi Modular','CORSAIR CX-M Series CX550M',72.99,550,140,4.7,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(15,'Semi Modular','EVGA 600 BQ',53.29,600,140,4.6,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(16,'Semi Modular','EVGA 650 BQ',89.99,650,165,4.7,'80 Plus Bronze');
INSERT INTO powerSupply VALUES(17,'Modular','CORSAIR AXi Series AX1600i',639.99,1600,200,4.5,'80 Plus Titanium');
INSERT INTO powerSupply VALUES(18,'Semi Modular','EVGA 850 GQ',130.98,850,180,4.7,'80 Plus Gold');
INSERT INTO powerSupply VALUES(19,'Modular','EVGA SuperNOVA 1600 T2',630,1600,220,4.8,'80 Plus Titanium');
INSERT INTO powerSupply VALUES(20,'Modular','CORSAIR HXi Series HX1200i 1200W',679.44,1200,200,4.7,'80 Plus Platinum');

INSERT INTO gpu VALUES(1,'AMD', 'SAPPHIRE PULSE Radeon RX 5600 XT',289.99,1615,6,4.7,'No');
INSERT INTO gpu VALUES(2,'AMD','SAPPHIRE PULSE Radeon RX 570',447.32,1284,4,4.5,'No');
INSERT INTO gpu VALUES(3,'AMD','GIGABYTE Radeon RX 570',389.6,1255,4,4.6,'Yes');
INSERT INTO gpu VALUES(4,'AMD', 'MSI Radeon RX 5500 XT',780.4,1845,8,4.8,'Yes');
INSERT INTO gpu VALUES(5,'AMD','SAPPHIRE NITRO+ Radeon RX 5700 XT',679.99,1905,8,4.9,'Yes');
INSERT INTO gpu VALUES(6,'AMD','MSI Radeon RX 580',802.99,1366,8,4.7,'No');
INSERT INTO gpu VALUES(7,'AMD','MSI Radeon RX 5700 XT',906.99,1980,8,4.9,'Yes');
INSERT INTO gpu VALUES(8,'AMD','ASRock Radeon RX 5700 XT',1399.99,1905,8,4.7,'No');
INSERT INTO gpu VALUES(9,'AMD','GIGABYTE AORUS Radeon RX 5700 XT',1360.99,2010,8,4.9,'Yes');
INSERT INTO gpu VALUES(10,'AMD','GIGABYTE Radeon RX 5700 XT',907.99,1905,8,4.6,'Yes');
INSERT INTO gpu VALUES(11,'Nvidia', 'MSI GeForce RTX 2070',756.99,1830,8,4.8,'Yes');
INSERT INTO gpu VALUES(12,'Nvidia','EVGA GeForce RTX 2060 KO ULTRA',548.67,1755,6,4.7,'No');
INSERT INTO gpu VALUES(13,'Nvidia','EVGA GeForce GTX 1660 BLACK GAMING',589,1785,6,4.6,'No');
INSERT INTO gpu VALUES(14,'Nvidia','GIGABYTE GeForce RTX 2070 WINDFORCE',559.99,1620,8,4.7,'Yes');
INSERT INTO gpu VALUES(15,'Nvidia','GIGABYTE GeForce RTX 2080 SUPER GAMING OC WHITE',756.99,1845,8,4.8,'Yes');
INSERT INTO gpu VALUES(16,'Nvidia','MSI GeForce GTX 1650 SUPER',680.99,1755,4,4.6,'Yes');
INSERT INTO gpu VALUES(17,'Nvidia','GIGABYTE GeForce GTX 1660 SUPER',646.99,1830,6,4.7,'No');
INSERT INTO gpu VALUES(18,'Nvidia','EVGA GeForce RTX 2080 Ti',1529.99,1650,11,4.8,'Yes');
INSERT INTO gpu VALUES(19,'Nvidia','MSI GeForce GTX 1650',424.34,1860,4,4.7,'Yes');
INSERT INTO gpu VALUES(20,'Nvidia','ASUS ROG STRIX GeForce RTX 2060',749.99,1680,6,4.8,'Yes');




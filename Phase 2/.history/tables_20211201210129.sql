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
 I not null,
 type char (32) not null,
 name char (32) primary key,
 price float(32,2) not null,
 socket char(32) not null,
 popularity float(32,1) not null,
 speed float(32,1) not null,
 cores decimal not null
);

CREATE TABLE motherboard(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 socket char(32) not null,
 wifi char(32) not null,
 size char(32) not null,
 popularity float(32,1) not null
);

CREATE TABLE caseCover(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 size char(32) not null,
 color char(32) not null,
 popularity float(32,2) not null
);

CREATE TABLE ram(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 spee not null,
 siz not null,
 popularity float(32,1),
 rgb char(32) not null
);

CREATE TABLE storage(
 ID decimal not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 spee not null,
 siz not null,
 popularity float(32,1) not null
);

CREATE TABLE distributor(
 I primary key,
 type char(32) not null,
 price float(32,2) not null,
 popularity float(32,2)
);

CREATE TABLE gpu(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 spee not null,
 memor not null,
 popularity float(32,1),
 rgb char(32)
);

CREATE TABLE powerSupply(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 wattag not null,
 siz not null,
 popularity float(32,1),
 rating char(32) not null
);

CREATE TABLE cooling(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 siz not null,
 popularity float(32,1) not null,
 rgb char(32) not null
);

CREATE TABLE monitor(
 I not null,
 type char(32) not null,
 name char(32) primary key,
 price float(32,2) not null,
 size float(32,1) not null,
 panel char(32) not null,
 refresh char(32) not null,
 resolution char(32) not null
);

CREATE TABLE estTotal(
 price float(32,2) primary key
);

CREATE TABLE friend(
 email char(32) primary key,
 buildke not null
);

CREATE TABLE customer(
 fname char(32) not null,
 lname char(32) not null,
 email char(32) primary key,
 buildke not null
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

INSERT INTO cpu VALUES(1,'AMD','Ryzen 9 3950X',559.99,'AM4',5,3.5,16);
INSERT INTO cpu VALUES(2,'AMD','Ryzen 9 3900X',555.68,'AM4',4.8,3.8,12);
INSERT INTO cpu VALUES(3,'AMD','Ryzen 7 3800X',339.99,'AM4',4.7,3.9,8);
INSERT INTO cpu VALUES(4,'AMD','Ryzen 7 3700X',329.99,'AM4',4.5,3.6,8);
INSERT INTO cpu VALUES(5,'AMD','Ryzen 7 1700',398,'AM4',4.5,3,8);
INSERT INTO cpu VALUES(6,'AMD','Ryzen 5 3600X',289.99,'AM4',4.9,3.6,6);
INSERT INTO cpu VALUES(7,'AMD','Ryzen 5 1600',153.94,'AM4',4.4,3.6,6);
INSERT INTO cpu VALUES(8,'AMD','Ryzen 3 3200G',135,'AM4',4.6,3.6,4);
INSERT INTO cpu VALUES(9,'AMD','Ryzen 3 1200',110.22,'AM4',4.6,3.1,4);
INSERT INTO cpu VALUES(10,'AMD','Ryzen 3 3300X',140,'AM4',4.5,3.8,4);
INSERT INTO cpu VALUES(11,'Intel','I9-9940X',1387,'LGA 2066',4.7,3.3,14);
INSERT INTO cpu VALUES(12,'Intel','I9-7900X',989,'LGA 2066',4.5,3.3,10);
INSERT INTO cpu VALUES(13,'Intel','I7-7700',312,'LGA 1151',4.5,3.5,4);
INSERT INTO cpu VALUES(14,'Intel','I7-4790k',208.99,'LGA 1150',4.6,4,4);
INSERT INTO cpu VALUES(15,'Intel','I5-8600K',249,'LGA 1151',4.6,3.8,6);
INSERT INTO cpu VALUES(16,'Intel','I5-7500',235.95,'LGA 1151',4.7,3.4,4);
INSERT INTO cpu VALUES(17,'Intel','I5-9500',244,'LGA 1151',4.6,3,6);
INSERT INTO cpu VALUES(18,'Intel','I3-7100',117,'LGA 1151',4.2,3.9,2);
INSERT INTO cpu VALUES(19,'Intel','I3-8100',169.99,'LGA 1151',4.7,3.6,4);
INSERT INTO cpu VALUES(20,'Intel','Pentium Gold G5400',167.61,'LGA 1151',4.3,3.7,2);

INSERT INTO motherboard VALUES(1,'AMD','MSI MEG X570 ACE,283.99','AM4','Yes','ATX',4.9);
INSERT INTO motherboard VALUES(2,'AMD','MSI B450 Tomahawk Max',642.99,'AM4','No','ATX',4.8);
INSERT INTO motherboard VALUES(3,'AMD','Asus TUF B450M-Pro,453.99','AM4','No','mATX',4.7);
INSERT INTO motherboard VALUES(4,'AMD','ASRock X570 TAICHI',299.99,'AM4','Yes','ATX',4.5);
INSERT INTO motherboard VALUES(5,'AMD','ASRock X570 PHANTOM GAMING 4',154.99,'AM4','No','ATX',4.6);
INSERT INTO motherboard VALUES(6,'AMD','ASRock A320M-ITX',99.99,'AM4','No','mITX',4.7);
INSERT INTO motherboard VALUES(7,'AMD','GIGABYTE X570 AORUS ELITE',189.98,'AM4','No','ATX',4.8);
INSERT INTO motherboard VALUES(8,'AMD','ASRock X570M PRO4',181.99,'AM4','No','mATX',4.2);
INSERT INTO motherboard VALUES(9,'AMD','GIGABYTE X570 AORUS MASTER',410.99,'AM4','Yes','ATX',4.4);
INSERT INTO motherboard VALUES(10,'AMD','ASUS Prime X570-Pro',259.99,'AM4','No','ATX',4.3);
INSERT INTO motherboard VALUES(11,'Intel','ASRock X299 STEEL LEGEND',496.86,'LGA 2066','No','ATX',4.8);
INSERT INTO motherboard VALUES(12,'Intel','ASUS ROG Strix X299-E Gaming II',492.99,'LGA 2066','Yes','ATX',4.9);
INSERT INTO motherboard VALUES(13,'Intel','MSI Z97-Gaming 7',378.99,'LGA 1150','No','ATX',4.7);
INSERT INTO motherboard VALUES(14,'Intel','MSI PRO B365M PRO-VH',118.31,'LGA 1151','No','mATX',4.5);
INSERT INTO motherboard VALUES(15,'Intel','GIGABYTE H310N,239.86','LGA 1151','No','mITX',4.6);
INSERT INTO motherboard VALUES(16,'Intel','ASUS Prime Z390-A/H10',388,'LGA 1151','No','ATX',4.7);
INSERT INTO motherboard VALUES(17,'Intel','MSI PRO B365M PRO-VDH',124.75,'LGA 1151','No','ATX',3.8);
INSERT INTO motherboard VALUES(18,'Intel','MSI MPG Z390M GAMING EDGE AC',334.48,'LGA 1151','No','mATX',4.5);
INSERT INTO motherboard VALUES(19,'Intel','EVGA Z390 DARK, 131-CS-E399-KR',339.3,'LGA 1151','Yes','eATX',4.7);
INSERT INTO motherboard VALUES(20,'Intel','GIGABYTE Z390 AORUS MASTER',492.34,'LGA 1151','Yes','ATX',4.3);

INSERT INTO caseCover VALUES(1,'Tempered Glass','NZXT H210i',67.5,'MICRO','red',4.5);
INSERT INTO caseCover VALUES(2,'Tempered Glass','InWin A1',162.44,'MICRO','white',4.5);
INSERT INTO caseCover VALUES(3,'Tempered Glass','Lian Li 205M',99.99,'MICRO','white',4.5);
INSERT INTO caseCover VALUES(4,'Aluminum','Thermaltake S100',66.99,'MICRO','black',4.5);
INSERT INTO caseCover VALUES(5,'Acrylic','Cooler Master',59.99,'MICRO','black',4.5);
INSERT INTO caseCover VALUES(6,'Tempered Glass','NZXT H710i',174.43,'MID' ,'black',4.5);
INSERT INTO caseCover VALUES(7,'Tempered Glass','Corsair Airflow 4000D',94.18,'MID' ,'white',4.5);
INSERT INTO caseCover VALUES(8,'Aluminum','Cooler Master SL600m',243.99,'MID' ,'black',4.5);
INSERT INTO caseCover VALUES(9,'Alloy Steel','Cooler Master H500M ARGB',259.99,'MID' ,'black',4.5);
INSERT INTO caseCover VALUES(10,'Alloy Steel','Lian Li PC-O11DW 011' ,160.4,'MID' ,'white',5);
INSERT INTO caseCover VALUES(11,'Tempered Glass','Phanteks Eclipse P350X',49.99,'MID' ,'black',4.5);
INSERT INTO caseCover VALUES(12,'Tempered Glass','Corsair Carbide 275R',79.99,'MID' ,'white',4.5);
INSERT INTO caseCover VALUES(13,'Acrylic','Cooler Master MB Q300',49.99,'MID' ,'black',4.5);
INSERT INTO caseCover VALUES(14,'Tempered Glass','Cooler Master MB311L',119.99,'MID' ,'black',4);
INSERT INTO caseCover VALUES(15,'Alloy Steel','Fractal Design Focus G Petrol Blue',39.99,'MID' ,'blue',4);
INSERT INTO caseCover VALUES(16,'Tempered Glass','Corsair 1000D',514.99,'FULL','black',4.5);
INSERT INTO caseCover VALUES(17,'Tempered Glass','Cooler Master Cosmos C700P',449.99,'FULL','black',4.5);
INSERT INTO caseCover VALUES(18,'Tempered Glass','be quiet! Dark Base Pro 900',269,'FULL','black',4);
INSERT INTO caseCover VALUES(19,'Tempered Glass','Thermaltake View 71',225.04,'FULL','rgb',4.5);
INSERT INTO caseCover VALUES(20,'Aluminum','Phanteks Enthoo Pro',119.99,'FULL','black',5);

INSERT INTO ram VALUES(1,'DDR4','CORSAIR Vengeance RGB Pro',87.99,3600,16,5,'yes');
INSERT INTO ram VALUES(2,'DDR3' ,'KINGSTON 240-Pin' ,31.63,1600,16,4.5,'no');
INSERT INTO ram VALUES(3,'DDR4','CORSAIR Vengeance LPX',134.99,3200,32,5,'no');
INSERT INTO ram VALUES(4,'DDR4','CORSAIR Vengeance LPX',809.99,3200,128,5,'no');
INSERT INTO ram VALUES(5,'DDR4','CORSAIR Vengeance LED',281.19,3200,16,4.5,'yes');
INSERT INTO ram VALUES(6,'DDR4','G.SKILL Trident Z RGB',83.99,3200,16,5,'yes');
INSERT INTO ram VALUES(7,'DDR3' ,'KINGSTON HyperX FURY',83.08,1600,8,4.5,'yes');
INSERT INTO ram VALUES(8,'DDR3','CORSAIR Vengeance Pro Series' ,86.39,1600,16,5,'no');
INSERT INTO ram VALUES(9,'DDR3' ,'G.SKILL Ares Series',43.99,1600,8,4.5,'no');
INSERT INTO ram VALUES(10,'DDR3' ,'PATRIOT Signature' ,26.99,1600,8,4.5,'no');

INSERT INTO storage VALUES(1,'HDD','Seagate BarraCuda ST8000DM004' ,143.98,'5400 RPM',8,4.8);
INSERT INTO storage VALUES(2,'HDD','Seagate BarraCuda ST2000DM008',46.99,'7200 RPM',2,4.9);
INSERT INTO storage VALUES(3,'HDD','Seagate Enterprise',119.99,'7200 RPM',6,4.6);
INSERT INTO storage VALUES(4,'HDD','WD Black 2TB Performance Desktop',79.99,'7200 RPM',2,4.7);
INSERT INTO storage VALUES(5,'HDD','HP Midline 458928-B21',47.5,'7200 RPM',0.5,3.7);
INSERT INTO storage VALUES(6,'HDD','WD Red WD140EFFX' ,475.94,'5400 RPM',14,4.5);
INSERT INTO storage VALUES(7,'HDD','WD Blue 500GB Desktop Hard Disk Drive',30.99,'5400 RPM',0.5,4.6);
INSERT INTO storage VALUES(8,'SSD','Samsung 860 PRO',140.99,'560 MB/s',0.5,5);
INSERT INTO storage VALUES(9,'SSD','Seagate IronWolf 110 2.5',625.99,'560 MB/s',2,5);
INSERT INTO storage VALUES(10,'SSD','WD Blue 3D NAND',89.99,'560 MB/s',1,4.9);
INSERT INTO storage VALUES(11,'SSD','SAMSUNG 870 QVO Series 2.5',109.95,'560 MB/s',1,4.8);
INSERT INTO storage VALUES(12,'SSD','Crucial MX500',159,'560 MB/s',2,4.9);
INSERT INTO storage VALUES(13,'SSD','ADATA Ultimate SU650',34.69,'520 MB/s',0.25,4.5);
INSERT INTO storage VALUES(14,'SSD','Crucial BX500' ,157.99,'540 MB/s',2,4.8);
INSERT INTO storage VALUES(15,'M.2','Seagate BarraCuda 510',89.99,'3400 MB/s',0.5,4.7);
INSERT INTO storage VALUES(16,'M.2','HP EX920',69.99,'3200 MB/s',0.25,4.5);
INSERT INTO storage VALUES(17,'M.2','HP EX900',82.99,'2150 MB/s',1,4.8);
INSERT INTO storage VALUES(18,'M.2','SAMSUNG 980 PRO',184.95,'7000 MB/s',1,4.7);
INSERT INTO storage VALUES(19,'M.2','WD Blue 3D NAND',89.99,'560 MB/s',1,4.7);
INSERT INTO storage VALUES(20,'M.2','SAMSUNG 970 EVO PLUS',229.99,'3500 MB/s',2,4.8);


--1
--pick all the gpus that are of amd type
SELECT 
    name
FROM
    gpu
WHERE 
    type = "AMD"; 
--2
--pick all the gpus that are of nvidia type
SELECT 
    name
FROM
    gpu
WHERE 
    type = "NVIDIA"; 

--3 return the buildkey that connects mr rogers email and John Doe 
SELECT
    c_buildkey
FROM
    customer
    JOIN friend
    ON c_buildkey = f_buildkey
WHERE 
    c_lname = "Doe"
    AND f_email = "mroger@gmail.com" ;


--4 select the case names and motherboard names that can fit the ATX category
--(ie. Mid and Full tower cases)
SELECT 
    case_name,
    mother_name
FROM 
    caseCover,
    motherboard,
    (SELECT    
        size
    FROM 
        motherboard
    WHERE
        mother_size = 'ATX'   
    )mothertable   
WHERE 
    case_size = "MID" AND 
    case_size = "FULL" 
--5
--select the case name that are under $100
SELECT
    case_name
FROM
    caseCover
WHERE
    case_price < 100.00
GROUP BY
    case_name    
--6
--count all the cases that are not acrylic material
SELECT
    COUNT(case_name)
FROM 
    caseCover
WHERE
    case_type != "Acrylic"
--7
--select the ddr3 ram with rgb
SELECT 
    ram_type
FROM
    ram
WHERE
    ram_type= "DDR3"
    AND ram_RGB = "yes"

--8
--select ram and price that is faster than 1600
SELECT
    ram_name, 
    ram_price
FROM
    ram
WHERE
    ram_speed > 1600
--9
--select hd that is faster than 5400rpm
SELECT 
    storage_name
FROM
    storage
WHERE
    speed > 5400
--10
--pick cooling fans that are under $60
SELECT 
    cool_name
FROM
    cooling
WHERE
    cool_price < 60.00
    
INSERT INTO customer VALUES('Jack', 'Cascio', 'jcascio@hotmail.com', 19);
INSERT INTO customer VALUES('Lina', 'Hernandez', 'lhernandez@gmail.com', 20);

--11
INSERT INTO estTotal(price) VALUES(10053.58);

--12
SELECT name
FROM ram
WHERE (speed > 2400);

--13
SELECT caseCover.name, motherboard.name
FROM caseCover, motherboard
WHERE (caseCover.size = 'ATX' 
AND motherboard.size = 'ATX');

--14 
SELECT cpu.name, motherboard.name
FROM cpu, motherboard
WHERE (cpu.socket = 'AM4' 
AND motherboard.socket = 'AM4');

--15
SELECT name
FROM storage
WHERE (type = 'M.2' 
AND size > 1
AND price < 300);

-- 16
SELECT name
FROM monitor
WHERE (refresh > 60
AND resolution = '1920 x 1080'
AND price < 200);

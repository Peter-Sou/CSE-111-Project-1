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
DELETE FROM  motherboard;
DROP TABLE case;
DROP TABLE ram;
DROP TABLE storage;
DROP TABLE distributor;
DROP TABLE gpu;
DROP TABLE power;
DROP TABLE cooling;
DROP TABLE monitor;
DROP TABLE est_total;
DROP TABLE friend;
DROP TABLE customer;

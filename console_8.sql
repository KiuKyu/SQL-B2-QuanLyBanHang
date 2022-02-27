CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
    cID INT AUTO_INCREMENT PRIMARY KEY ,
    cName VARCHAR(40) NOT NULL ,
    cAge INT CHECK ( cAge > 0 )
);
# DROP TABLE Customer;
CREATE TABLE Orders (
    oID INT AUTO_INCREMENT PRIMARY KEY ,
    cID INT ,
    oDate DATETIME ,
    oTotalPrice FLOAT ,
    FOREIGN KEY (cID) REFERENCES Customer(cID)
);

CREATE TABLE Product (
    pID INT AUTO_INCREMENT PRIMARY KEY ,
    pName VARCHAR(40) NOT NULL ,
    pPrice FLOAT
);

CREATE TABLE orderDetails (
    pID INT, oID INT ,
    odQTY INT CHECK ( odQTY > 0 ),
    FOREIGN KEY (pID) REFERENCES Product(pID),
    FOREIGN KEY (oID) REFERENCES Orders(oID),
    PRIMARY KEY (pID, oID)
);


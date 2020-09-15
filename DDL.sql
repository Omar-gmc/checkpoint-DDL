CREATE TABLE Product (
     Product_id VARCHAR2(20) PRIMARY KEY,
     Product_Name VARCHAR2(20) NOT NULL,
     Price NUMBER CHECK (NUMBER > 0)
);

CREATE TABLE Costumer (
     Customer_id VARCHAR2(20) PRIMARY Key,
     Customer_Name VARCHAR2(20) NOT NULL,
     Customer_Tel NUMBER
);

CREATE TABLE Orders (
     Quantity NUMBER,
     Total_amount NUMBER,
     FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
     FOREIGN KEY (Custumer_id) REFERENCES Costumer(Costumer_id)
     
);

--Add a column Category (VARCHAR2(20)) to the PRODUCT table.

ALTER TABLE Product ADD Category VARCHAR2(20);

-- Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.

ALTER TABLE Orders  ADD OrderDate Date DEFAULT SYSDATE;
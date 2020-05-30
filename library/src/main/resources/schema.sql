
CREATE TABLE IF NOT exists User(
firstname varchar(30),
lastname varchar(30),
email varchar(30),
password varchar(100),
contactno varchar(30)
);

CREATE TABLE IF NOT exists BookMaster(
bookTypeId int NOT NULL PRIMARY KEY,
bookType varchar(30),
bookCount int
);

CREATE TABLE IF NOT exists BookScience(
bookTypeId int NOT NULL,
bookname varchar(50),
FOREIGN KEY (bookTypeId) REFERENCES BookMaster(bookTypeId)
);

CREATE TABLE IF NOT exists BookHistory(
bookTypeId int NOT NULL,
bookname varchar(50),
FOREIGN KEY (bookTypeId) REFERENCES BookMaster(bookTypeId)
);

CREATE TABLE IF NOT exists BookLiterature(
bookTypeId int NOT NULL,
bookname varchar(50),
FOREIGN KEY (bookTypeId) REFERENCES BookMaster(bookTypeId)
);
-- create tables
create table if not exists Author
(
    authorID int PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(50),
    lastName varchar(30),
    dateOfBirth date
);

create table if not exists Publisher
(
    publisherID int PRIMARY KEY AUTO_INCREMENT,
    publisherName varchar(100),
    country varchar(50)
);

create table if not exists MediaType
(
    mediaTypeID int PRIMARY KEY AUTO_INCREMENT,
    mediaTypeName varchar(10) CHECK ( mediaTypeName in ('book', 'magazine', 'music', 'video', 'prints') )
);

create table if not exists Catalogue
(
    catalogueNumber int PRIMARY KEY AUTO_INCREMENT,
    mediaTypeID int,
    title varchar(100),
    edition varchar(10),
    publisherID int,
    ISBN varchar(15),
    format varchar(10) CHECK (format in ('physical', 'electronic') ),
    copiesAvailable int,
    Shelvinginfo varchar(20),
    genre varchar(20),
    description text,
    ageGroup varchar(20),
    FOREIGN KEY (mediaTypeID) REFERENCES MediaType(mediaTypeID),
    FOREIGN KEY (publisherID) REFERENCES Publisher(publisherID)
);

create table if not exists User
(
    UserID int PRIMARY KEY AUTO_INCREMENT,
    expirationDate date,
    firstName varchar(50),
    lastName varchar(30),
    dateOfBirth date,
    addressline1 varchar(30),
    addressline2 varchar(30),
    city varchar(20),
    state varchar(20),
    country varchar(20),
    postalCode varchar(7),
    phoneNo varchar(15),
    email varchar(50)
);


create table if not exists Reservation 
(
    ReservationID int PRIMARY KEY AUTO_INCREMENT,
    UserID int,
    catalogueNumber int,
    dateBorrowed date,
    dateReturned date,
    dueDate date,
    Fines decimal(6,2),
    PaymentDate date,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (catalogueNumber) REFERENCES Catalogue(catalogueNumber)
);

create table if not exists CatalogueAuthor
(
    catalogueNumber int,
    authorID int,
    PRIMARY KEY (catalogueNumber, authorID),
    FOREIGN KEY (catalogueNumber) REFERENCES Catalogue(catalogueNumber),
    FOREIGN KEY (authorID) REFERENCES Author(authorID)
);


-- drop statements
drop table CatalogueAuthor;
drop table Reservation;
drop table User;
drop table Catalogue;
drop table MediaType;
drop table Publisher;
drop table Author;
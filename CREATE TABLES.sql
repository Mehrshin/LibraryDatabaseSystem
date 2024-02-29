CREATE TABLE MediaType (
	mediaTypeID int NOT NULL AUTO_INCREMENT, 
    mediaTypeName varchar(100) NOT NULL,
    PRIMARY KEY (mediaTypeID)
    );
    
    
CREATE TABLE Publisher (
	publisherID int NOT NULL AUTO_INCREMENT, 
    publisherName VARCHAR(250) NOT NULL, 
	country VARCHAR(100), 
    PRIMARY KEY (publisherID)
    );
    

CREATE TABLE Users (
	userID int NOT NULL AUTO_INCREMENT, 
    expirationDate date NOT NULL, 
    firstName VARCHAR(250) NOT NULL, 
	lastName VARCHAR(250) NOT NULL, 
    dateOFBirth date NOT NULL, 
    addressline1 VARCHAR(300) NOT NULL,
    addressline2 VARCHAR(300) NOT NULL,
    city varchar(100) NOT NULL, 
    state varchar(100) NOT NULL, 
    country varchar(100) NOT NULL, 
    postalCode varchar(20) NOT NULL, 
    phoneNo varchar(20) NOT NULL, 
    email varchar(100) NOT NULL UNIQUE, 
    PRIMARY KEY (userID)
);

CREATE TABLE Author (
	authorID int NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(250) NOT NULL,
    lastName VARCHAR(250) NOT NULL,
    dateOfBirth date NOT NULL,
    PRIMARY KEY (authorID)
);


CREATE TABLE Catalogue (
	catalogueNumber int NOT NULL AUTO_INCREMENT, 
    mediaTypeID int NOT NULL, 
    title VARCHAR(400) NOT NULL, 
    edition VARCHAR(100), 
    publisherID int NOT NULL, 
    ISBN VARCHAR(20), 
    catalogueFormat VARCHAR(20), 
    copiesAvailable int, 
    shelvingInfo VARCHAR(250) NOT NULL,
    genre VARCHAR(200), 
    catalogueDescription VARCHAR(500),
    ageGroup VARCHAR(100),
    PRIMARY KEY (catalogueNumber),
    FOREIGN KEY (mediaTypeID) REFERENCES MediaType(mediaTypeID),
    FOREIGN KEY (publisherID) REFERENCES Publisher(publisherID)
);

CREATE TABLE Reservation (
	reservationID int NOT NULL AUTO_INCREMENT, 
    userID int NOT NULL, 
    catalogueNumber int NOT NULL, 
    dateBorrowed date, 
    dateReturned date, 
    dueDate date NOT NULL, 
    fines decimal(8,2) DEFAULT 0,
    paymentDate date,
    PRIMARY KEY (reservationID),
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (catalogueNumber) REFERENCES Catalogue(catalogueNumber)
);

CREATE TABLE CatalogueAuthor (
	catalogueNumber int NOT NULL, 
    authorID int NOT NULL,
    CONSTRAINT PK_CatalgueAuthor PRIMARY KEY (catalogueNumber,authorID), 
    FOREIGN KEY (catalogueNumber) REFERENCES Catalogue(catalogueNumber),
    FOREIGN KEY (authorID) REFERENCES Author(authorID)
);
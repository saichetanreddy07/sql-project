CREATE DATABASE SQL_Project;

USE SQL_Project;

-- Table: Publishers
CREATE TABLE Publishers (
    PublisherName VARCHAR(255) PRIMARY KEY,
    Address TEXT,
    Phone VARCHAR(15)
);

-- Table: Books
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    PublisherName VARCHAR(255),
    FOREIGN KEY (PublisherName)
        REFERENCES Publishers(PublisherName)
);

-- Table: BookAuthors
CREATE TABLE BookAuthors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    AuthorName VARCHAR(255) NOT NULL,
    FOREIGN KEY (BookID)
        REFERENCES Books(BookID)
);

-- Table: LibraryBranches
CREATE TABLE LibraryBranches (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,
    BranchName VARCHAR(255) NOT NULL,
    Address TEXT
);

-- Table: BookCopies
CREATE TABLE BookCopies (
    CopyID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    BranchID INT NOT NULL,
    NumberOfCopies INT NOT NULL,
    FOREIGN KEY (BookID)
        REFERENCES Books(BookID),
    FOREIGN KEY (BranchID)
        REFERENCES LibraryBranches(BranchID)
);

-- Table: Borrowers
CREATE TABLE Borrowers (
    CardNo INT PRIMARY KEY,
    BorrowerName VARCHAR(255) NOT NULL,
    Address TEXT,
    Phone VARCHAR(15)
);

-- Table: BookLoans
CREATE TABLE BookLoans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    BranchID INT NOT NULL,
    CardNo INT NOT NULL,
    DateOut DATE NOT NULL,
    DueDate DATE NOT NULL,
    FOREIGN KEY (BookID)
        REFERENCES Books(BookID),
    FOREIGN KEY (BranchID)
        REFERENCES LibraryBranches(BranchID),
    FOREIGN KEY (CardNo)
        REFERENCES Borrowers(CardNo)
);

SELECT * FROM Publishers;

SELECT * FROM Books;

SELECT * FROM BookAuthors;

SELECT * FROM LibraryBranches;

SELECT * FROM Borrowers;

SELECT * FROM BookCopies;

SELECT * FROM BookLoans;

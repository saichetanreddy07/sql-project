/*1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?*/
Select b.Title, bc.NumberofCopies as Copies
from BookCopies bc
join Books b
on bc.BookID = b.BookID
join LibraryBranches lb
on bc.BranchID = lb.BranchID
where b.title = 'The Lost Tribe' and lb.BranchName = 'Sharpstown';

/*2. How many copies of the book titled "The Lost Tribe" are owned by each library branch?*/
Select lb.branchname as Library, bc.NumberofCopies as Copies
from BookCopies bc
join Books b
on bc.BookID = b.BookID
join LibraryBranches lb
on bc.BranchID = lb.BranchID
where b.title = 'The Lost Tribe';

/*3. Retrieve the names of all borrowers who do not have any books checked out.*/
SELECT BorrowerName
FROM Borrowers
WHERE CardNo NOT IN (
    SELECT CardNo
    FROM BookLoans
);

/*4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18, retrieve the book title, the borrower's name, and the borrower's address.*/
SELECT b.Title, br.BorrowerName, br.Address
FROM BookLoans bl
JOIN Books b
ON bl.BookID = b.BookID
JOIN Borrowers br
ON bl.CardNo = br.CardNo
JOIN LibraryBranches lb
ON bl.BranchID = lb.BranchID
WHERE lb.BranchName = 'Sharpstown'
AND bl.DueDate = '2018-03-02';
 
/*5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.*/
SELECT lb.BranchName, COUNT(*) AS TotalBooksLoaned
FROM BookLoans bl
JOIN LibraryBranches lb
ON bl.BranchID = lb.BranchID
GROUP BY lb.BranchID, lb.BranchName
ORDER BY lb.BranchName;

/*6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.*/
SELECT br.BorrowerName, br.Address, COUNT(bl.BookID) AS BooksCheckedOut
FROM Borrowers br
JOIN BookLoans bl
ON br.CardNo = bl.CardNo
GROUP BY br.CardNo, br.BorrowerName, br.Address
HAVING COUNT(bl.BookID) > 5
ORDER BY BooksCheckedOut DESC;

/*7. For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".*/

SELECT b.Title, bc.NumberOfCopies
FROM Books b
JOIN BookAuthors ba
ON b.BookID = ba.BookID
JOIN BookCopies bc
ON b.BookID = bc.BookID
JOIN LibraryBranches lb
ON bc.BranchID = lb.BranchID
WHERE ba.AuthorName = 'Stephen King'
AND lb.BranchName = 'Central';
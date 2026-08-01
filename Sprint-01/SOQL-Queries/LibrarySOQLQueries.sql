// =========================================
// Library Management System - SOQL Queries
// =========================================

// 1. Display all Books
SELECT Id, Name, Author__c, ISBN__c, Status__c
FROM Book__c;

// 2. Display Available Books
SELECT Name, Status__c
FROM Book__c
WHERE Status__c = 'Available';

// 3. Display all Members
SELECT Name, Email__c, Department__c
FROM Member__c;

// 4. Display all Book Issues
SELECT Name,
       Book__r.Name,
       Member__r.Name,
       Status__c,
       Issue_Date__c,
       Return_Date__c
FROM Book_Issue__c;

// 5. Display all Fine Records
SELECT Name,
       Fine_Amount__c,
       Payment_Status__c
FROM Fine__c;

// 6. Display Issued Books
SELECT Name,
       Book__r.Name,
       Member__r.Name
FROM Book_Issue__c
WHERE Status__c = 'Issued';

// 7. Display Returned Books
SELECT Name,
       Book__r.Name,
       Member__r.Name
FROM Book_Issue__c
WHERE Status__c = 'Returned';

// 8. Display Pending Fine Payments
SELECT Name,
       Fine_Amount__c,
       Payment_Status__c
FROM Fine__c
WHERE Payment_Status__c = 'Pending';

// 9. Display Books by Author
SELECT Name,
       Author__c,
       ISBN__c
FROM Book__c
WHERE Author__c = 'James Gosling';

// 10. Count Total Books
SELECT COUNT()
FROM Book__c;
